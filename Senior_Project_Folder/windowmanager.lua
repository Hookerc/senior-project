Window_Manager = {}

function Window_Manager:new()
	local object = {
		windowlist = {} -- Holds all windows to be drawn
	}
	
	setmetatable( object, { __index = Window_Manager } )
	return object
end

function Window_Manager:update(dt)

end

function Window_Manager:draw()

end


--possible parameters: x, y, name, text, width, height
--access things by going : x = parameters[x] or 0  (value or default)
function Window_Manager:new_window(parameters) --parameters is a list, with stuff like {x = 2, y = 2} or {x = 35, name = "John", text = "Wololololo"}
	
end