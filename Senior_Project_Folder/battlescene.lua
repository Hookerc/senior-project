Battle_Scene = {}

function Battle_Scene:new(player, enemies)
	local object = {
		player = player,
		enemy_party = enemies,
		state = "battle_init",
		actor = nil,
		turn_index = 1,
		current_menu = nil,
		action_stack = {}
	}	
	setmetatable( object, { __index = Battle_Scene } )
	return object
end

function Battle_Scene:init_battle()
	
end

function Battle_Scene:update(dt, keypressed)
	if self.state == "command_menu"  then  end
	if self.state == "command_skill" then  end
	if self.state == "battle_init"   then self:init_battle() end
	if self.state == "battle_turn"   then self:battle_turn() end
end

function Battle_Scene:battle_turn(dt, keypressed)
	
end

function Battle_Scene:draw()
	love.graphics.print("Battle not yet implemented!", 0, 0)
end

function Battle_Scene:drawMenu()
	
end

function Battle_Scene:make_turn_order()
	local order = {}
	local battler_list = {}
	for i,k in ipairs(player.party) do
		table.insert(battler_list, k)
	end
	for i,k in ipairs(enemy_party) do
		table.insert(battler_list, k)
	end
	i = 1
	for i= 1, #battler_list do
		local temp = battler_list[1]
		for i,k in ipairs(battler_list) do
			if k.stats.agility > temp.stats.agility then
				temp = k
			elseif
				k.stats.agility == temp.stats.agility then
				local randnum = love.math.random(1,2)
				if randnum == 1 then temp = k end
			end
		end
		table.insert(order, temp)
		table.remove(battler_list, temp)
	end
	return order
end
