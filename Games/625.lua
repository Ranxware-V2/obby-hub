local self = game.Players.LocalPlayer
local current_cp = self.leaderstats:FindFirstChild("Stage")

local uiLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Rayfield/main/source"))()
local window = uiLib:CreateWindow({Name="oMega Obby 🌟",LoadingTitle="oMega Obby 🌟 Script",LoadingSubtitle="by Ranxware",ConfigurationSaving={Enabled=false},KeySystem=false})
local tab1 = window:CreateTab("Automated",nil)
tab1:CreateToggle({Name="Autoskip Stage",CurrentValue=false,Callback=function(value)
	if value == true then
		game:GetService("RunService"):BindToRenderStep("Autoskip",Enum.RenderPriority.First.Value,function()
			if current_cp.Value ~= 626 then
				for _,stage in next,game.Workspace.Stages:GetChildren() do
					if stage.Name == tostring(current_cp.Value+1) then
						self.Character:PivotTo(CFrame.new(stage.Spawn.CFrame.Position.X,stage.Spawn.CFrame.Position.Y+2,stage.Spawn.CFrame.Position.Z))
					end
				end
			else
				return
			end
		end)
	else
		game:GetService("RunService"):UnbindFromRenderStep("Autoskip")
	end
end})
tab1:CreateToggle({Name="Auto-Prestige",CurrentValue=false,Callback=function(value)
	if value == true then
		game:GetService("RunService"):BindToRenderStep("Autoprestige",Enum.RenderPriority.First.Value,function()
			if current_cp.Value == 626 then
				for _,prestige in next,game.Workspace["Restart Obby"]:GetChildren() do
					if prestige.Material == Enum.Material.Neon and prestige.Color == Color3.new(163/255,163/255,163/255) then
						self.Character:PivotTo(prestige.CFrame)
					end
				end
			end
		end)
	else
		game:GetService("RunService"):UnbindFromRenderStep("Autoprestige")
	end
end})
