Character = {}
function Character:new(dataname)
	local object = {
		portrait = love.graphics.newImage("assets/graphics/portraits/" .. dataname .. ".png"),
		description = "A description goes here. However, it hasn't been defined yet and so you are left with this meaningless, blank data that doesn't help anyone.",
		battler = Battler:new(dataname, dataname..".png", 10, 5)
	}
	setmetatable(object, {__index = Character})
	return object
end