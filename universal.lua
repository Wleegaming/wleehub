local Version = "1.6.45"
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/download/" .. Version .. "/main.lua"))()
local Window = WindUI:CreateWindow({
    Title = "Wlee Hub | Universal",
    Icon = "earth",
    Author = "BY | @Wlee Gaming",
    Folder = "adminpanel",
    
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
-- Tag Start
Window:Tag({Title = "Working",Color = Color3.fromHex("#30ff6a")})
Window:Tag({Title = "v1.1",Color = Color3.fromHex("#c91310")})
-- Tag End

-- MainSection Start
local MainSection = Window:Section({Title = "Main",Icon = "house",Opened = true,})
-- MainSection End

-- HomeTab Start
local HomeTab = MainSection:Tab({Title = "Home",Icon = "house",Locked = false,})
HomeTab:Paragraph({
    Title = "welcome to wlee hub !",
    Desc = "what is WLee hub?, wlee hub is a a powerfull script to use, and in wleehub you can find any script game.",
    Image = "earth",
    ImageSize = 30,
    Thumbnail = "https://tr.rbxcdn.com/180DAY-69b2299a957644e9a7e866936574367e/768/432/Image/Webp/noFilter",
    ThumbnailSize = 80,
    Locked = false,
    Buttons = {
        {
            Icon = "external-link",
            Title = "Join Our Discrod Right Now!",
            Callback = function() settoclippboard() end,
        }
    }
})
local Changelogtabsection = HomeTab:Section({ Title = "Changelog",TextXAlignment = "Left",TextSize = 17,})
Changelogtabsection:Paragraph({
    Title = "Update V 1.1",
    Desc = "",
    Locked = false,
})

