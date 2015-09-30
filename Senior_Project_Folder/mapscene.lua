local sti = require("sti")
require (scriptpath .. "character")
require (scriptpath .. "camera")
require (scriptpath .. "audiomanager")

Map_Scene = {}

function Map_Scene:new(map_name, player)
	local object = {
	map = sti.new("assets/maps/" .. map_name),
	charchips = {}, -- list of all charchips
	playersteps = 0,
	encounterlist = {},
	player = player,
	bgm = nil,
	doors = {}
	}
	setmetatable( object, { __index = Map_Scene } )
	object:init()
	return object
end

function Map_Scene:init()
	self.battlesteps = self.map.properties["battlesteps"] or 0
	self:init_characters()
	self.encounterlist = {}
	camera:setBounds(0, 0, self.map.width * 32 -love.graphics.getWidth(), self.map.height * 32 - love.graphics.getHeight())
	self.bgm = self.map.properties["bgm"]
	Audio_Manager:new_bgm(self.bgm or "") 
	if self.map.layers["Doors"] ~= nil then -- aligning each door object to the 32x32 grid, and adding it to "self.doors"
		for i,k in ipairs(self.map.layers["Doors"].objects) do
			table.insert(self.doors, k)
		end
	end
end

function Map_Scene:update(dt, keypressed)
	self.map:update(dt)
	camera:setPosition(math.floor(self.player.charachip.x - love.graphics.getWidth() / 2), math.floor(self.player.charachip.y - love.graphics.getHeight() / 2))
	if love.keyboard.isDown("z") then self.player.charachip.move_speed = 6 else self.player.charachip.move_speed = 3 end
	self.player.charachip:move(dt, keypressed, self)
	self.player.charachip:update(dt)
end

function Map_Scene:draw()
	camera:set()
	self.map:draw()
	self.player.charachip:draw()
	if self.map.layers["overhead"] ~= nil then self.map.layers["overhead"]:draw() end
	camera:unset()
	love.graphics.print("x:" .. math.floor(self.player.charachip.x / 32) .. " y:" .. math.floor(self.player.charachip.y / 32), 0, 30)
	for i,k in ipairs(self.doors) do
		love.graphics.print("x:" .. math.floor(k.x / 32) .. " y:" .. math.floor(k.y / 32), 0, 40 + (i * 10))
	end
end

function Map_Scene:check_for_battle()
	if self.battlesteps > 0 and self.playersteps > self.battlesteps then
		return true
	end
end

function Map_Scene:init_characters()
	if self.map.layers["npc"] == nil then return end
	for i, k in ipairs(self.map.layers["npc"]) do
		
	end
end

function Map_Scene:check_for_transfer()
	for _,k in ipairs(self.doors) do
		if math.floor(k.x / 32) + 1 == math.floor(self.player.charachip.x / 32) and math.floor(k.y / 32) + 1 == math.floor(self.player.charachip.y / 32) then
			if k.properties["se"] ~= nil then Audio_Manager:new_se(love.audio.newSource(k.properties["se"])) end
			return k
		end
	end
	return false
end

function Map_Scene:collidesWith(x, y, layer) --map, x to move to, y to move to, collision layer
	--create a collisionMap of the provided layer name
	if x < 1 then return true end
	if y < 2 then return true end
	if x > self.map.width then return true end
	if y > self.map.height then return true end
	if self.map.layers[layer] == nil then return false end
	
	local collision = self.map:getCollisionMap(layer)
	
	if love.keyboard.isDown("x") then
		return false
	end
	
	if collision ~= nil and collision.data[y] ~= nil and collision.data[y][x] ~= nil and collision.data[y][x] > 0 then
		return true
	end
	return false
end