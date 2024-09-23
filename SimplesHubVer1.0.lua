--Basic SimplesHub

-- a literal baseplate.
if game.PlaceId == 4483381587 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "SimplesHub | a literal baseplate.", HidePremium = false, IntroText = "SimplesHub", SaveConfig = true, ConfigFolder = "SimplesHubConfig"})

-- Values
getgenv().infyield = true

-- Functions

function infyield()
	while getgenv().infyield == true do
		-- Load the Infinite Yield script
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end
end

-- Tabs

local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local CreditsTab = Window:MakeTab({
    Name = "Credits",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Buttons/Toggles
MiscTab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
		print("button pressed")
		infyield() -- Call the infyield function when the button is pressed
	end    
})

CreditsTab:AddLabel("Made by @xiessarkia/fish.lua on Discord.")

CreditsTab:AddButton({
    Name = "Copy Discord Invite",
    Callback = function()
        local function copyToClipboard(text)
            if setclipboard then
                setclipboard(text)
            else
                print("Clipboard functionality not supported")
            end
        end

        -- Call the function with the Discord invite link
        copyToClipboard("https://discord.gg/pdSnzmn5tu")
    end
})

end
----------------------------------------------------
-- Funky Friday
if game.PlaceId == 6447798030 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "SimplesHub | Funky Friday", HidePremium = false, IntroText = "SimplesHub", SaveConfig = true, ConfigFolder = "SimplesHubConfig"})

-- Values
getgenv().AutoPlayer = true

-- Functions

function AutoPlayer()
	while getgenv().AutoPlayer == true do
		-- Load the Funky Friday script
		loadstring(game:HttpGet("https://pastebin.com/raw/dcyuEgyK"))()
	end
end

-- Tabs

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local CreditsTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

MainTab:AddLabel("NOTE: AUTOPLAYER ONLY WORKS/RUNS ON CERTAIN EXECUTORS!")

-- Buttons/Toggles
MainTab:AddButton({
	Name = "Autoplayer (This isn't mine. -fish.lua)",
	Callback = function()
		print("button pressed")
		AutoPlayer() -- Call the AutoPlayer function when the button is pressed
	end
})

CreditsTab:AddLabel("SimplesHub made by @xiessarkia/fish.lua on Discord.")
CreditsTab:AddLabel("Credits to UniHub for the working autoplayer (Not mine.)")

CreditsTab:AddButton({
    Name = "Copy Discord Invite",
    Callback = function()
        local function copyToClipboard(text)
            if setclipboard then
                setclipboard(text)
            else
                print("Clipboard functionality not supported")
            end
        end

        -- Call the function with the Discord invite link
        copyToClipboard("https://discord.gg/pdSnzmn5tu")
    end
})

CreditsTab:AddButton({
    Name = "Copy UniHub's Discord Invite",
    Callback = function()
        local function copyToClipboard(text)
            if setclipboard then
                setclipboard(text)
            else
                print("Clipboard functionality not supported")
            end
        end

        -- Call the function with the Discord invite link
        copyToClipboard("https://discord.gg/44PHnFKxq5")
    end
})

end

----------------------------------------------------------------------------------------------------------------
-- Prison Life
if game.PlaceId == 155615604 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "SimplesHub | Prison Life", HidePremium = false, IntroText = "SimplesHub", SaveConfig = true, ConfigFolder = "SimplesHubConfig"})

    -- Values
    getgenv().DelDoors = true
    getgenv().Escape = true

    -- Functions
    function DelDoors()
        while getgenv().DelDoors == true do
            local doors = game.Workspace:FindFirstChild("Doors")
            if doors then
                doors:Destroy()
            end
            wait(1)
        end
    end

    function teleportToModel(modelName)
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local model = game.Workspace:FindFirstChild(modelName)

        if model and model:IsA("Model") then
            local targetPart = model:FindFirstChild("SpawnPoint") or model:FindFirstChildWhichIsA("BasePart")

            if targetPart then
                if not character.PrimaryPart then
                    character.PrimaryPart = character:FindFirstChild("HumanoidRootPart") or character:FindFirstChildWhichIsA("BasePart")
                end
                
                if character.PrimaryPart then
                    -- Teleport to the target part's CFrame with a small offset
                    character:SetPrimaryPartCFrame(targetPart.CFrame + Vector3.new(0, 3, 0))
                    print("Teleported to " .. modelName)
                else
                    print("Teleport failed: No suitable PrimaryPart found.")
                end
            else
                print("Teleport failed: Model does not have a SpawnPoint or BasePart.")
            end
        else
            print("Teleport failed: Model not found or not a Model.")
        end
    end

    function Escape()
        teleportToModel("Criminals Spawn")
    end

    function PoPos()
        teleportToModel("Prison_Guard_Outpost")
    end

    -- New Anti-Tase Function
    function AntiTase()
        local remoteFolder = game.Workspace:FindFirstChild("Remote")
        if remoteFolder then
            local tasePlayer = remoteFolder:FindFirstChild("tazePlayer")
            if tasePlayer then
                tasePlayer:Destroy() -- Remove the tazePlayer RemoteEvent
                print("Anti-Tase: tazePlayer RemoteEvent removed.")
            else
                print("Anti-Tase: tazePlayer RemoteEvent not found.")
            end
        else
            print("Anti-Tase: Remote folder not found.")
        end
    end

    -- Tabs
    local MainTab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local CreditsTab = Window:MakeTab({
        Name = "Credits",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- Sections
    local Section = MainTab:AddSection({ Name = "Client" })

    MainTab:AddButton({
        Name = "Delete Doors",
        Callback = function()
            print("button pressed")
            DelDoors()
        end
    })

    local Section = MainTab:AddSection({ Name = "Player" })

    MainTab:AddButton({
        Name = "Anti-Tase",
        Callback = function()
            print("button pressed")
            AntiTase()
        end
    })

    -- Services
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()

    local WalkSpeedSlider
    local JumpPowerSlider

    -- Function to update sliders when character respawns
    local function updateSliders()
        character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")
        
        -- Update WalkSpeed slider to reflect current value
        if WalkSpeedSlider then
            WalkSpeedSlider:Set(humanoid.WalkSpeed)
        end
        
        -- Update JumpPower slider to reflect current value
        if JumpPowerSlider then
            JumpPowerSlider:Set(humanoid.JumpPower)
        end
    end

    -- WalkSpeed Slider
    WalkSpeedSlider = MainTab:AddSlider({
        Name = "WalkSpeed",
        Min = 0,
        Max = 1480,
        Default = player.Character:WaitForChild("Humanoid").WalkSpeed,
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 1,
        ValueName = "Speed Value",
        Callback = function(Value)
            local humanoid = player.Character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = Value
            end
        end    
    })

    -- JumpPower Slider
    JumpPowerSlider = MainTab:AddSlider({
        Name = "JumpPower",
        Min = 0,
        Max = 1500,
        Default = player.Character:WaitForChild("Humanoid").JumpPower,
        Color = Color3.fromRGB(255, 255, 255),
        Increment = 1,
        ValueName = "Jump Power",
        Callback = function(Value)
            local humanoid = player.Character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid.JumpPower = Value
            end
        end    
    })

    -- Connect CharacterAdded event to reset sliders after respawn
    player.CharacterAdded:Connect(function()
        wait(1)  -- Allow the character to fully load
        updateSliders()
    end)

    -- Initial setup when the script is first run
    updateSliders()

    local Section = MainTab:AddSection({ Name = "Teleports" })

    MainTab:AddButton({
        Name = "Criminal Base/Spawn",
        Callback = function()
            print("button pressed")
            Escape()
        end
    })

    MainTab:AddButton({
        Name = "Guards Outpost/Spawn",
        Callback = function()
            print("button pressed")
            PoPos()
        end
    })

    CreditsTab:AddLabel("SimplesHub made by @xiessarkia/fish.lua on Discord.")

    CreditsTab:AddButton({
        Name = "Copy Discord Invite",
        Callback = function()
            local function copyToClipboard(text)
                if setclipboard then
                    setclipboard(text)
                else
                    print("Clipboard functionality not supported")
                end
            end

            -- Call the function with the Discord invite link
            copyToClipboard("https://discord.gg/pdSnzmn5tu")
        end
    })

end

--------------------------------------------------------------------------------
--TOH
if game.PlaceId == 1962086868 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "SimplesHub | Tower of Hell", HidePremium = false, IntroText = "SimplesHub", SaveConfig = true, ConfigFolder = "SimplesHubConfig"})

