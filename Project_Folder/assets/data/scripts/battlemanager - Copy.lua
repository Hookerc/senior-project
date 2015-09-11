top_target_icon = love.graphics.newImage("assets/graphics/system/topleft_target.png")
bottom_target_icon = love.graphics.newImage("assets/graphics/system/bottomright_target.png")

battle_manager = {}
function battle_manager:new(player)
	local object = {
	player = player,
	enemy_party  = {},
	battleback   = nil,
	battlefront  = nil,
	animation = false,
	phase_time = 0,
	phase = "",
	current_menu = "",
	previous_menu = "",
	index = 1,  --main menu
	index2 = 1, --second menu
	index3 = 1, --targeting
	current_actor = 1, --who's turn it is
	turn_order = {}, --Not yet used, the order turns are taken
	turn_over = false, --if someone's turn is over
	keypressed = "", --the last inputed key
	selected_action = "", --name of the action to be taken
	targeting = "",
	target_party = nil,
	message_log = "",
	animate_time = 0
	}
	
    setmetatable(object, { __index = battle_manager } )
	return object
end

function battle_manager:new_battle(enemy_party)
	self.enemy_party = enemy_party
	self.phase = "begin"
end

function battle_manager:set_battleback(background)
	self.battleback = background
end

function battle_manager:update(dt)
	self.phase_time = self.phase_time + dt
	if self.phase == "begin" then self:phase_begin(dt)	end
	if self.phase == "battle_init" then self:phase_battle_init(dt) end
	if self.phase == "turn" then self:phase_turn(dt) end
	if self.phase == "animate" then self:phase_animate(dt) end
	if self.phase == "victory" then self:phase_victory(dt) end
end

function battle_manager:phase_animate(dt)
	self.animate_time = self.animate_time - dt
	if self.animate_time < 0 then
		self.phase = "turn"
	end
end

function battle_manager:phase_battle_init(dt)
	self:create_turn_order()
	self.phase = "turn"
	self.current_menu = "menu"
end

