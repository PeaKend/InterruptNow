-- Event Frames

EventFrame = CreateFrame("Frame", "EventFrame", UIParent)	-- Main event
EventFrame:RegisterEvent("UNIT_COMBAT")

-- Variables

playerName = GetUnitName("player")

-- Functions

function InterruptNow_OnLoad() -- OnLoad
	RozenWeMissYou(playerName)
end

function EventFrame_OnEvent(self, event, ...)	-- Main Event OnEvent
	
end
EventFrame:SetScript("OnEvent", EventFrame_OnEvent)

-- Misc Events Frame

RandomEvent = CreateFrame("Frame", "RandomEvent", UIParent)	-- Misc Event
RandomEvent:RegisterEvent("PLAYER_DEAD")

-- Misc Functions

function RandomEvent_OnEvent(self, event, ...)
	RozenWeMissYou2(playerName)
end
RandomEvent:SetScript("OnEvent", RandomEvent_OnEvent)

function RozenWeMissYou(self)	-- Just random prints for guildies
	if(self)=="Muertotuerto" then
		print("Hola creador <3")
	elseif(self)=="Kheypax" then
		print("Puto")
	elseif(self)=="Pomatow" then
		print("Dame hijos <3")
	end
end

function RozenWeMissYou2(self)	-- A great advice for our mighty tank
	if(self)=="Kheypax" then
		print("Sos tanque y no podes quedarte vivo")
	end
end