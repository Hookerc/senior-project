character = {}

function character:new(name, battler)
	local object = {
		name = name,
		battler = battler
	}
	setmetatable( object, { __index = battle_manager } )
end

