battler = {}
battler_graphic_filepath = "assets/graphics/battler/"

function battler:new(name, image, battler_type, hp, mp)
    -- define our parameters here
    local object = {
		name = name,
		battle_image = image,
		hp = hp or 10,
		mp = mp or 10,
		status = {
		
		},
		stats = {
			maxhp = hp or 10,
			maxmp = mp or 10,
			strength = 5,
			endurance = 5,
			intellegence = 5,
			resistance = 5,
			dexterity = 5,
			speed = 5
		},
		battler_type = battler_type,
		skills = {},
		rewards = {
			gold = 0,
			experience = 0
		},
		enemity = 0,
		draw_position = 0
    }
    setmetatable(object, { __index = battler })
    return object
end

function battler:cap_stats()
	if self.hp < 0 then
		self.hp = 0
		table.insert(self.status, "KO")
	end
	if self.mp < 0 then
		self.mp = 0
	end
	if self.hp > self.stats.maxhp then
		self.hp = self.stats.maxhp
	end
	if self.mp > self.stats.maxmp then
		self.mp = self.stats.maxmp
	end
end

goblin = {}
function goblin:new()
	local goblin_image = love.graphics.newImage(battler_graphic_filepath .. "goblin.png")
	local object = battler:new("Goblin", goblin_image, "monster", 16, 0)
	object.stats = {
	maxhp = 1,
	maxmp = 0,
	strength = 6,
	endurance = 4,
	intellegence = 1,
	resistance = 1,
	dexterity = 4,
	speed = 2
	}
	object.skills = {face_stab}
	object.rewards.gold = 10
	object.rewards.experience = 5
	
    setmetatable(object, { __index = goblin })
	return object
end

gobwiz = battler:new("Gobwiz", battler_graphic_filepath .. "goblin.png", "monster")
gobwiz.stats = {
	maxhp = 10,
	maxmp = 15,
	strength = 1,
	endurance = 1,
	intellegence = 6,
	resistance = 3,
	dexterity = 7,
	speed = 6
}
gobwiz.skills = {
	"fireball",
}
gobwiz.rewards.gold = 20
gobwiz.rewards.experience = 10