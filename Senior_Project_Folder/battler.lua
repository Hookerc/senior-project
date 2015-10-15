local imagepath = "assets/graphics/battlers/"
Battler = {}

function Battler:new(name, image, hp, mp, kind)
	local object = {
		name = name or "Nameless",
		kind = kind or "npc",
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
			drops = {} -- Items to be dropped, implemented if time allows
		},
		momentum = 0, --Decides who's turn it is next. Increases at the end of each turn that isn't their own.
		momentum_rate = 1 -- Percentage momentum multiplies by each turn. (SHOULD NOT BE UNDER 1)
							-- Grows by (momentum = momentum * momentum_rate + agility)
							-- Momentum Ties are decided by agility first, then random.
	}
	setmetatable(object, {__index = Battler})
	if kind == "player" then object.image = love.graphics.newImage(imagepath .. image .. "_face.png") 
	else object.image = love.graphics.newImage(imagepath .. image .. ".png") end
	
	return object
end 

function Battler:update_momentum()
	self.momentum = self.momentum * self.momentum_rate + self.stats.agility
end

function Battler:set_stats(strength, endurance, intellect, wisdom, agility)
	self.stats["strength"] = strength or 5
	self.stats["endurance"] = endurance or 5
	self.stats["intellect"] = intellect or 5
	self.stats["wisdom"] = wisdom or 5
	self.stats["agility"] = agility or 5
end

function Battler:set_rewards(nxp, ngold, nitems)
	self.rewards["xp"] = nxp or 0
	self.rewards["gold"] = ngold or 0
	self.rewards["items"] = nitems or {}
end


--=================================================== DEFINE NEW ENEMIES HERE --====================================================================
goblin = {}
function goblin:new()
	local object = Battler:new("Goblin", "goblin", math.random(8,12), 5)
	object:set_stats(8,6,2,2,6)
	object:set_rewards(8, 5)
	return object
end

wizlin = {}
function wizlin:new()
	local object = Battler:new("Wizlin", "wizlin", math.random(8,12), 10)
	object:set_stats(5,6,9,7,6)
	object:set_rewards(10,8)
	return object
end