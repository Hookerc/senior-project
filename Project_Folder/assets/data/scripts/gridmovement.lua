local sti = require("sti")
local anim8 = require 'anim8'
charchip = {}
charchip_collide_se = love.audio.newSource("assets/audio/se/se_hit1.wav", static)
function charchip:new(nimage, x, y, charchip_type )
	local object = {}
		object.type = charchip_type
		object.image = nimage
		object.cx = x
		object.cy = y 
		object.x = object.cx * 32
		object.y = object.cy * 32
		object.moving = false
		object.move_speed = 2 --tiles moved in a second
		object.facing = ""
		object.direction_change = false
		object.animation = anim8.newAnimation(anim8.newGrid(32,32, nimage:getWidth(), nimage:getHeight())('1-3',1, 2,1), 0.2)
		object.animationpaused = false
		object.debug_anim = ""
		object.message = "No Message"
    setmetatable(object, { __index = charchip } )
    return object
end

function charchip:update_animation(dt)
	self:get_animation()
	self.animation:update(dt)
end

function charchip:show_message()
	love.graphics.printf()
end

function charchip:get_animation()
	if self.facing == "down" and self.direction_change then
		self.animation = anim8.newAnimation(anim8.newGrid(32,32, self.image:getWidth(), self.image:getHeight())('1-3',1, 2,1), 0.2)
		self.debug_anim = "down"
		self.direction_change = false
	end
	if self.facing == "left" and self.direction_change then
		self.animation = anim8.newAnimation(anim8.newGrid(32,32, self.image:getWidth(), self.image:getHeight())('1-3',2, 2,2), 0.2)
		self.debug_anim = "left"
		self.direction_change = false
	end
	if self.facing == "right" and self.direction_change then
		self.animation = anim8.newAnimation(anim8.newGrid(32,32, self.image:getWidth(), self.image:getHeight())('1-3',3, 2,3), 0.2)
		self.debug_anim = "right"
		self.direction_change = false
	end
	if self.facing == "up" and self.direction_change then
		self.animation = anim8.newAnimation(anim8.newGrid(32,32, self.image:getWidth(), self.image:getHeight())('1-3',4, 2,4), 0.2)
		self.debug_anim = "up"
		self.direction_change = false
	end
	if not self.animationpaused then
		self.animation:resume()
		self.animationpaused = false
	else
		self.animation:gotoFrame(2)
		self.animation:pause()
	end
end

function charchip:move(dt, direction)
	if self.moving then
		if self.facing == "down" then 
			self.y = self.y + (self.move_speed * 32 * dt)
			if self.y > (self.cy * 32)then
				self.y = (self.cy * 32)
				self.moving = false
				return 1
			end
		end
		if self.facing == "left" then 
			self.x = self.x - (self.move_speed * 32 * dt)
			if self.x < (self.cx * 32)then 
				self.x = (self.cx * 32)
				self.moving = false
				return 1
			end
		end
		if self.facing == "right" then 
			self.x = self.x + (self.move_speed * 32 * dt)
			if self.x > (self.cx * 32) then
				self.x = (self.cx * 32)
				self.moving = false
				return 1
			end
		end
		if self.facing == "up"then 
			self.y = self.y - (self.move_speed * 32 * dt)
			if self.y < (self.cy * 32) then 
				self.y = (self.cy * 32)
				self.moving = false
				return 1
			end
		end
	else 
		local temp = false
		if direction == "down" then
			if not (self.facing == "down") then
				self.direction_change = true
				self.facing = "down"
			end
			if self:canGoTo(self.cx, self.cy + 1) then
				self.moving = true
				self.cy = self.cy + 1
				temp = true
			end
			
		end
		if direction == "left"then 
			if not (self.facing == "left") then
				self.direction_change = true
				self.facing = "left"
			end
			if self:canGoTo(self.cx - 1, self.cy) then
				self.moving = true
				self.cx = self.cx - 1
				temp = true
			end
		end
		if direction == "right"then 
			if not (self.facing == "right") then
				self.direction_change = true
				self.facing = "right"
			end
			if self:canGoTo(self.cx + 1, self.cy) then
				self.moving = true
				self.cx = self.cx + 1
				temp = true
			end
		end
		if direction == "up" then 
			if not (self.facing == "up") then
				self.direction_change = true
				self.facing = "up"
			end
			if self:canGoTo(self.cx, self.cy - 1) then
				self.moving = true
				self.cy = self.cy - 1
				temp = true
			end
		end
		if temp then
			self.animationpaused = false
		else
			if not moving then
				self.animationpaused = true
			end
		end
	end
	return 0
end

function charchip:draw(result)
--	if result == "tophalf" then
--		local temp = love.graphics.newImage('assets/graphics/charachips/characterhead.png')
--		self.animation:draw(temp, self.x - 32, self.y - 32 -16)
--	else
		self.animation:draw(self.image, self.x - 32, self.y - 32 -16)
--	end
end

function charchip:canGoTo(x, y)
	if love.keyboard.isDown("x") then
		return true
	end
	if collision.data[y] ~= nil and collision.data[y][x] ~= nil and collision.data[y][x] > 0 then
		charchip_collide_se:play()
		return false
	end
	charchip_collide_se:stop()
	return true
end