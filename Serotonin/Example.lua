local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/I-Insacy/Ui/refs/heads/main/Serotonin/Library.lua'))()

local Window = Library:Window({
    Name = 'Test', 
    Logo = '127400975953159' -- Your Icon
})

local Watermark = Window:Watermark("Test")

local KeybindList = Window:KeybindList()

local CombatPage = Window:Page({Name = 'Combat', Columns = 2})
local VisualsPage = Window:Page({Name = 'Visuals', Columns = 2})
local MiscPage = Window:Page({Name = 'Misc', Columns = 2})

local SettingsPage = Library:CreateSettingsPage(Window, KeybindList, Watermark)

local AimbotSection = CombatPage:Section({
    Name = "Aim",
    Side = 1
})

AimbotSection:Toggle({
    Name = "Enabled",
    Flag = "Aim",
    Default = false,
    Callback = function(Value)
       print(Value)
    end
})

AimbotSection:Slider({
    Name = "Fov",
    Flag = "AimFov",
    Min = 70,
    Default = 120,
    Max = 360,
    Callback = function(Value)
        print(Value)
    end
})

AimbotSection:Dropdown({
    Name = "Part",
    Flag = "AimPart",
    Default = "Head",
    Items = {"Head", "Body"},
    Callback = function(Value)
        print(Value)
    end
})

local VisualsSection = VisualsPage:Section({
    Name = "Esp",
    Side = 1
})

local ToggleBox = VisualsSection:Toggle({
    Name = "Box",
    Flag = "Box",
    Default = false,
    Callback = function(Value)
      print(Value)
    end
})

ToggleBox:Colorpicker({
    Name = "Color",
    Flag = "BoxColor",
    Default = Color3.fromRGB(255, 255, 255),
    Callback = function(Value)
        print(Value)
    end
})

Library:Notification("Nigalose loaded successfully!", 3)
