-- OBBY HUB --
local placeId = game.PlaceId
local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zer0ids/Qwerty/main/obf1.lua"))()
if placeId == 8003084678 then
    ui:ChangeId(placeId)
else
    ui:ChangeId(0) -- universal coming soon...
end
