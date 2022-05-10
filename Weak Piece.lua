local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("MIU Hub", "BloodTheme")
local Tab1 = Window:NewTab("Main")
local Section = Tab1:NewSection("Auto Farm")
--[[

SHARK X HUB NO 1	|	https://www.youtube.com/channel/UCX--xBqSg1IdzLkaqmLTorA
SHARK X HUB NO 1	|	https://www.youtube.com/channel/UCX--xBqSg1IdzLkaqmLTorA
SHARK X HUB NO 1	|	https://www.youtube.com/channel/UCX--xBqSg1IdzLkaqmLTorA


-- Copy Position
setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))

-- Remote Spy
loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()

]]--



_G.AutoFarm_Level = false
_G.AutoAce = false
_G.AutoJor = false
_G.FastAttack = false
_G.AutoHaki = false
_G.AutoMRMS = false
_G.AutoSwordMan = false
_G.AutoWarrior = false
_G.AutoKenshin = false
_G.AutoDefWarrior = false
local Tool

--/ Tool
local oldList = {}
local newList = {}

--/ Auto Refresh
for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
	  if v:IsA("Tool") then
		   oldList[v.Name] = v.Name
	  end
  end


local dropdown = Section:NewDropdown("Tool","Info", oldList, function(Select)
  Tool = Select or "Combat"
end)
Section:NewButton("Refreshes", "Refreshes Dropdown", function()
  for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	  --/ Find New
	  if v:IsA("Tool") then
		   newList[v.Name] = v.Name
	  end
  end
  dropdown:Refresh(newList)
end)


--/ Auto Faem
Section:NewToggle("Auto Faem", "Click On For Start And Off For Stop", function(state)
    if state then
        _G.AutoFarm_Level = true
    else
       _G.AutoFarm_Level = false

	   		setfflag("HumanoidParallelRemoveNoPhysics", "true")
            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "true")
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(2)
    end
end)

--/ Auto Ace
Section:NewToggle("Auto Ace", "ToggleInfo", function(state)
    if state then
       _G.AutoAce = true
    else
       _G.AutoAce = false

	   setfflag("HumanoidParallelRemoveNoPhysics", "true")
            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "true")
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(2)
    end
end)

--/ Auto Jor
Section:NewToggle("Auto Jor", "ToggleInfo", function(state)
    if state then
       _G.AutoJor = true
    else
       _G.AutoJor = false

	   setfflag("HumanoidParallelRemoveNoPhysics", "true")
            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "true")
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(2)
    end
end)

--/ Auto MRMS
Section:NewToggle("Auto MRMS", "ToggleInfo", function(state)
    if state then
       _G.AutoMRMS = true
    else
       _G.AutoMRMS = false

	   setfflag("HumanoidParallelRemoveNoPhysics", "true")
        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "true")
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(2)
    end
end)

--/ Auto SwordMan
Section:NewToggle("Auto SwordMan", "ToggleInfo", function(state)
    if state then
       _G.AutoSwordMan = true
    else
       _G.AutoSwordMan = false

	   setfflag("HumanoidParallelRemoveNoPhysics", "true")
            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "true")
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(2)
    end
end)

--/ Auto Warrior
Section:NewToggle("Auto Warrior", "ToggleInfo", function(state)
    if state then
       _G.AutoWarrior = true
    else
       _G.AutoWarrior = false

	   setfflag("HumanoidParallelRemoveNoPhysics", "true")
            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "true")
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(2)
    end
end)

--/ Auto Kenshin
Section:NewToggle("Auto Kenshin", "ToggleInfo", function(state)
    if state then
       _G.AutoKenshin = true
    else
       _G.AutoKenshin = false

	   setfflag("HumanoidParallelRemoveNoPhysics", "true")
            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "true")
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(2)
    end
end)

--/ Key Bine
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.RightControl, function()
	Library:ToggleUI()
end)


