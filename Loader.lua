local obbyhub = Instance.new("ScreenGui")
local loadingframe = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local desc = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local placeid = Instance.new("Frame")
local placelabel = Instance.new("TextLabel")

obbyhub.Name = "obbyhub"
obbyhub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
obbyhub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
obbyhub.ResetOnSpawn = false

loadingframe.Name = "loadingframe"
loadingframe.Parent = obbyhub
loadingframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loadingframe.BackgroundTransparency = 0.200
loadingframe.Position = UDim2.new(0.357369781, 0, 0.0447658412, 0)
loadingframe.Size = UDim2.new(0.284466237, 0, 0.21831955, 0)
loadingframe.ZIndex = -1

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(54, 54, 54)), ColorSequenceKeypoint.new(0.42, Color3.fromRGB(106, 106, 106)), ColorSequenceKeypoint.new(0.66, Color3.fromRGB(127, 127, 127)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(54, 54, 54))}
UIGradient.Rotation = 90
UIGradient.Parent = loadingframe

desc.Name = "desc"
desc.Parent = loadingframe
desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
desc.BackgroundTransparency = 1.000
desc.Position = UDim2.new(0.262509555, 0, 0.550622463, 0)
desc.Size = UDim2.new(0.47339946, 0, 0.359631211, 0)
desc.Font = Enum.Font.Gotham
desc.Text = "Basic scripting hub with exploits for obbies"
desc.TextColor3 = Color3.fromRGB(255, 255, 255)
desc.TextScaled = true
desc.TextSize = 14.000
desc.TextWrapped = true

UICorner.CornerRadius = UDim.new(0.100000001, 0)
UICorner.Parent = loadingframe

title.Name = "title"
title.Parent = loadingframe
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.Position = UDim2.new(0.184340894, 0, 0.122606836, 0)
title.Size = UDim2.new(0.632528484, 0, 0.359631211, 0)
title.Font = Enum.Font.GothamBold
title.Text = "OBBY HUB"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

placeid.Name = "placeid"
placeid.Parent = obbyhub
placeid.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
placeid.Position = UDim2.new(0.393710822, 0, 0.277203888, 0)
placeid.Size = UDim2.new(0.211975858, 0, 0.0586776845, 0)
placeid.Style = Enum.FrameStyle.ChatBlue

placelabel.Name = "placelabel"
placelabel.Parent = placeid
placelabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
placelabel.BackgroundTransparency = 1.000
placelabel.Position = UDim2.new(0, 0, -0.029342724, 0)
placelabel.Size = UDim2.new(1, 0, 1, 0)
placelabel.Font = Enum.Font.Gotham
placelabel.Text = "Getting place ID..."
placelabel.TextColor3 = Color3.fromRGB(0, 0, 0)
placelabel.TextScaled = true
placelabel.TextSize = 14.000
placelabel.TextWrapped = true

wait(1)

if game.PlaceId == 8003084678 then
	placelabel.Text = "Place id confirmed! [oMega Obby 🌟 625 Stages!]"
	wait(2)
	placelabel.Text = "Loading script..."
	wait(5)
	obbyhub:Destroy()
	getgenv().Loaded = true
	loadstring(game:HttpGet("https://raw.githubusercontent.com/Ranxware-V2/obby-hub/main/Games/1-lua.lua?token=GHSAT0AAAAAABYTGDPA6QVG344C4W2BUP76Y3Z3FPA"))()
else
	placelabel.Text = "Loading universal"
	wait(2)
	obbyhub:Destroy()
end
