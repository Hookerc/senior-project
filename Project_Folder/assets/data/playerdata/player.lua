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

function Player:get_consumableList()
	local temp = {}
	for i,k in ipairs(self.inventory) do
		if k.consumable then
			table.insert(temp, k)
		end
	end
	return temp
end

function Player:add_item(item, amount)
	local temp = nil
	for i,k in ipairs(self.inventory) do
		if k == item then temp = k end
	end
	if temp ~= nil then
		k.count = k.count + (amount or 1)
	else
		table.insert(self.inventory, item)
	end
	
end

function Player:use_item(item, target)
	item:use(target)
	self:update_inventory()
end

function Player:update_inventory()
	for i,k in ipairs(self.inventory) do
		if k.count < 0 then
			table.remove(self.inventory, i)
		end
	end
end