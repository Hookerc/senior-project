local anim8 = require 'anim8'
charachip = {}
  
function charachip:new(image, x, y)
	local object = {
		name = name,
		image = love.graphics.newImage("assets/graphics/charachips/" .. image),
		isPlayer = isPlayer,
		px = x, --pixel x
		py = y, --pixel y
		move_speed = 2,
		moving = false,
		animationpaused = false,
		direction_change = false,
		facing = ""
	}
	setmetatable(object, {__index = charachip})
	object:init()
	return object
end

function charachip:init()
	self.animation = anim8.newAnimation(anim8.newGrid(32,32, self.image:getWidth(), self.image:getHeight())('1-3',1, 2,1), 0.2)
	self.x = self.px * 32
	self.y = self.py * 32
end

function charachip:newImage(image)
	self.image = love.graphics.newImage("assets/graphics/charachips/" .. image)
end

function charachip:setNewPosition(x,y)
	self.px = x
	self.py = y
	self.x = x * 32
	self.y = y * 32
end

function charachip:update(dt)
	self:get_animation()
	self.animation:update(dt)
end

function charachip:draw()
	self.animation:draw(self.image, self.x - 32, self.y - 32 -12)
end

function charachip:get_animation()
	if self.facing == "down" and self.direction_change then
		self.animation = anim8.newAnimation(anim8.newGrid(32,32, self.image:getWidth(), self.image:getHeight())('1-3',1, 2,1), 0.2)
		self.direction_change = false
	end
	if self.facing == "left" and self.direction_change then
		self.animation = anim8.newAnimation(anim8.newGrid(32,32, self.image:getWidth(), self.image:getHeight())('1-3',2, 2,2), 0.2)
		self.direction_change = false
	end
	if self.facing == "right" and self.direction_change then
		self.animation = anim8.newAnimation(anim8.newGrid(32,32, self.image:getWidth(), self.image:getHeight())('1-3',3, 2,3), 0.2)
		self.direction_change = false
	end
	if self.facing == "up" and self.direction_change then
		self.animation = anim8.newAnimation(anim8.newGrid(32,32, self.image:getWidth(), self.image:getHeight())('1-3',4, 2,4), 0.2)
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

function charachip:move(dt, direction, map) --Returns true if finished moving, else false
	if self.moving then
		if self.facing == "down" then 
			self.y = self.y + (self.move_speed * 32 * dt)
			if self.y > (self.py * 32)then
				self.y = (self.py * 32)
				self.moving = false
				return true
			end
		end
		if self.facing == "left" then 
			self.x = self.x - (self.move_speed * 32 * dt)
			if self.x < (self.px * 32)then 
				self.x = (self.px * 32)
				self.moving = false
				return true
			end
		end
		if self.facing == "right" then 
			self.x = self.x + (self.move_speed * 32 * dt)
			if self.x > (self.px * 32) then
				self.x = (self.px * 32)
				self.moving = false
				return true
			end
		end
		if self.facing == "up"then 
			self.y = self.y - (self.move_speed * 32 * dt)
			if self.y < (self.py * 32) then 
				self.y = (self.py * 32)
				self.moving = false
				return true
			end
		end
	else 
		local temp = false
		if direction == "down" then
			if not (self.facing == "down") then
				self.direction_change = true
				self.facing = "down"
			end
			if not map:collidesWith(self.px, self.py + 1, "collision") then
				self.moving = true
				self.py = self.py + 1
				temp = true
			end
			
		end
		if direction == "left"then 
			if not (self.facing == "left") then
				self.direction_change = true
				self.facing = "left"
			end
			if not map:collidesWith(self.px - 1, self.py, "collision") then
				self.moving = true
				self.px = self.px - 1
				temp = true
			end
		end
		if direction == "right"then 
			if not (self.facing == "right") then
				self.direction_change = true
				self.facing = "right"
			end
			if not map:collidesWith(self.px + 1, self.py, "collision") then
				self.moving = true
				self.px = self.px + 1
				temp = true
			end
		end
		if direction == "up" then 
			if not (self.facing == "up") then
				self.direction_change = true
				self.facing = "up"
			end
			if not map:collidesWith(self.px, self.py - 1, "collision") then
				self.moving = true
				self.py = self.py - 1
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
	return false
end