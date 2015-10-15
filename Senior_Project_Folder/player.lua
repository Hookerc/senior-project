require (scriptpath .. 'charachip')
require (scriptpath .. 'character')
Player = {}

function Player:new() --Stores all player data
	local object = {
		playtime = {0, 0, 0},
		name = "",
		party = {
		Character:new("Kreid", "character"),
		Character:new("Pascelle", "character2"),
		Character:new("Guy2", "character"),
		Character:new("Girl2", "character2"),
		Character:new("NOTINBATTLE", "character")
		}, --Character Information
		charachip = charachip:new("player.png", 9, 12), --Map Information
		currentmap = "",
		quest_progress = {} --stored as quest_progress["NAME"] = progress eg. quest_progress["Save Kingdom"] = 40
	}
	setmetatable (object, {__index = Player})
	object:init()
	return object
end

function Player:init()
	
end

function Player:getBattleParty()
	local object = {}
	for i,k in ipairs(self.party) do
		table.insert(object, k.battler)
		if i == 4 then break end
	end
	return object
end