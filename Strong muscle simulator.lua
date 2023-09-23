local function farm()
		for i, v in pairs(game.workspace.NPCS:GetChildren()) do
		if v.Name == SelectedItem then
				v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -4)
		
		
			  

end
end

end
local function farmes()
		for i, v in pairs(game.workspace.NPCS:GetChildren()) do
		
				v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, -4)
		
		
			  


end

end
local function telefarm()
		for i, v in pairs(game.workspace.NPCS:GetChildren()) do
		if v.Name == SelectedItem then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.HumanoidRootPart.Position)
		
		
			  wait(1)

end
end

end
local place = {
		"Villager",
		"Archer",
		"Medieval Warrior",
		"Lord",
		"Knight",
		"Castle Wizard",
		"Witcher",
		"King",
		"Emperor",
		"Spartacus",
		"Armored Knight"
	}

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Autofarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddToggle({
		Name = "auto farm bring",
		Default = false,
		Callback = function(Value)
			getgenv().autofarm = Value
			while autofarm do
				farm()
				task.wait(1)
				game:GetService("ReplicatedStorage"):WaitForChild("Combat"):WaitForChild("Events"):WaitForChild("Burning Punch"):FireServer()

				game:GetService("ReplicatedStorage"):WaitForChild("Combat"):WaitForChild("Events"):WaitForChild("Punch"):FireServer()
              task.wait()
			end
		end
	})
	Tab:AddToggle({
		Name = "auto farm all bring",
		Default = false,
		Callback = function(Value)
			getgenv().autofarmes = Value
			while autofarmes do
				farmes()
				task.wait(1)
				game:GetService("ReplicatedStorage"):WaitForChild("Combat"):WaitForChild("Events"):WaitForChild("Burning Punch"):FireServer()

				game:GetService("ReplicatedStorage"):WaitForChild("Combat"):WaitForChild("Events"):WaitForChild("Punch"):FireServer()
              task.wait()
			end
		end
	})
	Tab:AddToggle({
		Name = "teleport farm RISKY",
		Default = false,
		Callback = function(Value)
			getgenv().telefe = Value
			while telefe do
				telefarm()
				task.wait(0.05)
				game:GetService("ReplicatedStorage"):WaitForChild("Combat"):WaitForChild("Events"):WaitForChild("Burning Punch"):FireServer()

				game:GetService("ReplicatedStorage"):WaitForChild("Combat"):WaitForChild("Events"):WaitForChild("Punch"):FireServer()
              task.wait(3)
			end
		end
	})
	Tab:AddToggle({
		Name = "auto weight",
		Default = false,
		Callback = function(Value)
			getgenv().eas = Value
			while eas do
			task.wait()
				game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Weight"):FireServer()

			end
		end
	})
		Tab:AddToggle({
		Name = "fast attack",
		Default = false,
		Callback = function(Value)
			getgenv().ease = Value
			while ease do
			task.wait()
				game:GetService("ReplicatedStorage"):WaitForChild("Combat"):WaitForChild("Events"):WaitForChild("Burning Punch"):FireServer()
				game:GetService("ReplicatedStorage"):WaitForChild("Combat"):WaitForChild("Events"):WaitForChild("Punch"):FireServer()
        
			end
		end
	})
	
	

Tab:AddDropdown({
		Name = "Select mob",
		Default = "Villager",
		Options = place,
		Callback = function(Value)
			
			SelectedItem = Value
		end
	})
	

local Tab1 = Window:MakeTab({
	Name = "Credit",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab1:AddLabel("ConstancePrimeau#3198 - firstpilot scriptblox")
Tab1:AddLabel("puro#4730 was quit:( - botbrostopusing scriptblox")
Tab1:AddLabel("someone can help me i prob put here ")
