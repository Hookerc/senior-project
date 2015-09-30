menu = {}
menu_graphic1 = love.graphics.newImage("assets/graphics/system/menu001.png") -- character backs
menu_graphic2 = love.graphics.newImage("assets/graphics/system/menu002.png") -- character backs2
menu_graphicarrow = love.graphics.newImage("assets/graphics/system/arrow.png") -- menu pointer

menu_menuse1 = love.audio.newSource("assets/audio/se/se_confirm.wav")


function menu:new(player)
	local object = {
		index = 1,
		player = player,
		menu_x = 0,
		menu_y = 0,
		keypressed = "",
		current_menu = "menu",
		menu_options = {"Items", "Skills", "Options", "Save" }
	}
	setmetatable( object, { __index = menu } )
	return object
end

function menu:update(dt)
	self:update_index()
end

function menu:update_index()
	if self.current_menu == "menu" then
		if self.keypressed == "up" then
			self.index = self.index - 1
			if self.index < 1 then self.index = #self.menu_options end
			self.keypressed = ""
			menu_menuse1:play()
		end
		if self.keypressed == "down" then
			self.index = self.index + 1
			if self.index > #self.menu_options then self.index = 1 end
			self.keypressed = ""
			menu_menuse1:play()
		end
		if self.keypressed == "z" then
			if self.index == 1 then
			
			end
			self.index = 1
			self.keypressed = ""
		end
	end
end

function menu:draw()
	self:drawParty()
	if self.current_menu == "menu" then self:drawMenu() end
	--love.graphics.setFont(font)
end

function menu:drawMenu()
	local mx, my = 0, 0
	love.graphics.setFont(menufont)
	love.graphics.draw(menu_graphicarrow, 35, 20 +(self.index * 30))
	for i,k in ipairs(self.menu_options) do
		love.graphics.print(k, 50, 20 + (i * 30))
	end
	love.graphics.print(self.index,0,0)
	love.graphics.print(self.keypressed,0,15)
end