function checklevel()
    local Level = game:GetService("ReplicatedStorage").PlayerStats:FindFirstChild(game:GetService("Players").LocalPlayer.Name).StatsFolder.Bouty.Value
    if Level == 1 or Level <= 250 then
        MON = "Bandit"
		ISLAND = "FirstIsland"
	elseif Level == 250 or Level <= 1000 then
		MON = "Samurai"
		ISLAND = "ForestIsland"
	elseif Level == 1000 or Level <= 10000 then
		MON = "Zombie"
		ISLAND = "Mushroom"
	elseif Level == 10000 or Level <= 100000 then
		MON = "Desert Bandit"
		ISLAND = "Sahara"
	elseif Level == 100000 or Level <= 115000 then
		MON = "Yeti"
		ISLAND = "Snow"
	elseif Level == 115000 or Level >= 125000 then
		MON = "Enel"
		ISLAND = "SkyPiea"
    end
end
Method = CFrame.new(0,5,0)

spawn(function()
   while wait(3) do
       if Methodnow == 1 then
        Methodnow = 2
        Method = CFrame.new(0,-5,0)
        else
        Methodnow = 1
        Method = CFrame.new(0,0,5)
       end
    end
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid")  and _G.AutoWarrior or  _G.AutoFarm_Level or _G.AutoAce or _G.AutoJor or _G.AutoMRMS or _G.AutoSwordMan or _G.AutoKenshin then
            game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CanCollide = false
			setfflag("HumanoidParallelRemoveNoPhysics", "False")
            setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False")
            game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11)
		end
    end)
end)

spawn(function()
while wait() do
	if _G.AutoFarm_Level or _G.AutoKenshin or _G.AutoAce == true or _G.AutoJor or _G.AutoMRMS or _G.AutoSwordMan or _G.AutoWarrior then

		if not game.Players.LocalPlayer.Character:FindFirstChild(Tool) then
			if not game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) then
				wait(1)
				game.Players.LocalPlayer.Character.Humanoid.Health = 0
			end
			for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") and v.Name == Tool then
				v.Parent = game.Players.LocalPlayer.Character
			end
			end
			end
		end
	end
end	)

spawn(function()
    while wait() do
		if _G.AutoFarm_Level then 
            pcall(function()
                checklevel()
				for  i, v in pairs(workspace.Enemy[ISLAND]:GetChildren()) do
					for  i, v2 in pairs(workspace.Enemy[ISLAND]:GetChildren()) do
						if v.Name == MON and v.Humanoid.Health > 0 and v2.Name == MON and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                           v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
						    v.HumanoidRootPart.CanCollide = false
                            v2.HumanoidRootPart.CanCollide = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * Method
						end
					end
				end
            end)
        end
    end
end)

--/ Auto Warrior
spawn(function()
    while wait() do
		if _G.AutoWarrior then 
            pcall(function()
				for  i, v in pairs(workspace.SeaWarrior:GetChildren()) do
						if v.Name == "Sea Warrior" and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
						    v.HumanoidRootPart.CanCollide = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * Method
					
					end
				end
            end)
        end
    end
end)

--/ Auto Kenshin
spawn(function()
    while wait() do
		if _G.AutoKenshin then 
            pcall(function()
				for  i, v in pairs(workspace.Enemy.Samurai:GetChildren()) do
						if v.Name == "Kenshin" and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
						    v.HumanoidRootPart.CanCollide = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * Method
					
					end
				end
            end)
        end
    end
end)

--/ Auto Def with Warrior
spawn(function()
    while wait() do
		if _G.AutoDefWarrior then 
            pcall(function()
				for  i, v in pairs(workspace.SeaWarrior:GetChildren()) do
						if v.Name == "Sea Warrior" and v.Humanoid.Health > 0 then
						    v.HumanoidRootPart.CanCollide = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * Method
					
					end
				end
            end)
        end
    end
end)


--/ Auto Sword Man
spawn(function()
    while wait() do
		if _G.AutoSwordMan then 
            pcall(function()
				for  i, v in pairs(workspace.Enemy.RedForest:GetChildren()) do
						if v.Name == "SwordMan" and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
						    v.HumanoidRootPart.CanCollide = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * Method
					
					end
				end
            end)
        end
    end
end)