-- Values
getgenv().Invincibility = true
getgenv().GiveAll = true
getgenv().infyield = true

-- Functions


function GiveAll()
    local player = game.Players.LocalPlayer
    local backpack = player:WaitForChild("Backpack")

    while getgenv().GiveAll == true do
        -- Look for 'Gear' folder in ReplicatedStorage
        local gearFolder = game:GetService("ReplicatedStorage"):FindFirstChild("Gear")

        if gearFolder then
            -- Iterate through all items in the 'Gear' folder
            for _, item in pairs(gearFolder:GetChildren()) do
                if item:IsA("Tool") then
                    -- Clone the tool and give it to the player's backpack
                    local toolClone = item:Clone()
                    toolClone.Parent = backpack
                end
            end
        end
        
        -- Wait before checking again to avoid excessive processing
        wait(1)
    end
end

function Invincibility()
    local player = game.Players.LocalPlayer

    while getgenv().Invincibility == true do
        -- Check if the player's character exists in Workspace
        local character = game.Workspace:FindFirstChild(player.Name)
        
        if character then
            -- Find and delete parts named 'hitbox'
            for _, part in pairs(character:GetChildren()) do
                if part:IsA("BasePart") and part.Name == "hitbox" then
                    part:Destroy()  -- Delete the 'hitbox' part to make the player invincible
                end
            end
        end
        
        -- Wait before checking again to avoid excessive processing
        wait(1)
    end
end

function infyield()
	while getgenv().infyield == true do
		-- Load the Infinite Yield script
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end
end

-- Tabs
local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = MainTab:AddSection({
	Name = "Player"
})

local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local CreditsTab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- Buttons/Toggles/Slides

MainTab:AddButton({
	Name = "Grab all tools (laggy)",
	Callback = function()
		print("button pressed")
		GiveAll() -- giveall tools
	end    
})

MainTab:AddButton({
	Name = "Invincibility",
	Callback = function()
		print("button pressed")
		Invincibility() -- Invincibility
	end    
})

MiscTab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
		print("button pressed")
		infyield() -- Call the infyield function when the button is pressed
	end    
})

CreditsTab:AddLabel("SimplesHub made by @xiessarkia/fish.lua on Discord.")

CreditsTab:AddButton({
    Name = "Copy Discord Invite",
    Callback = function()
        local function copyToClipboard(text)
            if setclipboard then
                setclipboard(text)
            else
                print("Clipboard functionality not supported")
            end
        end

        -- Call the function with the Discord invite link
        copyToClipboard("https://discord.gg/pdSnzmn5tu")
    end
})

