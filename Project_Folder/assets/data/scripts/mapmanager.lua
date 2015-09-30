-- unpassable = layer "collision"
-- player walk-through = "overground"
--

local sti = require("sti")
map_manager = {}
audio_source = "assets/audio/"
function map_manager:new()
	local object = {
	map = nil,
	player = nil,
	layermaps = nil,
	bgm = nil,
	collision = nil,
	steps = 0,
	battlesteps = 0,
	npc_list = {}
	}
	
    setmetatable(object, { __index = map_manager } )
	return object
end

function map_manager:load_player_chip(image, x, y)
	self.player = charchip.new(self, image, x, y)
end

function map_manager:load_map(name)
	local path = "assets/data/maps/"
	self.map = sti.new(path .. name)
	local bgmname = self.map.properties["bgm"] or "bgm09.mp3"
	self.bgm = love.audio.newSource(audio_source .. "bgm/" .. bgmname, "stream")
	self.bgm:setLooping(true)
	self.bgm:play()
	self.layermaps = {}
    collision = self.layermaps["collision"]
	self:createLayerMap("overground")
	--self.battle_steps = tonumber(self.map.properties["battlesteps"]) or 25
	self.battle_steps = 10
	camera:setBounds(0, 0, self.map.width * 32 -love.graphics.getWidth(), self.map.height * 32 - love.graphics.getHeight())
end

function map_manager:update(dt)
	self.map:setDrawRange(self.player.x, self.player.y, love.graphics.getWidth(), love.graphics.getHeight())
	self.map:update(dt)
	self.player:update_animation(dt)
	self.steps = self.steps + self.player:move(dt, self:check_input())
	camera:setPosition(math.floor(self.player.x - love.graphics.getWidth() / 2), math.floor(self.player.y - love.graphics.getHeight() / 2))
end

function map_manager:check_for_battle(dt)
	if self.steps > self.battle_steps and self.battle_steps > 0 then
		return true
	end
	return false
end

function map_manager:check_for_menu(dt)
	if love.keyboard.isDown("c") and not self.player.moving then
		return true
	end
	return false
end

function map_manager:draw()
	camera:set()
	self.map:draw()
	self.player:draw(self:spriteStyle(self.player.cx, self.player.cy))
	if self.map.layers["overhead"] ~= nil then
		self.map.layers["overhead"]:draw()
	end
	
	
	camera:unset()
end

function map_manager:createLayerMap(layername)
	if self.map.layers[layername] ~= nil then
		self.layermaps[layername] = self.map:getCollisionMap(layername)
	end
end

function map_manager:spriteStyle(x, y)
	local layer = self.layermaps["overground"] or nil
	if layer == nil then return "" end
	if layer.data[y] ~= nil and layer.data[y][x] ~= nil and layer.data[y][x] > 0 then
		return "tophalf"
	end
	return ""
end

function map_manager:check_input()
	if love.keyboard.isDown( "z" ) then
		self.player.move_speed = 4
	else
		self.player.move_speed = 2
	end
	if love.keyboard.isDown( "up" ) then
		return "up"
	end
	if love.keyboard.isDown( "down" ) then
		return "down"
	end
	if love.keyboard.isDown( "left" ) then
		return "left"
	end
	if love.keyboard.isDown( "right" ) then
		return "right"
	end
	return "stop"
end