audio_data_source = "assets/audio/"
Audio_Manager = {
		current_bgm = nil,
		current_bgm_name = nil,
		se_list = {}
	}

function Audio_Manager:update(dt)
	for i,k in ipairs(self.se_list) do
		if not k:isPlaying() then 
			table.remove(self.se_list, i)
		end
	end
	self:play()
end

function Audio_Manager:play()
	if self.current_bgm ~= nil and not self.current_bgm:isPlaying() then self.current_bgm:play() end
end

function Audio_Manager:new_bgm(bgmname)
	if self.current_bgm_name == bgmname then return end
	if self.current_bgm ~= nil then self.current_bgm:stop() end
	if bgmname == "" then self.current_bgm = nil
	else 
		self.current_bgm = love.audio.newSource(audio_data_source .. "bgm/" .. bgmname.. ".mp3", stream)
		self.current_bgm_name = bgmname
	end
end

function Audio_Manager:new_se(sename)
	local temp = love.audio.newSource(audio_data_source .. "se/" .. sename)
	table.insert(self.se_list, temp)
	temp:play()
end

function Audio_Manager:set_volume(vol)
	self.bgm:setVolume()
end