battlefont = love.graphics.newFont("assets/graphics/fonts/TradeWinds.ttf", 12) -- FingerPaint.tff TradeWinds.tff VastShadow.tff
defaultfont = love.graphics.newFont()
Battle_Scene = {}

function Battle_Scene:new(player, enemies, battleback)
	local object = {
		player = player,
		enemy_party = enemies,
		state = "execute",
		actor_stack = {},
		execute_time = 5,
		target_index = 0, -- 0 means no target, 1 - 9 means enemy, 11 - 1X means party member (so for player party memebers add 10.)
		battleback = love.graphics.newImage("assets/graphics/battleback/" .. (battleback or "castle") .. ".jpg")
	}	
	setmetatable( object, { __index = Battle_Scene } )
	object:init_battle()
	return object
end

function Battle_Scene:current_actor()
	return actor_stack[1]
end

function Battle_Scene:init_battle()
	self.actor_stack = self:make_turn_order()
end

function Battle_Scene:update(dt, keypressed)
	if self.state == "battle_update" then self:update_battle() end -- Update the current battle state/get npc command from AI or go to command menu for player
	if self.state == "command_menu"  then self:get_command() end -- For the player to enter a command
	
	if self.state == "execute" then -- Execute the action selected by the AI/Player and play animation
		self.execute_time = self.execute_time - dt
		--self:execute_phase()
	end
end

function Battle_Scene:execute_phase()
	if self.execute_time < 0 then
		self.phase = "battle_update"
		self.execute_time = 0
	end
end

function Battle_Scene:update_battle()
	if self:current_actor().kind == "player" then
		self.state = "command_menu"
	end
	if self:current_actor().kind == "npc" then
		self.state = "execute"
		--Get ability to use from AI and set it here.
	end
end

function Battle_Scene:get_command(dt, keypressed)-- update to be called when a player command is needed
	
end

function Battle_Scene:draw()
	love.graphics.draw(self.battleback, 0,0)
	self:drawInfo()
end

function Battle_Scene:check_for_battleover() -- fix later
	if self.execute_time < 0 then return true end
	return false
end

function Battle_Scene:drawInfo()
	love.graphics.setFont(battlefont)
	-----------------------------------
	self:drawParty()
	self:drawEnemy()
	-----------------------------------
	love.graphics.setFont(defaultfont)
	
	--DEBUGING INFORMATION
	if debug_mode then
		love.graphics.print("State: " .. tostring(self.state), 0, 10)
		love.graphics.print("___TURN__", 0, 50) 
		for i,k in ipairs(self.actor_stack) do
			love.graphics.print("|" .. tostring(k.name), 0, 60 + (i * 10))
		end
	end
end

function Battle_Scene:drawParty()
	local screenwidth  = love.graphics:getWidth()
	local screenheight = love.graphics:getHeight()
	for i,k in ipairs(self.player:getBattleParty()) do
		local imagewidth  = k.image:getWidth()
		local imageheight = k.image:getHeight()
		local x_pos = ((screenwidth / 4) * (i - 1))
		if self.target_index == i + 10 then love.graphics.rectangle("line", x_pos, screenheight - imageheight, imagewidth, imageheight) end
		love.graphics.draw(k.image, x_pos, screenheight - imageheight)
		love.graphics.print(k.name, x_pos + imagewidth, screenheight - imageheight + battlefont:getHeight())
		love.graphics.print("HP:" .. k.hp .. "/" .. k.stats.max_hp, x_pos + imagewidth, screenheight - imageheight + battlefont:getHeight() * 2)
		love.graphics.print("MP:" .. k.mp .. "/" .. k.stats.max_mp, x_pos + imagewidth, screenheight - imageheight + battlefont:getHeight() * 3)
	end
end

function Battle_Scene:drawEnemy() -- Ensure that enemy graphics are never over 150 px width
	local enemylength = 150
	local screenwidth  = love.graphics:getWidth()
	local screenheight = love.graphics:getHeight()
	local midscreen = love.graphics:getWidth() / 2
	local partysize = 0
	for i,k in ipairs(self.enemy_party) do -- get the total width needed to draw each character
		partysize = partysize + k.image:getWidth()
	end
	local x_pos = ((screenwidth / 2) - (partysize / 2))
	for i,k in ipairs(self.enemy_party) do
		if k.hp > 0 then
			local imagewidth  = k.image:getWidth()
			local imageheight = k.image:getHeight()
			if self.target_index == i then love.graphics.rectangle("line", x_pos, 100, imagewidth, imageheight) end
			love.graphics.draw(k.image, x_pos, 100)
			love.graphics.print(k.name, x_pos + imagewidth / 2 - battlefont:getWidth(k.name) / 2, 100 - battlefont:getHeight())
			love.graphics.print("HP:" .. k.hp .. "/" .. k.stats.max_hp, x_pos + imagewidth / 2 - battlefont:getWidth(k.name) / 2, 100 - battlefont:getHeight() * 2)
			x_pos = x_pos + imagewidth
		end
	end
end

function Battle_Scene:drawMenu()
	
end

function Battle_Scene:make_turn_order()
	local order = {}
	local battler_list = {}
	for i,k in ipairs(self.player:getBattleParty()) do
		table.insert(battler_list, k)
	end
	for i,k in ipairs(self.enemy_party) do
		table.insert(battler_list, k)
	end
	i = 1
	for i= 1, #battler_list do
		local temp = battler_list[1]
		local temp2 = 1
		for i,k in ipairs(battler_list) do
			if k.stats.agility > temp.stats.agility then
				temp = k
				temp2 = i
			elseif
				k.stats.agility == temp.stats.agility then
				local randnum = love.math.random(1,2)
				if randnum == 1 then temp = k temp2 = i end
			end
		end
		table.insert(order, temp)
		table.remove(battler_list, temp2)
	end
	return order
end

function isOdd(x) if x % 2 == 0 then return false else return true end end