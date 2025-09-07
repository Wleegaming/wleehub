local Version = "1.6.45"
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/download/" .. Version .. "/main.lua"))()
local Window = WindUI:CreateWindow({
    Title = "Wlee Hub | Universal",
    Icon = "world",
    Author = "BY | WLeeGaming",
    Folder = "343424",
    
    Size = UDim2.fromOffset(580, 460),
    Transparent = true,
    Theme = "Dark",
    Resizable = true,
    SideBarWidth = 200,
    BackgroundImageTransparency = 0.42,
    HideSearchBar = true,
    ScrollBarEnabled = false,
    
    User = {
        Enabled = true,
        Callback = function()
            print("clicked")
        end,
    },
})
Window:Tag({
    Title = "Working,
    Color = Color3.fromHex("#30ff6a")
})
Window:Tag({
    Title = "v1.1",
    Color = Color3.fromHex("#30ff6a")
-- end tag window
})
local Maintab = Window:Tab({
    Title = "Home",
    Icon = "house",
    Locked = false,
})
local AboutTab = Window:Tab({
    Title = "About",
    Icon = "abadge-info",
    Locked = false,
})
local PlayerTab = Window:Tab({
    Title = "Player",
    Icon = "user",
    Locked = false,
})
local GameTab = Window:Tab({
    Title = "Game",
    Icon = "gamepad-2",
    Locked = false,
})
local DevTab = Window:Tab({
    Title = "Developer Script",
    Icon = "folder-code",
    Locked = false,
})
-- Buat Settings Tab
local SettingsTab = Window:Tab({
    Title = "Settings",
    Icon = "settings",
    Locked = false,
})

-- Dropdown buat ganti tema
local ThemeDropdown = SettingsTab:Dropdown({
    Title = "UI Theme",
    Desc = "Change WindUI theme",
    Values = { "Default", "Dark", "Light", "Aqua", "Rose" }, -- isi sesuai tema yg support WindUI
    Default = "Default",
    Callback = function(selected)
        WindUI:SetTheme(selected)
        print("Theme Changed: " .. selected)
    end
})

-- Register ke config system
myConfig:Register("themeSetting", ThemeDropdown)

-- Tombol buat save manual (opsional, kalau nggak config auto-save)
SettingsTab:Button({
    Title = "Save Config",
    Callback = function()
        myConfig:Save()
        WindUI:Notify({
            Title = "Settings",
            Content = "Config saved successfully!",
            Duration = 3,
            Icon = "check"
        })
    end,
})
