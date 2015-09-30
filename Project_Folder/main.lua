local sti = require("sti")
local anim8 = require 'anim8'
local scriptpath = "assets/data/scripts/"
local datapath = "assets/data/playerdata/"
require (scriptpath .. "gridmovement")
require (scriptpath .. "mapmanager")
require (scriptpath .. "battlemanager")
require (datapath .. "player")
require (datapath .. "characters")
require (datapath .. "items")
require (datapath .. "skills")
require (datapath .. "battler")
require (scriptpath .. "menu")
require (scriptpath .. "camera")
font = love.graphics.newFont(14) -- the number denotes the font size
menufont = love.graphics.newImageFont("assets/graphics/system/testfont.png",
    " abcdefghijklmnopqrstuvwxyz" ..
    "ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
    "123456789.,!?-+/():;%&`'*#=[]\"")
textboxfont = love.graphics.newFont("assets/graphics/fonts/never.ttf", 30)
battlefont = love.graphics.newFont("assets/graphics/fonts/rpg.ttf", 22)
function love.load()

	monoChromeShader = love.graphics.newShader[[
    vec4 effect( vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords ){
	vec4 pixel = Texel(texture, texture_coords );//This is the current pixel color
	number average = (pixel.r+pixel.b+pixel.g)/3.0;
	pixel.r = average;
	pixel.g = average;
	pixel.b = average;
	return pixel;
	}
	]]
	
	

	game_phase = "map"
	menu_disabled = false
	map_manage = map_manager:new()
	new_game_data = Player:new()
	battle_manage = battle_manager:new(new_game_data)
	main_menu = menu:new(new_game_data)
	transition_time = 0
	
	local image = love.graphics.newImage('assets/graphics/charachips/character.png')
	map_manage:load_player_chip(image, 3, 3)
	map_manage:load_map("test_tiles.lua")
	map_manage:createLayerMap("collision")
	map_manage:createLayerMap("overground")
    collision = map_manage.layermaps["collision"]
	local image = love.graphics.newImage('assets/graphics/characters/character_face.png')
	local player1 = battler:new("Kreid", image, "player", 15, 5)
	local image = love.graphics.newImage('assets/graphics/characters/character2_face.png')
	local player2 = battler:new("Pascelle", image, "player", 10, 10)
	player2.skills = {fireball, heal, first_aid}
	--player1.skills = {face_stab, first_aid}
	table.insert(new_game_data.player_party, player1)
	table.insert(new_game_data.player_party, player2)
	gridsize = 32
	battle_manage:set_battleback(love.graphics.newImage('assets/graphics/battleback/Grassland 1.png'))
end

function love.update(dt) 
	if game_phase == "map" then
		map_manage:update(dt)
		if map_manage:check_for_battle() then
			map_manage.bgm:pause()
			battle_manage:set_battleback(love.graphics.newImage('assets/graphics/battleback/Grassland 1.png'))
			battle_manage:new_battle({goblin:new()})
			game_phase = "transition"
			transition_time = 1
			map_manage.steps = 0
		elseif map_manage:check_for_menu() and not menu_disabled then
			game_phase = "menu"
		else
			map_manage.bgm:resume()
		end
	end
	if game_phase == "menu" then
		map_manage.bgm:setVolume(0.35)
		main_menu:update(dt)
		if love.keyboard.isDown("v") then
		map_manage.bgm:setVolume(1)
			game_phase = "map"
			main_menu.index = 1
			main_menu.index2 = 1
			main_menu.action = ""
			main_menu.keypressed = ""
			main_menu.current_menu = "menu"
		end
	end
	if game_phase == "transition" then
		transition_time = transition_time - dt
		if transition_time < 0 then
			game_phase = "battle"
		end
		transition_update()
	end
	if game_phase == "battle" then
		battle_manage:update(dt)
	end
end

function transition_update()
	
end

function love.draw()
	if game_phase == "map" then
		map_manage:draw()
		if love.keyboard.isDown("f3") then draw_debug() end
	end
	if game_phase == "menu" then
		love.graphics.setShader(monoChromeShader)
		map_manage:draw()
		love.graphics.setShader()
		main_menu:draw()
	end
	if game_phase == "battle" then
		battle_manage:draw()
	end
	if game_phase == "transition" then
		
	end
end

function draw_debug()
	love.graphics.print( "player x:" .. map_manage.player.x, 0, 10)
	love.graphics.print( "player cy:" .. map_manage.player.cx, 0, 20)
	love.graphics.print( "player y:" .. map_manage.player.y, 0, 30)
	love.graphics.print( "player cy:" .. map_manage.player.cy, 0, 40)
	love.graphics.print( "player in:" .. map_manage:check_input(), 0, 50)
	love.graphics.print( "moving?" .. tostring(map_manage.player.moving), 0, 60)
	love.graphics.print( "facing:" .. map_manage.player.facing, 0, 70)
	if collision.data[map_manage.player.cy] ~= nil and collision.data[map_manage.player.cy][map_manage.player.cx] ~= nil then
		love.graphics.print("collision:" .. tostring(collision.data[map_manage.player.cy][map_manage.player.cx]), 0, 80)
	end
	love.graphics.print("animated?:" .. tostring(map_manage.player.animationpaused), 0, 90)
	love.graphics.print("battlesteps: " .. tostring(map_manage.steps) .. "/" .. tostring(map_manage.battle_steps), 0, 100)
end

function love.keypressed(key)
	if key == "up" then
		if game_phase == "battle" then battle_manage.keypressed = "up" end
		if game_phase == "menu"   then main_menu.keypressed     = "up" end
	end
	if key == "down" then
		if game_phase == "battle" then battle_manage.keypressed = "down" end
		if game_phase == "menu" then main_menu.keypressed = "down" end
	end
	if key == "left" then
		if game_phase == "battle" then battle_manage.keypressed = "left" end
		if game_phase == "menu" then main_menu.keypressed = "left" end
	end
	if key == "right" then
		if game_phase == "battle" then battle_manage.keypressed = "right" end
		if game_phase == "menu" then main_menu.keypressed = "right" end
	end
	if key == "z" then
		if game_phase == "battle" then battle_manage.keypressed = "z" end
		if game_phase == "menu" then main_menu.keypressed = "z" end
	end
	if key == "x" then
		if game_phase == "battle" then battle_manage.keypressed = "x" end
		if game_phase == "menu" then main_menu.keypressed = "x" end
	end
end
--[[
function main_menu:drawParty()
	for i, k in ipairs(self.player.player_party) do
		love.graphics.draw(menu_graphic2, 200, (i-1)*100)
		love.graphics.draw(k.battle_image, 200, (i -1)* 100)
		love.graphics.draw(menu_graphic1, 200, (i-1)*100)
	end
	--information
	for i, k in ipairs(self.player.player_party) do
		love.graphics.print(tostring(k.name),200 + k.battle_image:getWidth(), (i -1)* 100 + 10)
		love.graphics.print( "HP:"..tostring(k.hp) .. "/" .. tostring(k.stats.maxhp), 200 + k.battle_image:getWidth(), (i -1)* 100 + 20)
		love.graphics.print( "MP:"..tostring(k.mp) .. "/" .. tostring(k.stats.maxmp), 200 + k.battle_image:getWidth(), (i -1)* 100 + 30)
	end
end
]]