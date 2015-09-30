item = {}

function item:new(name, targ_type)
    -- define our parameters here
    local object = {
		name = name,
		count = 0,
		target_type = targ_type,
		consumable = false,
		outsideBattle = false
    }
    setmetatable(object, { __index = item })
    return object
end

function item:use(target)
	self.count = self.count - 1
	self:action(target)
end

potion = item:new("Potion", "One_Ally")
potion.consumable = true
potion.outsideBattle = true
function potion:action(target)
	target.hp = target.hp (target.mhp * 0.5)+ 20
	target:cap_stats()
end