end
-----------------------------------------------------------------
-- Arsenal
if game.PlaceId == 286090429 then
    local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
    local Window = OrionLib:MakeWindow({
        Name = "SimplesHub | Arsenal",
        HidePremium = false,
        IntroText = "SimplesHub",
        SaveConfig = true,
        ConfigFolder = "SimplesHubConfig"
    })

    -- Services
    local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    local Camera = workspace.CurrentCamera

    -- Values
    getgenv().aimbot = false
    getgenv().infyield = true
    getgenv().espBoxes = false
    getgenv().espTracers = false
    getgenv().espNametag = false
    getgenv().espDistance = false
    getgenv().teamCheck = "True"
    getgenv().aimbotEnabled = false
    local smoothness = 0.15
    local verticalAngleLimit = -0.3
    local targetLockDuration = 0.5
    local currentTarget = nil
    local targetLockTimer = 0
    local espColor = Color3.fromRGB(255, 0, 0) -- Default ESP color

    -- ESP Box, Tracer, Nametag, and Distance Storage
    local boxes = {}
    local tracers = {}
    local nametags = {}
    local distances = {}

    -- Functions

    function infyield()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end

    -- Check if target is below the camera
    local function isBelowCamera(targetPosition)
        local cameraPosition = Camera.CFrame.Position
        local direction = (targetPosition - cameraPosition).unit
     local upVector = Camera.CFrame.UpVector
        return direction:Dot(upVector) < verticalAngleLimit
    end


    -- Global variable to store wallcheck state
    getgenv().wallCheck = "False" -- Default to False

    -- Modify isVisible function to support wallcheck
    local function isVisible(targetPart)
        if getgenv().wallCheck == "True" then
            local origin = Camera.CFrame.Position
            local direction = (targetPart.Position - origin).unit * (targetPart.Position - origin).magnitude
            local ray = Ray.new(origin, direction)

            local hitPart, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, {Players.LocalPlayer.Character, targetPart.Parent})

            -- If hitPart is not nil, then the target is obstructed, hence not visible
            return hitPart == nil
        else
            -- If wallcheck is off, always consider the target as visible
            return true
        end
    end


    local function getClosestPlayer()
        local player = Players.LocalPlayer
        local closestPlayer = nil
        local closestDistance = math.huge
        local highestVisibility = false
    
        local potentialTargets = {}
    
        -- Collect all potential targets (both visible and behind structures if necessary)
        for _, target in pairs(Players:GetPlayers()) do
            if target ~= player and target.Character and target.Character:FindFirstChild("Head") then
                local targetHead = target.Character.Head
                local distance = (targetHead.Position - Camera.CFrame.Position).magnitude
                local lockOn = (getgenv().teamCheck == "False") or (target.Team ~= player.Team)
                local visible = isVisible(targetHead) -- Now respects wallcheck
    
                -- Check if the target is below the camera using isBelowCamera
                local belowCamera = isBelowCamera(targetHead.Position)
    
                if lockOn and not belowCamera then -- Add condition to exclude targets below the camera
                    table.insert(potentialTargets, {
                        player = target,
                        distance = distance,
                        visible = visible
                    })
                end
            end
        end
    
        -- First, try to find the closest visible player
        for _, targetInfo in pairs(potentialTargets) do
            if targetInfo.visible then
                if targetInfo.distance < closestDistance then
                    closestDistance = targetInfo.distance
                    closestPlayer = targetInfo.player
                    highestVisibility = true
                end
            end
        end
    
        -- If no visible players were found and wallcheck is off, fallback to the closest player behind structures
        if not highestVisibility and getgenv().wallCheck == "False" then
            for _, targetInfo in pairs(potentialTargets) do
                if targetInfo.distance < closestDistance then
                    closestDistance = targetInfo.distance
                    closestPlayer = targetInfo.player
                end
            end
        end
    
        return closestPlayer
    end
    

    -- Variable to store the RenderStepped connection
    local aimbotConnection = nil

    local function startAimbot()
        if aimbotConnection then
            aimbotConnection:Disconnect() -- Disconnect the existing connection before creating a new one
        end

        aimbotConnection = RunService.RenderStepped:Connect(function(deltaTime)
            if getgenv().aimbotEnabled then
                targetLockTimer = targetLockTimer + deltaTime

                -- Find the closest valid target
                if not currentTarget or targetLockTimer > targetLockDuration or not currentTarget.Character or not currentTarget.Character:FindFirstChild("Head") then
                    currentTarget = getClosestPlayer()
                    targetLockTimer = 0
                end

                -- Ensure the target is visible and not obstructed
                if currentTarget and currentTarget.Character and currentTarget.Character:FindFirstChild("Head") then
                    local targetPosition = currentTarget.Character.Head.Position
                    local distance = (Camera.CFrame.Position - targetPosition).magnitude

                    -- Adjust smoothness based on distance to improve accuracy
                    local adjustedSmoothness = math.clamp(smoothness + (distance / 300), 0.1, 0.4)

                    -- If the target is not visible, attempt to find a new target if there are no visible players
                    if not isVisible(currentTarget.Character.Head) then
                        local anyVisible = false
                        for _, target in pairs(Players:GetPlayers()) do
                            if target ~= Players.LocalPlayer and target.Character and target.Character:FindFirstChild("Head") then
                                if isVisible(target.Character.Head) then
                                    anyVisible = true
                                    break
                                end
                            end
                        end

                        -- If no visible players, lock onto the current target even if behind structures
                        if not anyVisible then
                            Camera.CFrame = Camera.CFrame:Lerp(CFrame.new(Camera.CFrame.Position, targetPosition), adjustedSmoothness)
                        else
                            -- If the current target is not visible and there are visible players, clear the current target
                            currentTarget = nil
                        end
                    else
                        -- Smoothly adjust the camera towards the target
                        Camera.CFrame = Camera.CFrame:Lerp(CFrame.new(Camera.CFrame.Position, targetPosition), adjustedSmoothness)
                    end
                end
            end
        end)
    end

    function toggleAimbot()
        getgenv().aimbotEnabled = not getgenv().aimbotEnabled
        if getgenv().aimbotEnabled then
            startAimbot()
        else
            if aimbotConnection then
                aimbotConnection:Disconnect() -- Disconnect the connection when aimbot is disabled
                aimbotConnection = nil
            end
        end
    end

-- ESP Box, Tracer, Nametag, and Distance Functionality
local function updateESP()
    for _, target in pairs(Players:GetPlayers()) do
        if target ~= Players.LocalPlayer and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
            -- Check if ESP should be displayed for this player based on team check
            local displayESP = (getgenv().teamCheck == "False") or (target.Team ~= Players.LocalPlayer.Team)
            
            -- Calculate the distance to the player
            local distance = (target.Character.HumanoidRootPart.Position - Camera.CFrame.Position).magnitude

            -- Check if the player is within the distance limit
            local withinDistance = distance <= 265

            -- Initialize ESP elements if not already created and within distance
            if getgenv().espBoxes and displayESP and withinDistance and not boxes[target] then
                local box = Drawing.new("Square")
                box.Color = espColor
                box.Thickness = 2
                box.Filled = false
                boxes[target] = box
            end

            if getgenv().espTracers and displayESP and withinDistance and not tracers[target] then
                local tracer = Drawing.new("Line")
                tracer.Color = espColor
                tracer.Thickness = 1.5
                tracers[target] = tracer
            end

            if getgenv().espNametag and displayESP and withinDistance and not nametags[target] then
                local nametag = Drawing.new("Text")
                nametag.Color = espColor
                nametag.Size = 15
                nametag.Center = true
                nametags[target] = nametag
            end

            if getgenv().espDistance and displayESP and withinDistance and not distances[target] then
                local distanceText = Drawing.new("Text")
                distanceText.Color = espColor
                distanceText.Size = 15
                distanceText.Center = true
                distances[target] = distanceText
            end

            -- Update existing ESP elements if within distance
            local box = boxes[target]
            local tracer = tracers[target]
            local nametag = nametags[target]
            local distanceText = distances[target]
            local rootPart = target.Character:FindFirstChild("HumanoidRootPart")

            if rootPart then
                local rootPos, onScreen = Camera:WorldToViewportPoint(rootPart.Position)

                if onScreen and withinDistance then
                    local headPos = Camera:WorldToViewportPoint(rootPart.Position + Vector3.new(0, 3, 0))
                    local legPos = Camera:WorldToViewportPoint(rootPart.Position - Vector3.new(0, 3, 0))

                    local height = math.abs(headPos.Y - legPos.Y)
                    local width = height * 0.6

                    if getgenv().espBoxes and displayESP then
                        box.Size = Vector2.new(width, height)
                        box.Position = Vector2.new(rootPos.X - box.Size.X / 2, rootPos.Y - box.Size.Y / 2)
                        box.Visible = true
                    else
                        if box then box.Visible = false end
                    end

                    if getgenv().espTracers and displayESP then
                        tracer.From = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
                        tracer.To = Vector2.new(rootPos.X, rootPos.Y)
                        tracer.Visible = true
                    else
                        if tracer then tracer.Visible = false end
                    end

                    if getgenv().espNametag and displayESP then
                        nametag.Text = target.Name
                        nametag.Position = Vector2.new(rootPos.X, rootPos.Y - height / 2 - 15)
                        nametag.Visible = true
                    else
                        if nametag then nametag.Visible = false end
                    end

                    if getgenv().espDistance and displayESP then
                        local playerDistance = math.floor(distance)
                        distanceText.Text = tostring(playerDistance) .. " studs"
                        distanceText.Position = Vector2.new(rootPos.X, rootPos.Y + height / 2 + 10)
                        distanceText.Visible = true
                    else
                        if distanceText then distanceText.Visible = false end
                    end
                else
                    if box then box.Visible = false end
                    if tracer then tracer.Visible = false end
                    if nametag then nametag.Visible = false end
                    if distanceText then distanceText.Visible = false end
                end
            end
        end
    end
