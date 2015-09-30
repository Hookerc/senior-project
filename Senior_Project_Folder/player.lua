require (scriptpath .. 'charachip')
Player = {}

function Player:new()
	local object = {
		playtime = {0, 0, 0},
		name = "",
		party = {}, --Battle Information
		charachip = charachip:new("player.png", 2, 17) --Map Information
	}
	setmetatable (object, {__index = Player})
	return object
end