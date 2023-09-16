if game.PlaceId == 1204176775 then
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "c0dex Tool Main",
   LoadingTitle = "Opening c0dex Tool...",
   LoadingSubtitle = "by c0dexer",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "c0dex tool"
   },
   Discord = {
      Enabled = true,
      Invite = "e66cTRHuZM", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "c0dex Tool Key System",
      Subtitle = "Enter Key To Continue",
      Note = "You can find the key in our Discord",
      FileName = "veryveryspecialkey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"U1P0E6L4HTBFgFE"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("🏠Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Aimbot")

Rayfield:Notify({
   Title = "You Executed The Script!",
   Content = "GIT GUD",
   Duration = 3.5,
   Image = nil,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("user tapped")
      end
   },
},
})

local Button = Tab:CreateButton({
    Name = "Universal ESP",
    Callback = function()
        local game = game
local select, pcall, loadstring , warn = select, pcall, loadstring, warn

local Success, ESP = pcall(select(2, pcall(loadstring, game:HttpGet("https://raw.githubusercontent.com/Exunys/Exunys-ESP/main/src/Modules/Original.lua"))))

if not Success then
    Success, ESP = pcall(select(2, pcall(loadstring, game:HttpGet("https://raw.githubusercontent.com/Exunys/Exunys-ESP/main/src/Modules/UWP%20Support.lua"))))

    if not Success then
        return warn("EXUNYS_ESP > Loader - Your script execution software does not support this module.")
    end
end

return ESP
    end,
 })

local TeleportTab = Window:CreateTab("Teleportations", nil) -- Title, Image
local Section = TeleportTab:CreateSection("Islands")

local Button = TeleportTab:CreateButton({
   Name = "Universal Tp Script",
   Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/AbDM2er1"))()
   end,
})

local Button = TeleportTab:CreateButton({
   Name = "Tp To The Main Island",
   Callback = function()
    print("Work In Progress")
   end,
})

local MiscTab = Window:CreateTab("Misc", nil) -- Title, Image
local Section = MiscTab:CreateSection("Universal Aimbot")

local Button = MiscTab:CreateButton({
    Name = "infinite_jump_test",
    Callback = function()
         local InfiniteJumpEnabled = true
     game:GetService("UserInputService").JumpRequest:connect(function()
         if InfiniteJumpEnabled then
             game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
         end
     end)
    -- The function that takes place when the button is pressed
    end,
 })
 
 local Slider = MiscTab:CreateSlider({
    Name = "walkspeed_test",
    Range = {0, 300},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
    end,
 })
 
 local Slider = MiscTab:CreateSlider({
    Name = "jump_power_test",
    Range = {0, 300},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 16,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
     game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
    end,
 })