end

    RunService.RenderStepped:Connect(function()
        if getgenv().espBoxes or getgenv().espTracers or getgenv().espNametag or getgenv().espDistance then
            updateESP()
        end
    end)

        -- Refresh Visuals function
    local function refreshVisuals()
        -- Hide all ESP elements
        for _, box in pairs(boxes) do
            box.Visible = false
        end
        for _, tracer in pairs(tracers) do
            tracer.Visible = false
        end
        for _, nametag in pairs(nametags) do
            nametag.Visible = false
        end
        for _, distanceText in pairs(distances) do
            distanceText.Visible = false
     end

    -- Clear the existing ESP elements
    boxes = {}
    tracers = {}
    nametags = {}
    distances = {}

    -- Reapply the ESP elements based on the current settings, using the new color
    updateESP()  -- Make sure `updateESP` re-draws everything with `espColor`
end

    -- Tabs
    local MainTab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local VisualsTab = Window:MakeTab({
        Name = "Visuals",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local Section = MainTab:AddSection({
        Name = "Cheats"
    })

    local MiscTab = Window:MakeTab({
        Name = "Misc",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local CreditsTab = Window:MakeTab({
        Name = "Credits",
                Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- Buttons/Toggles
    MainTab:AddToggle({
        Name = "Aimbot (E)",
        Default = false,
        Callback = function(Value)
            getgenv().aimbot = Value
            if getgenv().aimbot then
                toggleAimbot()
            else
                getgenv().aimbotEnabled = false
            end
        end
    })

    MainTab:AddDropdown({
        Name = "TeamCheck",
        Default = "True",
        Options = {"True", "False"},
        Callback = function(Value)
            getgenv().teamCheck = Value
        end    
    })

    -- Add a wallCheck dropdown and set the global value accordingly
    MainTab:AddDropdown({
        Name = "WallCheck",
        Default = "False",
        Options = {"False", "True"},
        Callback = function(Value)
            getgenv().wallCheck = Value
        end    
    })

    local Section = VisualsTab:AddSection({
        Name = "Visuals/ESP"
    })

    VisualsTab:AddDropdown({
        Name = "ESP TeamCheck",
        Default = "True",
        Options = {"True", "False"},
        Callback = function(Value)
            getgenv().teamCheck = Value
        end    
    })

    VisualsTab:AddToggle({
        Name = "Boxes",
        Default = false,
        Callback = function(Value)
            getgenv().espBoxes = Value
            if not Value then
                updateESP()
            end
        end
    })

    VisualsTab:AddToggle({
        Name = "Tracers",
        Default = false,
        Callback = function(Value)
            getgenv().espTracers = Value
            if not Value then
                updateESP()
            end
        end
    })

    VisualsTab:AddToggle({
        Name = "Nametags",
        Default = false,
        Callback = function(Value)
            getgenv().espNametag = Value
            if not Value then
                updateESP()
            end
        end
    })

    VisualsTab:AddToggle({
        Name = "Distance",
        Default = false,
        Callback = function(Value)
            getgenv().espDistance = Value
            if not Value then
                updateESP()
            end
        end
    })

    -- Add the button callback to refresh visuals
    VisualsTab:AddButton({
        Name = "Refresh Visuals",
        Callback = function()
            refreshVisuals()
        end
    })

    local debounce = false
    local debounceTime = 0.1 -- Adjust the delay time as needed (0.1 seconds in this case)
    
    VisualsTab:AddColorpicker({
        Name = "Visuals Color",
        Default = Color3.fromRGB(255, 0, 0),
        Callback = function(Value)
            espColor = Value -- Update espColor with selected color
    
            -- Debounce logic
            if not debounce then
                debounce = true
                task.delay(debounceTime, function()
                    refreshVisuals() -- Refresh the visuals after a small delay
                    debounce = false
                end)
            end
        end
    })

    MiscTab:AddButton({
        Name = "Infinite Yield",
        Callback = function()
            infyield()
        end
    })

    CreditsTab:AddLabel("Made by @xiessarkia/fish.lua on Discord.")

    CreditsTab:AddButton({
        Name = "Copy Discord Invite",
        Callback = function()
            local function copyToClipboard(text)
                if setclipboard then
                    setclipboard(text)
                else
                    print("Clipboard functionality not supported")
                end
            end

            -- Call the function with the Discord invite link
            copyToClipboard("https://discord.gg/pdSnzmn5tu")
        end
    })

    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.E and getgenv().aimbot then
            toggleAimbot()
        end
    end)

end
-------------------------------------------------------------------------------
-- Natural Disasters Survival
if game.PlaceId == 189707 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "SimplesHub | Natural Disaster Survival", HidePremium = false, IntroText = "SimplesHub", SaveConfig = true, ConfigFolder = "SimplesHubConfig"})

-- Values
getgenv().toLobby = true
getgenv().blackHoleV2 = true
getgenv().loadSuperRingParts = true
getgenv().loadSoftPartFling = true
getgenv().bangUI = true
getgenv().TelekenesisTool = true
getgenv().EnergizeRemake = true
getgenv().NamelessAdmin = true
getgenv().infyield = true

-- Functions
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")
local originalPosition = humanoidRootPart.Position

function toLobby()
    if getgenv().toLobby == true then
        local targetPosition = Vector3.new(-281, 180, 342)

        -- Reassign the character, humanoid, and root part after reset
        local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait() -- Wait for the new character
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart") -- Wait for the new HumanoidRootPart
        local humanoid = character:WaitForChild("Humanoid") -- Wait for the new Humanoid

        local tweenInfo = TweenInfo.new(
            0.55, -- Time
            Enum.EasingStyle.Quad, -- Easing style
            Enum.EasingDirection.Out, -- Direction
            0, -- Repeat count
            false, -- Reverses
            0 -- Delay time
        )

        local goal = {CFrame = CFrame.new(targetPosition)}
        local tween = TweenService:Create(humanoidRootPart, tweenInfo, goal)

        local function toggleNoclip(state)
            for _, part in pairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CanCollide = not state
                end
            end
        end

        local function preventFallDamage(state)
            if state then
                humanoid:ChangeState(Enum.HumanoidStateType.PlatformStanding)
            else
                humanoid:ChangeState(Enum.HumanoidStateType.GettingUp)
                humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
            end
        end

        local function toggleAnchor(state)
            humanoidRootPart.Anchored = state
        end

        local function isInAir(position)
            local rayOrigin = position
            local rayDirection = Vector3.new(0, -10, 0) -- Cast downwards
            local raycastParams = RaycastParams.new()
            raycastParams.FilterDescendantsInstances = {character}
            raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

            local result = workspace:Raycast(rayOrigin, rayDirection, raycastParams)
            return result == nil
        end

        local function returnToOriginalPosition()
            local originalPosition = humanoidRootPart.Position -- Capture original position before teleport
            local returnGoal = {CFrame = CFrame.new(originalPosition)}
            local returnTween = TweenService:Create(humanoidRootPart, tweenInfo, returnGoal)

            toggleNoclip(true)
            toggleAnchor(false)
            preventFallDamage(true)
            returnTween:Play()

            returnTween.Completed:Connect(function()
                toggleNoclip(false)
                preventFallDamage(false)
                print("Returned to original position.")
            end)
        end

        toggleNoclip(true)
        preventFallDamage(true)

        if isInAir(targetPosition) then
            print("Target position is in the air.")
            tween:Play()

            tween.Completed:Connect(function()
                toggleAnchor(true)
                wait(3)
                returnToOriginalPosition()
            end)
        else
            print("Ground detected.")
            tween:Play()

            tween.Completed:Connect(function()
                toggleNoclip(false)
                preventFallDamage(false)
                print("TP success.")
            end)
        end
    end
end


    function blackHoleV2()
        if getgenv().blackHoleV2 == true then
            local Players = game:GetService("Players")
            local RunService = game:GetService("RunService")
            local LocalPlayer = Players.LocalPlayer
            local Workspace = game:GetService("Workspace")
            local UserInputService = game:GetService("UserInputService")
            
            local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
            
            local Folder = Instance.new("Folder", Workspace)
            local Part = Instance.new("Part", Folder)
            local Attachment1 = Instance.new("Attachment", Part)
            Part.Anchored = true
            Part.CanCollide = false
            Part.Transparency = 1
            
            if not getgenv().Network then
                getgenv().Network = {
                    BaseParts = {},
                    Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)
                }
            
                Network.RetainPart = function(Part)
                    if typeof(Part) == "Instance" and Part:IsA("BasePart") and Part:IsDescendantOf(Workspace) then
                        table.insert(Network.BaseParts, Part)
                        Part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
                        Part.CanCollide = false
                    end
                end
            
                local function EnablePartControl()
                    LocalPlayer.ReplicationFocus = Workspace
                    RunService.Heartbeat:Connect(function()
                        sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
                        for _, Part in pairs(Network.BaseParts) do
                            if Part:IsDescendantOf(Workspace) then
                                Part.Velocity = Network.Velocity
                            end
                        end
                    end)
                end
            
                EnablePartControl()
            end
            
            local function ForcePart(v)
                if v:IsA("Part") and not v.Anchored and not v.Parent:FindFirstChild("Humanoid") and not v.Parent:FindFirstChild("Head") and v.Name ~= "Handle" then
                    for _, x in next, v:GetChildren() do
                        if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                            x:Destroy()
                        end
                    end
                    if v:FindFirstChild("Attachment") then
                        v:FindFirstChild("Attachment"):Destroy()
                    end
                    if v:FindFirstChild("AlignPosition") then
                        v:FindFirstChild("AlignPosition"):Destroy()
                    end
                    if v:FindFirstChild("Torque") then
                        v:FindFirstChild("Torque"):Destroy()
                    end
                    v.CanCollide = false
                    local Torque = Instance.new("Torque", v)
                    Torque.Torque = Vector3.new(100000, 100000, 100000)
                    local AlignPosition = Instance.new("AlignPosition", v)
                    local Attachment2 = Instance.new("Attachment", v)
                    Torque.Attachment0 = Attachment2
                    AlignPosition.MaxForce = 9999999999999999
                    AlignPosition.MaxVelocity = math.huge
                    AlignPosition.Responsiveness = 200
                    AlignPosition.Attachment0 = Attachment2
                    AlignPosition.Attachment1 = Attachment1
                end
            end
            
            local blackHoleActive = true
            
            local function toggleBlackHole()
                blackHoleActive = not blackHoleActive
                if blackHoleActive then
                    for _, v in next, Workspace:GetDescendants() do
                        ForcePart(v)
                    end
            
                    Workspace.DescendantAdded:Connect(function(v)
                        if blackHoleActive then
                            ForcePart(v)
                        end
                    end)
            
                    spawn(function()
                        while blackHoleActive and RunService.RenderStepped:Wait() do
                            Attachment1.WorldCFrame = humanoidRootPart.CFrame
                        end
                    end)
                end
            end
            
            local function createControlButton()
                local screenGui = Instance.new("ScreenGui")
                local frame = Instance.new("Frame")
                local topBar = Instance.new("Frame")
                local button = Instance.new("TextButton")
                local minimizeButton = Instance.new("TextButton")
                local label = Instance.new("TextLabel")
            
                screenGui.Name = "BlackHoleControlGUI"
                screenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")
            
                frame.Name = "ControlFrame"
                frame.Size = UDim2.new(0, 300, 0, 150)
                frame.Position = UDim2.new(0.5, -150, 0.5, -75)
                frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                frame.BackgroundTransparency = 0.7
                frame.BorderSizePixel = 0
                frame.ClipsDescendants = true
                frame.Parent = screenGui
            
                topBar.Name = "TopBar"
                topBar.Size = UDim2.new(1, 0, 0, 30)
                topBar.Position = UDim2.new(0, 0, 0, 0)
                topBar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                topBar.BackgroundTransparency = 0.8
                topBar.Parent = frame
            
                label.Name = "TitleLabel"
                label.Size = UDim2.new(1, -70, 1, 0)
                label.Position = UDim2.new(0, 10, 0, 0)
                label.Text = "Black Hole Control"
                label.TextColor3 = Color3.fromRGB(255, 255, 255)
                label.TextScaled = true
                label.BackgroundTransparency = 1
                label.Parent = topBar
            
                minimizeButton.Name = "MinimizeButton"
                minimizeButton.Size = UDim2.new(0, 30, 0, 30)
                minimizeButton.Position = UDim2.new(1, -40, 0, 0)
                minimizeButton.Text = "-"
                minimizeButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
                minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
                minimizeButton.TextScaled = true
                minimizeButton.Parent = topBar
            
                button.Name = "ToggleBlackHoleButton"
                button.Size = UDim2.new(0, 250, 0, 50)
                button.Position = UDim2.new(0.5, -125, 0.5, -25)
                button.Text = "Deactivate Blackhole"
                button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                button.TextColor3 = Color3.fromRGB(255, 255, 255)
                button.TextScaled = true
                button.Parent = frame
            
                button.MouseButton1Click:Connect(function()
                    toggleBlackHole()
                    if blackHoleActive then
                        button.Text = "Deactivate Blackhole"
                        button.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
                    else
                        button.Text = "Activate Blackhole"
                        button.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
                    end
                end)
            
                minimizeButton.MouseButton1Click:Connect(function()
                    frame.Visible = false
                    local notification = Instance.new("ScreenGui")
                    local notifyFrame = Instance.new("Frame")
                    local notifyLabel = Instance.new("TextLabel")
            
                    notification.Name = "NotificationGUI"
                    notification.Parent = LocalPlayer:WaitForChild("PlayerGui")
            
                    notifyFrame.Name = "NotifyFrame"
                    notifyFrame.Size = UDim2.new(0, 200, 0, 50)
                    notifyFrame.Position = UDim2.new(0.5, -100, 0.5, -25)
                    notifyFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                    notifyFrame.BackgroundTransparency = 0.8
                    notifyFrame.BorderSizePixel = 0
                    notifyFrame.Parent = notification
            
                    notifyLabel.Name = "NotifyLabel"
                    notifyLabel.Size = UDim2.new(1, 0, 1, 0)
                    notifyLabel.Text = "UI Hidden! Press Ctrl + K to Unhide"
                    notifyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    notifyLabel.TextScaled = true
                    notifyLabel.BackgroundTransparency = 1
                    notifyLabel.Parent = notifyFrame
            
                    UserInputService.InputBegan:Connect(function(input, gameProcessed)
                        if not gameProcessed and input.KeyCode == Enum.KeyCode.K and UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                            frame.Visible = true
                            notification:Destroy()
                        end
                    end)
                end)
            
                local dragging
                local dragInput
                local dragStart
                local startPos
            
                local function update(input)
                    local delta = input.Position - dragStart
                    frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
                end
            
                topBar.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        dragging = true
                        dragStart = input.Position
                        startPos = frame.Position
            
                        input.Changed:Connect(function()
                            if input.UserInputState == Enum.UserInputState.End then
                                dragging = false
                            end
                        end)
                    end
                end)
            
                topBar.InputChanged:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.MouseMovement then
                        dragInput = input
                    end
                end)
            
                UserInputService.InputChanged:Connect(function(input)
                    if input == dragInput and dragging then
                        update(input)
                    end
                end)
            
                local uiStroke = Instance.new("UIStroke")
                uiStroke.Thickness = 2
                uiStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                uiStroke.Color = Color3.fromRGB(255, 255, 255)
                uiStroke.Parent = frame
            end
            
            createControlButton()      
    end
