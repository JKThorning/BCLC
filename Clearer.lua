local delay = 0
local framerate = 0
local GetFramerate = GetFramerate

local f = CreateFrame("FRAME")
f:SetScript("OnUpdate", function()
	delay = delay + 1
	if delay > framerate then
		framerate = GetFramerate()
		delay = 0
		CombatLogClearEntries()
	end
end)