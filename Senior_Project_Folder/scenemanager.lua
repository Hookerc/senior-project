require (scriptpath .. 'battler')
require (scriptpath .. 'battlescene')
Scene_Manager = {}

function Scene_Manager:new(player)
	local object = {
		current_scene = "Map",
		player = player
	}
	
	setmetatable( object, { __index = Scene_Manager } )
	object:init()
	return object
end

function Scene_Manager:init()
	self.Map = Map_Scene:new("testmap.lua", self.player)
end

function Scene_Manager:update(dt, keypressed)
	if self.current_scene == "Map" then self:update_map(dt,keypressed) end	
end

function Scene_Manager:update_map(dt,keypressed)
	self.Map:update(dt, keypressed) 
	if self.Map:check_for_battle() then
		self.Battle = Battle_Scene:new(self.player, {goblin:new(), goblin:new()})
		self.current_scene = "Battle"
	end
	local newMap = self.Map:check_for_transfer()
	if newMap ~= false and self.player.charachip.moving == false then
		local newX = tonumber(newMap.properties["x"])
		local newY = tonumber(newMap.properties["y"])
		self.player.charachip:setNewPosition(newX,newY)
		self.Map = Map_Scene:new(newMap.properties["map"] .. ".lua", self.player)
	end
end

function Scene_Manager:draw()
	if self.current_scene == "Map" then	self.Map:draw() end
end