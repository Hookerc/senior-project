Character = {}
function Character:new(name, dataname)
	local object = {
		name = name,
		--portrait = love.graphics.newImage("assets/graphics/portraits/" .. dataname .. ".png"), --PORTRAITS AREN"T IMPLEMENTED
		description = "A description goes here. However, it hasn't been defined yet and so you are left with this meaningless, blank data that doesn't help anyone.",
		battler = Battler:new(name, dataname, 10, 5, "player")
	}
	setmetatable(object, {__index = Character})
	return object
end