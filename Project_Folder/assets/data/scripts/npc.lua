default_npc_image = love.graphics.newImage("assets/graphics/characters/npc_default.png")
npc = {}

function npc:new(charchip_image, x, y, name, portrait_image )
	local object = {
		charchip = charchip:new(charchip_image, x, y, "NPC"),
		name = "NPC" or name,
		portrait_image = love.graphics.newImage("assets/graphics/characters/" .. portrait_image) or default_npc_image
		message_list = {},
		log_index = 1,
		interacting = false
	}
	
	setmetatable( object, { __index = npc } )
	return object
end

function npc:interact()
	self.log_index = 1
end

function npc:get_current_message()
	return self.message_list[self.log_index]
end

function npc:update(dt, keypressed)
	if keypressed == "z" and self.interacting then
		self:message_next()
		return true
	end
	return false
end

function npc:draw()
	self.charchip:draw()
end

function npc:message_next()
	self.log_index = self.log_index + 1
end