end

    function loadSuperRingParts()
        if getgenv().loadSuperRingParts then
            loadstring(game:HttpGet('https://pastefy.app/t0djamGi/raw'))()
        end
    end

    function loadSoftPartFling()
        if getgenv().loadSoftPartFling == true then
        -- Config
        local SIMULATION_BODY_LIMIT = 100
        local BODY_FREEING_DELAY = 5
        local COLLISION_FREEING_DELAY = 5
        local DEBOUNCE_DELAY = 100
        local SEARCH_MECHANISMS = false
    
        -- Functions
        local inf = math.huge
        local density = 30
        local weight = 30
        local height = 100
        local tqp = 25000
        local app = 25000
        local low = 0.0001
    
        local Player = game:GetService("Players").LocalPlayer
    
        local function getChar()
            return Player.Character
        end
        local function lightPart(part)
            if not part:IsA("BasePart") then return end
            part.CustomPhysicalProperties = PhysicalProperties.new(low, low, low, low, low)
        end
        local function heavyPart(part)
            if not part:IsA("BasePart") then return end
            part.CollisionGroup = "INT1"
            part.CustomPhysicalProperties = PhysicalProperties.new(density, 0, 0, weight, weight)
        end
        local function getMechanism(part, limited)
            if part.Anchored then return {part} end
            if not SEARCH_MECHANISMS then return {part} end
    
            local mechanism = {part}
    
            local function add(target)
                for _, v in mechanism do
                    if v == target then return end
                end
                table.insert(mechanism, target)
            end
            
            for _, v in part:GetJoints() do
                if v:IsA("JointInstance") then
                    if v.Part0 then add(v.Part0.Parent) end
                    if v.Part1 then add(v.Part1.Parent) end
                elseif v:IsA("Constraint") then
                    if v.Attachment0 then add(v.Attachment0.Parent) end
                    if v.Attachment1 then add(v.Attachment1.Parent) end
                end
    
                if type(limited) == "number" then
                    if #mechanism >= limited then
                        return mechanism
                    end
                end
            end
            for _, v in part:GetConnectedParts(true) do
                add(v)
    
                if type(limited) == "number" then
                    if #mechanism >= limited then
                        return mechanism
                    end
                end
            end
    
            return mechanism
        end
        local NetworkAccess = coroutine.create(function()
            settings().Physics.AllowSleep = false
            while game:GetService("RunService").RenderStepped:Wait() do
                Player.MaximumSimulationRadius = math.pow(math.huge, math.huge)
            end
        end)
        local function touchy(part)
            if part.Anchored or part:HasTag("Debounce") then return end
            part:AddTag("Debounce")
            
            local mechanism = getMechanism(part, SIMULATION_BODY_LIMIT)
    
            for _, v in mechanism do
                task.spawn(function()
                    local Attachment1 = getChar().HumanoidRootPart.RootAttachment
    
                    local cc = part.CanCollide
                    part.CollisionGroup = "INT2"
                    part.CanCollide = false
    
                    local Torque = Instance.new("Torque", part)
                    Torque.Torque = Vector3.new(tqp, tqp, tqp)
    
                    local AlignPosition = Instance.new("AlignPosition", v)
                    local Attachment2 = Instance.new("Attachment", v)
                    Torque.Attachment0 = Attachment2
                    AlignPosition.MaxForce = app
                    AlignPosition.MaxVelocity = math.huge
                    AlignPosition.Responsiveness = 200
                    AlignPosition.Attachment0 = Attachment2
                    AlignPosition.Attachment1 = Attachment1
    
                    task.wait(BODY_FREEING_DELAY)
                    Torque:Destroy()
                    AlignPosition:Destroy()
    
                    task.wait(COLLISION_FREEING_DELAY)
                    part.CanCollide = cc
    
                    task.wait(DEBOUNCE_DELAY)
                    part:RemoveTag("Debounce")
                end)
            end
        end
    
        -- Setup
        for _, v in game:GetDescendants() do
            if not v:IsDescendantOf(getChar()) then
                lightPart(v)
            end
        end
        game.DescendantAdded:Connect(function(v)
            if not v:IsDescendantOf(getChar()) then
                lightPart(v)
            end
        end)
    
        for _, v in getChar():GetDescendants() do
            heavyPart(v)
            if v:IsA("BasePart") then
                v.Touched:Connect(touchy)
            end
        end
        Player.CharacterAdded:Connect(function(char)
            for _, v in char:GetDescendants() do
                heavyPart(v)
                if v:IsA("BasePart") then
                    v.Touched:Connect(touchy)
                end
            end
        end)
        coroutine.resume(NetworkAccess)
        if not setsimulationradius then
            print("Soft part fling may not work correctly! (Missing setsimulationradius)")
        end
        print("SOFT PART FLING Loaded!")
    end
