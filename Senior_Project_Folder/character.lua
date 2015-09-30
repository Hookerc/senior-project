Character = {}
function Character:new()
	local object = {
		image = love.graphics.newImage(),
		moving = false, --if the character is currently moving
		grid_x = 0, --tile x
		grid_y = 0, --tile y
		px_x = 0,   --pixel x
		px_y = 0,   --pixel y
		movespeed = 1, --tiles per second
		npc_type = "", -- "player" for the player, "shop" for a shopping npc, "talk" for a talking npc
		interacting = false
	}
	setmetatable(object, {__index = Character})
	return object
end
--[[ NPC_Type usage with tiled: click the [+]
	In object properties:
		Read: "Type" as "player"
			this character will be controlled by player input. (not to be placed by tiled)
		Read: "Type" as "shop"
			any subsequent should give shop items eg.
			[     Data        Value
				"potion"	  true
				"ether"       true
				"bread"       true
			] Can disable buyability by changing value to false
		
		Read: "Type" as "text"
			any subsequent properties should give the text to read eg.
			[     Data        Value
			    anything    "This is the first line of text"
				anything    "This is the second line of text"
			] Data doesn't matter, the text is in the Value
--]]

function Character:update(dt)
	
end

function Character:draw()
	
end

function Character:update_position(dt)
	
end

function Character:player_update(dt, keypressed)
	if keypressed == "up" then
	
	end
end

function Character:npc_update(dt)
	
end
