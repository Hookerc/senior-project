skill = {}

function skill:new(name, target_type)
	local object = {
		name = name,
		target_type = target_type,
		cost = 5,
		usable_outside = false
	}
	
	setmetatable(object, { __index = skill})
	return object
end

attack = skill:new("Attack", "One_Enemy")
attack.cost = 4
function attack:use(user, target)
	local damage = math.floor((((user.stats.strength * 2) - target.stats.endurance) * ( 100 / (love.math.random(80, 120)))))
	target.hp = target.hp - damage
	if target.hp < 0 then target.hp = 0 end
	return user.name .. " has " .. self.name .. "ed " .. target.name .. " for " .. damage .. " damage!"
end

face_stab = skill:new("Face Stab", "One_Enemy")
face_stab.cost = 2
function face_stab:use(user, target)
	local damage = math.floor(((user.stats.strength * 2.5) - target.stats.endurance)  * ( 100 / (love.math.random(80, 120))))
	target.hp = target.hp - damage
	if target.hp < 0 then target.hp = 0 end
	user.mp = user.mp - self.cost
	return user.name .. " used " .. self.name .. " on " .. target.name .. " for " .. damage .. " damage!"
end

fireball = skill:new("Fireball", "One_Enemy")
fireball.cost = 6
function fireball:use(user, target)

	local damage = math.floor(((user.stats.intellegence * 2) - target.stats.resistance) * ( 100 / (love.math.random(80, 120))))
	target.hp = target.hp - damage
	user.mp = user.mp - self.cost
	if target.hp < 0 then target.hp = 0 end
	return user.name .. " used " .. self.name .. " on " .. target.name .. " for " .. damage .. " damage!"
end

heal = skill:new("Heal", "One_Ally")
heal.cost = 4
heal.usable_outside = true
function heal:use(user, target)
	target.hp = target.hp + (target.stats.maxhp * .30)
	user.mp = user.mp - self.cost
	if target.hp > 0 then target.hp = target.stats.maxhp end
	return user.name .. " restored " .. target.name .. "'s HP!"
end


first_aid = skill:new("First Aid", "Self")
first_aid.cost = 4
first_aid.usable_outside = true
function first_aid:use(user)
	user.hp = user.hp + (user.stats.maxhp * .30)
	user.mp = user.mp - self.cost
	if user.hp > 0 then user.hp = user.stats.maxhp end
	return user.name .. " restored their HP!"
end
