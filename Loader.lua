-- OBBY HUB --
local placeId = game.PlaceId
local ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/Zer0ids/Qwerty/main/obf1.lua"))()
if placeId == 8003084678 then
    ui.PlaceId = placeId
else
    ui.PlaceId = nil -- universal coming soon...
end