end

function BangUI()
    if getgenv().bangUI == true then
        local TweenService = game:GetService("TweenService")
        local CompactGUI = Instance.new("ScreenGui")
        local MainFrame = Instance.new("Frame")
        local UICornerMain = Instance.new("UICorner")
        local TopBar = Instance.new("Frame")
        local UICornerTopBar = Instance.new("UICorner")
        local MinimizeButton = Instance.new("TextButton")
        local UserInputBox = Instance.new("TextBox")
        local UICornerUserInput = Instance.new("UICorner")
        local PerformActionButton = Instance.new("TextButton")
        local UICornerButton = Instance.new("UICorner")
        local TitleLabel = Instance.new("TextLabel")
        local StatusLabel = Instance.new("TextLabel")
        local AvatarImage = Instance.new("ImageLabel")
        local UICornerAvatar = Instance.new("UICorner")

        CompactGUI.Name = "CompactGUI"
        CompactGUI.Parent = game.CoreGui

        MainFrame.Name = "MainFrame"
        MainFrame.Parent = CompactGUI
        MainFrame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
        MainFrame.BorderSizePixel = 0
        MainFrame.Position = UDim2.new(0.4, 0, 0.5, 0)
        MainFrame.Size = UDim2.new(0, 300, 0, 150)
        MainFrame.Draggable = true
        MainFrame.Active = true
        MainFrame.ClipsDescendants = true

        UICornerMain.CornerRadius = UDim.new(0, 12)
        UICornerMain.Parent = MainFrame

        TopBar.Name = "TopBar"
        TopBar.Parent = MainFrame
        TopBar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        TopBar.BorderSizePixel = 0
        TopBar.Size = UDim2.new(1, 0, 0, 30)

        UICornerTopBar.CornerRadius = UDim.new(0, 12)
        UICornerTopBar.Parent = TopBar

        TitleLabel.Name = "TitleLabel"
        TitleLabel.Parent = TopBar
        TitleLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        TitleLabel.BorderSizePixel = 0
        TitleLabel.Size = UDim2.new(0.85, 0, 1, 0)
        TitleLabel.Font = Enum.Font.SourceSansBold
        TitleLabel.Text = "Simples Bang | discord.gg/pdSnzmn5tu"
        TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        TitleLabel.TextSize = 16.5

        MinimizeButton.Name = "MinimizeButton"
        MinimizeButton.Parent = TopBar
        MinimizeButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        MinimizeButton.BorderSizePixel = 0
        MinimizeButton.Position = UDim2.new(0.85, 0, 0, 0)
        MinimizeButton.Size = UDim2.new(0.15, 0, 1, 0)
        MinimizeButton.Font = Enum.Font.SourceSansBold
        MinimizeButton.Text = "-" 
        MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        MinimizeButton.TextSize = 18

        UserInputBox.Name = "UserInputBox"
        UserInputBox.Parent = MainFrame
        UserInputBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        UserInputBox.BorderSizePixel = 0
        UserInputBox.Position = UDim2.new(0.05, 0, 0.4, 0)
        UserInputBox.Size = UDim2.new(0.9, 0, 0, 30)
        UserInputBox.Font = Enum.Font.SourceSans
        UserInputBox.PlaceholderText = "Enter Player User/Display" 
        UserInputBox.Text = ""
        UserInputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        UserInputBox.TextSize = 16

        UICornerUserInput.CornerRadius = UDim.new(0, 8)
        UICornerUserInput.Parent = UserInputBox

        PerformActionButton.Name = "PerformActionButton"
        PerformActionButton.Parent = MainFrame
        PerformActionButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        PerformActionButton.BorderSizePixel = 0
        PerformActionButton.Position = UDim2.new(0.05, 0, 0.75, 0)
        PerformActionButton.Size = UDim2.new(0.9, 0, 0, 30)
        PerformActionButton.Font = Enum.Font.SourceSansBold
        PerformActionButton.Text = "Bang Player"
        PerformActionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        PerformActionButton.TextSize = 18

        UICornerButton.CornerRadius = UDim.new(0, 8)
        UICornerButton.Parent = PerformActionButton

        UICornerAvatar.CornerRadius = UDim.new(0, 12)
        UICornerAvatar.Parent = AvatarImage

        local isMinimized = false
        local originalSize = MainFrame.Size

        local function fadeOut(button)
            TweenService:Create(button, TweenInfo.new(0.5), {TextTransparency = 1, BackgroundTransparency = 1}):Play()
        end

        local function fadeIn(button)
            TweenService:Create(button, TweenInfo.new(0.5), {TextTransparency = 0, BackgroundTransparency = 0}):Play()
        end

        MinimizeButton.MouseButton1Click:Connect(function()
            if isMinimized then
                TweenService:Create(MainFrame, TweenInfo.new(0.5), {Size = originalSize}):Play()
                isMinimized = false

                -- Fade in buttons
                fadeIn(UserInputBox)
                fadeIn(PerformActionButton)
                fadeIn(TitleLabel)
                fadeIn(StatusLabel)
                fadeIn(AvatarImage)
            else
                TweenService:Create(MainFrame, TweenInfo.new(0.5), {Size = UDim2.new(0, 300, 0, 30)}):Play()
                isMinimized = true

                -- Fade out buttons
                fadeOut(UserInputBox)
                fadeOut(PerformActionButton)
                fadeOut(TitleLabel)
                fadeOut(StatusLabel)
                fadeOut(AvatarImage)
            end
        end)

        local actionInProgress = false
        local playerLoop
        local loadedAnim

        PerformActionButton.MouseButton1Click:Connect(function()
            local inputName = UserInputBox.Text
            local targetPlayer = nil

            for _, player in pairs(game.Players:GetPlayers()) do
                local loweredPlayerName = string.lower(player.Name)
                local loweredDisplayName = string.lower(player.DisplayName)
                local loweredInputName = string.lower(inputName)

                -- Check if the input matches either the player's name or display name (supports partial matching)
                if string.find(loweredPlayerName, loweredInputName) or string.find(loweredDisplayName, loweredInputName) then
                    targetPlayer = player
                    break
                end
            end

            UserInputBox.Text = "" -- Clear input box after clicking

            if targetPlayer then
                if actionInProgress then
                    if playerLoop then
                        playerLoop:Disconnect()
                    end
                    if loadedAnim then
                        loadedAnim:Stop()
                    end
                    actionInProgress = false
                    PerformActionButton.Text = "Bang Player"
                    StatusLabel.Text = "Banging stopped."
                    UserInputBox.PlaceholderText = "Enter Player User/Display"
                else
                    local anim = Instance.new('Animation')
                    anim.AnimationId = 'rbxassetid://148840371'
                    local playerCharacter = game.Players.LocalPlayer.Character
                    local humanoid = playerCharacter:FindFirstChildOfClass("Humanoid")

                    if humanoid then
                        loadedAnim = humanoid:LoadAnimation(anim)
                        loadedAnim:Play()
                        loadedAnim:AdjustSpeed(10)

                        playerLoop = game:GetService("RunService").Heartbeat:Connect(function()
                            if targetPlayer and targetPlayer.Character and playerCharacter.Parent then
                                local targetPosition = targetPlayer.Character.HumanoidRootPart.CFrame
                                local offsetPosition = targetPosition * CFrame.new(0, 0, 1.2) -- studs
                                playerCharacter.HumanoidRootPart.CFrame = offsetPosition
                            end
                        end)

                        actionInProgress = true
                        PerformActionButton.Text = "Unbang Player"
                        UserInputBox.PlaceholderText = "Found Player! Banging..."
                    end
                end
            else 
                UserInputBox.PlaceholderText = "Player Not Found!"
            end
        end)
    end
