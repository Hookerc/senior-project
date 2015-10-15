require (scriptpath .. "scenemanager")
require (scriptpath .. "windowmanager")
require (scriptpath .. "player")
Game_Manager = {}

function Game_Manager:new(player)
	local object = {
		player = player or Player:new(),
		session_time = {0, 0, 0}, -- {hr, min, sec}
		keypressed = ""
	}
	setmetatable( object, { __index = Game_Manager } )
	object:init(player)
	return object
end

function Game_Manager:init()
	self.scene = Scene_Manager:new(self.player)
	self.window = Window_Manager:new()
end

function Game_Manager:update(dt)
	self.scene:update(dt, self.keypressed)
	self.window:update(dt)
	self:update_time(dt)
end

function Game_Manager:draw()
	self.scene:draw()
	self.window:draw()
	love.graphics.print("SessionTime: ".. self.session_time[1] .. " " .. self.session_time[2] .. " " .. math.round(self.session_time[3]),0,20) --hour minute second
end

function Game_Manager:update_time(dt)
	self.session_time[3] = self.session_time[3] + dt
	if self.session_time[3] > 60 then
		self.session_time[2] = self.session_time[2] + 1
		self.session_time[3] = self.session_time[3] - 60
	end
	if self.session_time[2] > 60 then
		self.session_time[1] = self.session_time[1] + 1
		self.session_time[2] = self.session_time[2] - 60
	end
end


--
function math.round(n, deci) deci = 10^(deci or 0) return math.floor(n*deci+.5)/deci end