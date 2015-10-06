scriptpath = ""
local sti = require("sti")
require (scriptpath .. "gamemanager")
require (scriptpath .. 'battler')
require (scriptpath .. 'player')
require (scriptpath .. 'menu')
require (scriptpath .. "character")
require (scriptpath .. "mapscene")
require (scriptpath .. "battlescene")
require (scriptpath .. "camera")
require (scriptpath .. "audiomanager")
require (scriptpath .. "shaders")


function love.load()
	
	game = Game_Manager:new()
	love.window.setTitle(__title_list[love.math.random(1,#__title_list)])
end

function love.update(dt)
	game.keypressed = getInput()
	game:update(dt)
	Audio_Manager:update(dt)
	Audio_Manager:play()
end

function love.draw()
	game:draw()
	love.graphics.print(game.keypressed, 0,0)
end

__title_list = {
	"A Role-Playing RPG Game",
	"Senior Citizen Project",
	"A non-working work in progress",
	"Secret Damage Formula : (2 * a.atk) - (b.def)",
	"404 Title Not Found",
	"original RPG dounut steel",
	"fite me 1v1 scrub c wat u github",
	"GG2EZPZ off the heezy squeezy",
	"Icing on the runtime"
}

function love.keypressed(key)
	if key == "escape" then
		love.event.quit()
	end
end

function getInput()
	if love.keyboard.isDown("up") then
		return "up"
	end
	if love.keyboard.isDown("down") then
		return "down"
	end
	if love.keyboard.isDown("left") then
		return "left"
	end
	if love.keyboard.isDown("right") then
		return "right"
	end
	return ""
end