function battle_manager:phase_turn(dt)
	local isPlayer = self:playerturn(self.turn_order[self.current_actor])
	if isPlayer then
		self:player_turn(self.player.player_party[self.current_actor])
	end
	if not isPlayer then
		self:enemy_turn(self.enemy_party[self.current_actor - #self.player.player_party])
	end
	
	
	if self.turn_over then
		self.current_actor = self.current_actor + 1
		if self.current_actor > #self.player.player_party + #self.enemy_party then
			self.current_actor = 1
		end
		self.turn_over = false
	end
end

function battle_manager:player_turn(actor)
	if self.current_menu == "menu" then
		if self.keypressed == "up" then
			self.index = self.index - 1
			if self.index < 1 then self.index = 4 end
			self.keypressed = ""
		end
		if self.keypressed == "down" then
			self.index = self.index + 1
			if self.index > 4 then self.index = 1 end
			self.keypressed = ""
		end
		if self.keypressed == "z" then
			if self.index == 1 then
			self.selected_action = attack
			self.targeting = self.selected_action.target_type
			self.index3 = 1
			self.keypressed = ""
			self.current_menu = "target"
			self.previous_menu = "menu"
			end
			if self.index == 2 then
				self.selected_action = "defend"
				self.current_menu = "target"
				self.target_type = "self"
			end
			if self.index == 3 and #self.player.player_party[self.current_actor].skills > 0 then
				self.current_menu = "skill"
				self.index2 = 1
				self.previous_menu = "menu"
			end
			if self.index == 4 then
				self.current_menu = "item"
				self.index2 = 1
			end
			self.index2 = 1
			self.keypressed = ""
		end
	end
	if self.current_menu == "skill" then
		local playeractor = self.player.player_party[self.current_actor]
		local skill_count = #playeractor.skills
		if self.keypressed == "up" then
			self.index2 = self.index2 - 1
			if self.index2 < 1 then self.index2 = skill_count end
			self.keypressed = ""
		end
		if self.keypressed == "down" then
			self.index2 = self.index2 + 1
			if self.index2 > skill_count then self.index2 = 1 end
			self.keypressed = ""
		end
		if self.keypressed == "z" then
			--do skill stuff
			self.selected_action = playeractor.skills[self.index2]
			self.targeting = self.selected_action.target_type
			self.index3 = 1
			self.keypressed = ""
			self.current_menu = "target"
			self.previous_menu = "skill"
		end
		if self.keypressed == "x" then
			self.current_menu = self.previous_menu
			self.index2 = 1
			self.index = 1
			self.keypressed = ""
			self.previous_menu = ""
		end
	end
	if self.current_menu == "target" then
		if self.targeting == "One_Ally" then self.target_party = #self.player.player_party end
		if self.targeting == "One_Enemy" then self.target_party = #self.enemy_party end
		if self.keypressed == "left" then
			self.index3 = self.index3 - 1
			if self.index3 < 1 then self.index3 = self.target_party end
			self.keypressed = ""
		end
		if self.keypressed == "right" then
			self.index3 = self.index3 + 1
			if self.index3 > self.target_party then self.index3 = 1 end
			self.keypressed = ""
		end
		if self.keypressed == "z" then
			if self.targeting == "One_Ally" then
				self.selected_action:use(self.player.player_party[self.current_actor], self.player.player_party[self.index3])
			end
			if self.targeting == "One_Enemy" then
				self.selected_action:use(self.player.player_party[self.current_actor], self.enemy_party[self.index3])
			end
			self.selected_action = nil
			self.targeting = ""
			self.index3 = 1
			self.keypressed = ""
			self.current_menu = "menu"
			self.previous_menu = ""
			self.turn_over = true
		end
		if self.keypressed == "x" then
			
			self.selected_action = nil
			self.targeting = ""
			self.index3 = 1
			self.keypressed = ""
			self.current_menu = "menu"
			self.previous_menu = ""
		end
	end
end

function battle_manager:enemy_turn(actor)
	local available_skills = actor.skills
	--make function to get what skill
	local used_skill = attack
	--^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
	used_skill:use(actor, self.player.player_party[1])
	self.animate_time = 2
	self.phase = "animate"
	turn_over = true
end

function battle_manager:create_turn_order()
	local turn_list = {}
	for i=1, #self.player.player_party do
		table.insert(turn_list, "p" .. tostring(i))
	end
	for i=1, #self.enemy_party do
		table.insert(turn_list, "e" .. tostring(i))
	end
	self.turn_order = turn_list
end

function battle_manager:playerturn(actor)
	if actor == "p1" or actor == "p2" or actor == "p3" then return "player" end
	return "enemy"
end

function battle_manager:phase_begin(dt)
	if self.phase_time > 2 then
		self.phase = "battle_init"
		self.phase_time = 0
	end
end

function battle_manager:draw()
	--draw background
	if self.battleback then
		love.graphics.draw(self.battleback)
	end
	if self.phase == "begin" then
		self:draw_intro()
	end
	if self.phase == "turn" then
		if self:playerturn(self.turn_order[self.current_actor]) ~= nil then
			self:draw_menu(self.current_actor)
			if self.current_menu == "skill" then
				self:draw_menu2("skill", self.current_actor)
			end
		else
			--draw enemy stuff?
		end
	end
	self:draw_info()
	self:draw_targeticon()
	self:draw_debug()
	love.graphics.print(self.message_log, 0, 0)
end

function battle_manager:test_battle()
	
end

function battle_manager:end_battle()
	local enemy_defeated = true
	for i in ipairs(enemy_party) do
		if i.hp > 0 then
			enemy_defeated = false
		end
	end
	return enemy_defeated
end

function battle_manager:draw_info()
	--draw actor information
	--portrait
	for i, k in ipairs(self.player.player_party) do
		love.graphics.draw(k.battle_image, 200 * (i - 1), love.graphics:getHeight() - k.battle_image:getHeight())
	end
	--information
	for i, k in ipairs(self.player.player_party) do
		love.graphics.print(tostring(k.name), (200 * (i-1)) + k.battle_image:getWidth(), love.graphics:getHeight() - k.battle_image:getHeight() + 10)
		love.graphics.print( "HP:"..tostring(k.hp) .. "/" .. tostring(k.stats.maxhp), (200 * (i-1)) + k.battle_image:getWidth(), love.graphics:getHeight() - k.battle_image:getHeight() + 20)
		love.graphics.print( "MP:"..tostring(k.mp) .. "/" .. tostring(k.stats.maxmp), (200 * (i-1)) + k.battle_image:getWidth(), love.graphics:getHeight() - k.battle_image:getHeight() + 30)
	end
	
	--draw enemy information
	for i, k in ipairs(self.enemy_party) do
		love.graphics.draw(k.battle_image, 200 * i, 80)
		love.graphics.print(k.name, 200 * i + (k.battle_image:getWidth() / 4), 80)
	end
end

function battle_manager:draw_menu()
	--menu location
	local mx, my =  200 * (self.current_actor - 1), love.graphics:getHeight() - 250
	--love.graphics.print("===MENU:" .. self.player.player_party[self.current_actor].name .. "===", mx, my)
	if self.index == 1 then love.graphics.print("->", mx + 30, my+10) end love.graphics.print("Attack", mx+ 20 + 30, my+10)
	if self.index == 2 then love.graphics.print("->", mx + 30, my+30) end love.graphics.print("Defend", mx+ 20 + 30, my+30)
	if self.index == 3 then love.graphics.print("->", mx + 30, my+50) end love.graphics.print("Skill", mx+ 20 + 30, my+50)
	if self.index == 4 then love.graphics.print("->", mx + 30, my+70) end love.graphics.print("Item", mx+ 20 + 30, my+70)
end

function battle_manager:draw_menu2(menu_type)
	local mx, my =  200 * (self.current_actor - 1), love.graphics:getHeight() - 250
	if menu_type == "skill" then
		if self.player.player_party[self.current_actor].skills[self.index2 - 1] ~= nil then love.graphics.print("  " ..self.player.player_party[self.current_actor].skills[self.index2 - 1].name, mx + 100, my + 50) end
						  love.graphics.print( ">"..tostring(self.player.player_party[self.current_actor].skills[self.index2].name) .. "<", mx + 100, my + 60)
		if self.player.player_party[self.current_actor].skills[self.index2 + 1] ~= nil then love.graphics.print("  " ..self.player.player_party[self.current_actor].skills[self.index2 + 1].name, mx + 100, my + 70) end
	end
	if menu_type == "item" then
		if self.player.player_party[self.current_actor].skills[self.index2 - 1] ~= nil then love.graphics.print("  " .. "replace me" , mx + 100, my + 50) end
						  love.graphics.print( ">"..tostring("replace me").. "<", mx + 100, my + 60)
		if self.player.player_party[self.current_actor].skills[self.index2 + 1] ~= nil then love.graphics.print("  " .. "replace me" , mx + 100, my + 70) end
	end
end

function battle_manager:draw_targeticon()
	if self.target_party ~= nil then
		if self.targeting == "One_Ally" then
			for i, k in ipairs(self.player.player_party) do
				if self.index3 == i then
					love.graphics.draw(top_target_icon, 200 * (i - 1), love.graphics:getHeight() - k.battle_image:getHeight())
					love.graphics.draw(bottom_target_icon, 200 * (i - 1), love.graphics:getHeight() - k.battle_image:getHeight())
				end
			end
		end
		if self.targeting == "One_Enemy" then
			for i, k in ipairs(self.enemy_party) do
				if self.index3 == i then
					love.graphics.draw(top_target_icon, 200 * i - 20, 80)
					love.graphics.draw(bottom_target_icon, 200 * i, 80 + (k.battle_image:getHeight() - bottom_target_icon:getHeight()))
				end
			end
		end
	end
end

function battle_manager:draw_intro()
	local encounter_message = "ENEMY ENCOUNTER"
	love.graphics.print(encounter_message, 0, 0)
end

function battle_manager:draw_debug()
	love.graphics.print(tostring(self.keypressed), 0, 10)
	love.graphics.print(tostring(self.current_menu), 0, 20)
	love.graphics.print(tostring(self.targeting), 0, 30)
	
end