spawn(function()
    while wait() do
		if _G.AutoAce then 
            pcall(function()
			if not workspace.Ignorelist:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild("Key[Ace]") and workspace.Enemy.Sahara.Boss.Value == false then
				for  i, v in pairs(workspace.Enemy.Sahara:GetChildren()) do
					for  i, v2 in pairs(workspace.Enemy.Sahara:GetChildren()) do
						if v.Name == "Desert Bandit" and v.Humanoid.Health > 0 and v2.Name == "Desert Bandit" and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                           v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
						    v.HumanoidRootPart.CanCollide = false
                            v2.HumanoidRootPart.CanCollide = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * Method
						end
					end
				end
				elseif  workspace.Enemy.Sahara.Boss.Value == true then
						for  i, v in pairs(workspace.Enemy.ForestIsland:GetChildren()) do
						if v.Name == "Ace" and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0  then
						    v.HumanoidRootPart.CanCollide = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * Method
					end
				end
				elseif workspace.Ignorelist:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild("Key[Ace]") and workspace.Enemy.Sahara.Boss.Value == false then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild("[Ace]").CFrame * CFrame.new(0,0,-5)
			end
            end)
        end
    end
end)


spawn(function()
    while wait() do
		if _G.AutoJor then 
            pcall(function()
			if not workspace.Ignorelist:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild("Key[JOR]") and workspace.Enemy.Mushroom.Boss.Value == false then
				for  i, v in pairs(workspace.Enemy.Mushroom:GetChildren()) do
					for  i, v2 in pairs(workspace.Enemy.Mushroom:GetChildren()) do
						if v.Name == "Zombie" and v.Humanoid.Health > 0 and v2.Name == "Zombie" and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
                           v2.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
						    v.HumanoidRootPart.CanCollide = false
                            v2.HumanoidRootPart.CanCollide = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * Method
						end
					end
				end
				elseif  workspace.Enemy.Mushroom.Boss.Value == true then
						for  i, v in pairs(workspace.Enemy.Mushroom:GetChildren()) do
						if v.Name == "Jack O Ripper" and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
						    v.HumanoidRootPart.CanCollide = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * Method
					end
				end
				elseif workspace.Ignorelist:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild("Key[JOR]") and workspace.Enemy.Mushroom.Boss.Value == false then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild("[JOR]").CFrame * CFrame.new(0,0,-5)
			end
            end)
        end
    end
end)

spawn(function()
    while wait() do
		if _G.AutoMRMS then 
            pcall(function()
			if not workspace.Ignorelist:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild("Key[MRMS]") and workspace.Enemy.ForestIsland.Boss.Value == false then
				for  i, v in pairs(workspace.Enemy.ForestIsland:GetChildren()) do
					for  i, v2 in pairs(workspace.Enemy.ForestIsland:GetChildren()) do
						if v.Name == "Samurai" and v.Humanoid.Health > 0 and v2.Name == "Samurai" and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
						    v.HumanoidRootPart.CanCollide = false
                            v2.HumanoidRootPart.CanCollide = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * Method
						end
					end
				end
				elseif  workspace.Enemy.ForestIsland.Boss.Value == true then
						for  i, v in pairs(workspace.Enemy.ForestIsland:GetChildren()) do
						if v.Name == "Muramasa" and v.Humanoid.Health > 0 and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
						    v.HumanoidRootPart.CanCollide = false
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * Method
					end
				end
				elseif workspace.Ignorelist:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild("Key[MRMS]") and workspace.Enemy.ForestIsland.Boss.Value == false then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild("[MRMS]").CFrame * CFrame.new(0,0,-5)
			end
            end)
        end
    end
end)


spawn(function()
   game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if  _G.AutoWarrior or _G.AutoKenshin or _G.AutoFarm_Level or _G.AutoAce or _G.AutoJor or _G.AutoMRMS or _G.AutoSwordMan then
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
        end
    end)
end) 
end)

local Tab2 = Window:NewTab("Micse")
local Mode = Tab2:NewSection("Micse")
--/ Auto Haki
Mode:NewToggle("Auto Haki", "Click On For Start And Off For Stop", function(state)
    if state then
        _G.AutoHaki = true
    else
       _G.AutoHaki = false
    end
end)


spawn(function ()
	while  wait(1) do
		if _G.AutoHaki then
			if game:GetService("ReplicatedStorage").PlayerStats:FindFirstChild(game:GetService("Players").LocalPlayer.Name).StatsFolder.Haki.Value == true and not game.Players.LocalPlayer.Character:FindFirstChild("Haki") then
             local A_1 = "Unhaki"
             local Event = game:GetService("Players").LocalPlayer.Backpack.Haki.Haki
             Event:FireServer(A_1)
             wait(1)
             local A_1 = "Haki"
             local Event = game:GetService("Players").LocalPlayer.Backpack.Haki.Haki
             Event:FireServer(A_1)
		end
		end
	end
end)
--/ New Sc
local Shop = Tab2:NewSection("Shop")

