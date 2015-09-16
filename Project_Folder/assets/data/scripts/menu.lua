menu = {}

function menu:new(player)
	local object = {
		index = 1,
		player = player,
		menu_x = 0,
		menu_y = 0,
		keypressed = ""
	}
	setmetatable( object, { __index = menu } )
	return object
end

function menu:update(dt)
end

function menu:draw()
	self:drawParty()
end

function menu:drawMenu()
	
end

function menu:drawParty()
	for i, k in ipairs(self.player.player_party) do
		love.graphics.setColor((i-1) * 50,(i-1) * 50,(i-1) * 50,255)
		love.graphics.rectangle("fill",200, (i-1)* 100, 300, 100 )
		love.graphics.setColor(255,255,255,255)
		love.graphics.draw(k.battle_image, 200, (i -1)* 100)
	end
	--information
	for i, k in ipairs(self.player.player_party) do
		love.graphics.print(tostring(k.name),200 + k.battle_image:getWidth(), (i -1)* 100 + 10)
		love.graphics.print( "HP:"..tostring(k.hp) .. "/" .. tostring(k.stats.maxhp), 200 + k.battle_image:getWidth(), (i -1)* 100 + 20)
		love.graphics.print( "MP:"..tostring(k.mp) .. "/" .. tostring(k.stats.maxmp), 200 + k.battle_image:getWidth(), (i -1)* 100 + 30)
	end
end