item = {}

function item:new(name, targ_type)
    -- define our parameters here
    local object = {
		name = name,
		count = 0,
		target_type = targ_type
    }
    setmetatable(object, { __index = item })
    return object
end

function item:use(target)
	target.hp = target.mhp
end

potion = item:new("Potion", "One_Ally")

function potion:use(target)
	target.hp = target.hp (target.mhp * 0.5)+ 20
	target:cap_stats()
end