--/ Devel Fruit Random
Shop:NewButton("Tp to [NPC Rabdom Fruits]", "Click for Teleport Your to Target", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.NPC.BlackMerchant.HumanoidRootPart.CFrame * CFrame.new(0,0,-5)
end)

--/ Potion
Shop:NewButton("Tp to [NPC Potion Seller]", "Click for Teleport Your to Target", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.NPC.PotionMerchant.HumanoidRootPart.CFrame * CFrame.new(0,0,-5)
end)

--/ Katana
Shop:NewButton("Tp to [NPC Katana Seller]", "Click for Teleport Your to Target", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.NPC.SwordSeller.Torso.CFrame * CFrame.new(0,0,-5)
end)

--/ Dark
Shop:NewButton("Tp to [NPC Dark Scythe]", "Click for Teleport Your to Target", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.NPC.Dark.HumanoidRootPart.CFrame * CFrame.new(0,0,-5)
end)

--/ Scroll Merchant
Shop:NewButton("Tp to [NPC Scroll Merchant]", "Click for Teleport Your to Target", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.NPC:FindFirstChild("Scroll Merchant").HumanoidRootPart.CFrame * CFrame.new(0,0,-5)
end)

--/ Haki Seller
Shop:NewButton("Tp to [NPC Haki Seller]", "Click for Teleport Your to Target", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.NPC.HakiSeller.Torso.CFrame * CFrame.new(0,0,-5)
end)

--/ Quake
Shop:NewButton("Tp to [NPC Quake]", "Click for Teleport Your to Target", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.NPC.Quake.HumanoidRootPart.CFrame * CFrame.new(0,0,-5)
end)

--/ Random Color
Shop:NewButton("Tp to [NPC Random Color Haki]", "Click for Teleport Your to Target", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.NPC.HakiMerchant.HumanoidRootPart.CFrame * CFrame.new(0,0,-5)
end)

--/ Samurai
Shop:NewButton("Tp to [NPC Samurai]", "Click for Teleport Your to Target", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.NPC.Samurai.HumanoidRootPart.CFrame * CFrame.new(0,0,-5)
end)

--/ The rock
Shop:NewButton("Tp to [NPC TheRock]", "Click for Teleport Your to Target", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.NPC.TheRock.HumanoidRootPart.CFrame * CFrame.new(0,0,-5)
end)

--/ Ken
Shop:NewButton("Tp to [NPC KenHaki]", "Click for Teleport Your to Target", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.NPC.KenNPC.Torso1.CFrame * CFrame.new(0,0,-5)
end)

--/ Kaos Seller
Shop:NewButton("Tp to [NPC Kaos Seller]", "Click for Teleport Your to Target", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.NPC:FindFirstChild("Kaos Seller").Torso.CFrame * CFrame.new(0,0,-5)
end)

--/ Gui
local Gui = Tab2:NewSection("Gui")

--/ Inventory
Gui:NewButton("Open Inventory", "Click for Open Gui", function()
    game.Players.LocalPlayer.PlayerGui.Inventory.Frame.Visible = true
end)

--/ Potion
Gui:NewButton("Open Potion", "Click for Open Gui", function()
    game.Players.LocalPlayer.PlayerGui.Potion.Enabled = true
end)



--/ Fun
local Fun = Tab2:NewSection("Function")
Fun:NewSlider("Speed", "Slider Speed [Max 500]", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

--/ GrabTools
Fun:NewButton("Grab Tools", "Click For Teleport Tools To You", function()
   for  i, v in pairs(workspace:GetDescendants()) do
	   if v:IsA("Tool") then
		   v.Parent = game.Players.LocalPlayer.Backpack
	   end
   end
end)

--/ Auto MRMS
Fun:NewToggle("Auto Def With Warrior", "ToggleInfo", function(state)
    if state then
       _G.AutoDefWarrior = true
    else
       _G.AutoDefWarrior = false

	   setfflag("HumanoidParallelRemoveNoPhysics", "true")
        setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "true")
        game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(2)
    end
end)
