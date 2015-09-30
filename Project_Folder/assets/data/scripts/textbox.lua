textbox = {}

function textbox:new(x,y,width,height,text)
	local object = {
		x = x or 0,
		y = y or love.graphics.getHeight - 110,
		width = width or love.graphics.getWidth(),
		height = height or love.graphics.getHeight(),
		text = text or "No text entered."
	}
	
	setmetatable(object, { __index = textbox})
	return object
end