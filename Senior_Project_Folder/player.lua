require (scriptpath .. 'charachip')
Player = {}

function Player:new()
	local object = {
		playtime = {0, 0, 0},
		name = "",
		party = {}, --Character Information
		charachip = charachip:new("player.png", 4, 4) --Map Information
	}
	setmetatable (object, {__index = Player})
	return object
end

