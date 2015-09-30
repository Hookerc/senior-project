local imagepath = "assets/graphics/battlers/"
Battler = {}

function Battler:new(name, image, hp, mp)
	local object = {
		name = name or "Nameless",
		image = love.graphics.newImage(imagepath .. image),
		stats = {
			max_hp = hp or 5,
			max_mp = mp or 5,
			strength = 5,
			endurance = 5,
			intellect = 5,
			wisdom = 5,
			agility = 5
		},
		hp = hp or 5,
		mp = mp or 5,
		skills = {},
		status = {},
		rewards = {
			xp = 5,
			gold = 5,
			drops = {} -- items to be dropped, implemented if time allows
		},
		momentum = 0, --Decides who's turn it is next. Increases at the end of each turn that isn't their own.
		momentum_rate = 1 -- percentage momentum multiplies by each turn. (SHOULD NOT BE UNDER 1)
							-- grows by (momentum = momentum * momentum_rate + agility)
							-- Momentum Ties are decided by agility first, then random.
	}
	setmetatable(object, {__index = Battler})
	return object
end 

function Battler:update_momentum()
	self.momentum = self.momentum * self.momentum_rate + self.stats.agility
end

function Battler:set_stats(strength, endurance, intellect, wisdom, agility)
	self.stats[strength] = strength or 5
	self.stats[endurance] = endurance or 5
	self.stats[intellect] = intellect or 5
	self.stats[wisdom] = wisdom or 5
	self.stats[agility] = agility or 5
end

function Battler:set_rewards(xp, gold, items)
	self.rewards[xp] = xp or 0
	self.rewards[gold] = gold or 0
	self.rewards[items] = items or {}
end

goblin = {}
function goblin:new()
	local object = Battler:new("Goblin", "goblin.png", math.random(8,12), 5)
	object:set_stats(8,6,2,2,6)
	object:set_rewards(8, 5)
	return object
end