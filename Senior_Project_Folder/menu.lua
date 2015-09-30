Menu = {}

function Menu:new(size, align)
	local object = {
		index = 1,
		align = align or "vertical",
		size = size or 1,
		returned = nil
	}
	setmetatable(object, {__index = Menu})
	return object
end

function Menu:update(dt, key)
	if key ~= "" then
		self:update_index(dt, key)
	end
end

function Menu:confirm()
	if self.returned ~= nil then
		return self.returned
	end
	return false
end

function Menu:update_index(dt, key)
	if self.align == "veritcal" then
		if key == "up" then
			self.index = self.index + 1
		end
		if key == "down" then
			self.index = self.index - 1
		end
	end
	if self.align == "horizontal" then
		if key == "right" then
			self.index = self.index + 1
		end
		if key == "left" then
			self.index = self.index - 1
		end
	end
	if key == "z" then
		self.returned = self.index
	end
	self.index = math.clamp(1, self.index, self.size)
end

function math.clamp(low, n, high) return math.min(math.max(low, n), high) end