end

    function TelekenesisTool()
        if getgenv().TelekenesisTool == true then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/Qwerty/main/qwerty1.lua"))()
        end
    end

    function EnergizeFE()
        if getgenv().EnergizeRemake == true then
            loadstring(game:HttpGet('https://pastebin.com/raw/gVszi6q0'))()
        end
    end

    function NamelessAdmin()
        if getgenv().NamelessAdmin == true then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
        end
    end


    function infyield()
        if getgenv().infyield == true then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
        end
    end

    -- Tabs

    local MainTab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local FETab = Window:MakeTab({
        Name = "FE",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local AdminsTab = Window:MakeTab({
        Name = "Admin Scripts",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    local CreditsTab = Window:MakeTab({
        Name = "Credits",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    -- Buttons/Toggles/Others
    local FunSection = MainTab:AddSection({
        Name = "Fun (More to be added in SimplesHub Ver1.5)"
    })

    MainTab:AddButton({
        Name = "Win Disaster (Teleports to lobby)",
        Callback = function()
            print("button pressed")
            toLobby() -- load
        end
    })

    FETab:AddParagraph("Note","Not all of executors will support all these FE functions below, and most of them aren't even mine. Scroll down a little more on this tab to find the 'Info/How to use' section. -fish.lua")

    local FEsfSection = FETab:AddSection({
        Name = "FE Scripts/Functions"
    })

    FETab:AddButton({
        Name = "BlackHoleV2 (-script modified by @xiessarkia aka fish.lua)",
        Callback = function()
            print("button pressed")
            blackHoleV2() -- load
        end
    })

    FETab:AddButton({
        Name = "Super Ring Parts v2 by Yumm",
        Callback = function()
            print("button pressed")
            loadSuperRingParts() -- load
        end
    })

    FETab:AddButton({
        Name = "Soft Part Fling (-script by @fastest.me)",
        Callback = function()
            print("button pressed")
            loadSoftPartFling() -- load
        end
    })

    FETab:AddButton({
        Name = "SimplesHub's Bang UI (-script by @xiessarkia/fish.lua)",
        Callback = function()
            print("button pressed")
            BangUI() -- load
        end
    })

    FETab:AddButton({
        Name = "TelekenesisTool V4",
        Callback = function()
            print("button pressed")
            TelekenesisTool() -- load
        end
    })

    FETab:AddButton({
        Name = "EnergizeRemake(Custom Emotes UI)",
        Callback = function()
            print("button pressed")
            EnergizeFE() -- load
        end
    })

    local HTUSection = FETab:AddSection({
        Name = "Info/How to use"
    })

    FETab:AddParagraph("Black Hole V2","Not all of executors will support this, approach unanchored parts with the black hole function turned on and it should work.")
    FETab:AddParagraph("Super Ring Parts V2 by Yumm","Not all of executors will support this, approach unanchored parts with the Ring Parts function turned on and it should work. (Works with certain executors that support most of Moonsec V3 obfuscated scripts, doesn't particularly work on Solara.)")
    FETab:AddParagraph("Soft Parts Fling","Not all of executors will support this, approach unanchored parts after running this function and it should work. (Approach closely to other players to fling them.)")
    FETab:AddParagraph("SimplesHub's Bang UI","Not all of executors will support this, Input a players username/display name and click on the Bang button. If it doesn't work your executor is most likely shit.")
    FETab:AddParagraph("Telekenesis Tool V4","Not all of executors will support this, be in a mid to close range with an unanchored part to pick it up using the tool, if there is no tool that appeared after running the function, it most likely doesn't work on your executor.")
    FETab:AddParagraph("Energize Remake","Not all of executors will support this, if a ui doesn't load after running the function, it either no longer works/doesn't work on your executor.")
  
    AdminsTab:AddButton({
        Name = "Nameless Admin",
        Callback = function()
            print("button pressed")
            NamelessAdmin() -- Call the infyield function when the button is pressed
        end    
    })

    AdminsTab:AddButton({
        Name = "Infinite Yield",
        Callback = function()
            print("button pressed")
            infyield() -- Call the infyield function when the button is pressed
        end    
    })

    CreditsTab:AddLabel("Made by @xiessarkia/fish.lua on Discord.")
    CreditsTab:AddLabel("Credits to @fastest.me for creating the Soft Parts Fling script/function.")
    CreditsTab:AddButton({
        Name = "Copy Discord Invite",
        Callback = function()
            local function copyToClipboard(text)
                if setclipboard then
                    setclipboard(text)
                else
                    print("Clipboard functionality not supported")
                end
            end

            -- Call the function with the Discord invite link
            copyToClipboard("https://discord.gg/pdSnzmn5tu")
        end
    })

end

OrionLib:Init()
