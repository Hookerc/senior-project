require (scriptpath .. 'battler')
require (scriptpath .. 'battlescene')
Scene_Manager = {}

function Scene_Manager:new(player)
	local object = {
		player = player,
		loadedmap = false, -- if the map was just loaded.
		scene_stack = {}
	}
	
	setmetatable( object, { __index = Scene_Manager } )
	object:init()
	return object
end

function Scene_Manager:init()
	self.Map = Map_Scene:new("testmap.lua", self.player)
	self.Battle = nil
	self.scene_stack = {"Map"}
end

function Scene_Manager:update(dt, keypressed)
	self.current_scene = self.scene_stack[#self.scene_stack]
	if self.current_scene == "Map"    then self:update_map(dt,keypressed)     end	
	if self.current_scene == "Battle" then self:update_battle(dt, keypressed) end
end

function Scene_Manager:update_battle(dt, keypressed) 
	self.Battle:update(dt, keypressed)
	if self.Battle:check_for_battleover() then
		print("exiting battle")
		table.remove(self.scene_stack, #self.scene_stack)
		print(tostring(self.scene_stack[#self.scene_stack]))
	end
end

function Scene_Manager:update_map(dt,keypressed)
	if keypressed == "up" or keypressed == "right" or keypressed == "left" or keypressed == "down" then self.loadedmap = false end
	self.Map:update(dt, keypressed) 
	if self.Map:check_for_battle() then
		self.Battle = Battle_Scene:new(self.player, {goblin:new()})
		self.scene_stack[#self.scene_stack + 1] = "Battle"
		self.Map.playersteps = 0
		return
	end
	local newMap = self.Map:check_for_transfer(self.loadedmap)
	if newMap ~= false and self.player.charachip.moving == false then
		local newX = tonumber(newMap.properties["x"])
		local newY = tonumber(newMap.properties["y"])
		self.player.charachip:setNewPosition(newX,newY)
		self.Map = Map_Scene:new(newMap.properties["map"] .. ".lua", self.player)
		self.player.currentmap = newMap.properties["map"]
		self.loadedmap = true
	end
end



function Scene_Manager:draw()
	if self.current_scene == "Map"    then	self.Map:draw() end
	if self.current_scene == "Battle" then self.Battle:draw() end
end