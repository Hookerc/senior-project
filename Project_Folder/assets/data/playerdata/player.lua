Player = {}

function Player:new()
    -- define our parameters here
    local object = {
	player_party = {},
	inventory = {},
	Max_party_size = 3
    }
    setmetatable(object, { __index = Player })
    return object
end

function Player:add_party(new_character)
	table.insert(self.player_party, new_character)
end