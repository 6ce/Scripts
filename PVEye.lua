if game.ReplicatedStorage:FindFirstChild("ScreenWatch") == nil then
    game.StarterGui:SetCore("SendNotification", {
        Title = "PVEye ScreenWatch",
        Text = "Game not supported",
        Duration = 5,
        Button1 = "Ok"
    })
    return
end

getgenv().ScreenWatchExecuted = true

local PVEyeObj = game:GetObjects("rbxassetid://552481467")[1]

local WatchGUI = Instance.new("ScreenGui")
local Cursor = PVEyeObj.WatchGUI.Cursor
local BillboardGui = Instance.new("BillboardGui")
local Dot = Instance.new("ImageLabel")
local Main = Instance.new("Frame")
local Navigator = Instance.new("Frame")
local Select = Instance.new("Frame")
local About = Instance.new("Frame")
local Icon = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local Title = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Button = Instance.new("TextButton")
local Dashboard = Instance.new("Frame")
local Icon_2 = Instance.new("Frame")
local ImageLabel_2 = Instance.new("ImageLabel")
local Title_2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local Button_2 = Instance.new("TextButton")
local ScreenWatch = Instance.new("Frame")
local Icon_3 = Instance.new("Frame")
local ImageLabel_3 = Instance.new("ImageLabel")
local Title_3 = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local Button_3 = Instance.new("TextButton")
local ScriptCompare = Instance.new("Frame")
local Icon_4 = Instance.new("Frame")
local ImageLabel_4 = Instance.new("ImageLabel")
local Title_4 = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local Button_4 = Instance.new("TextButton")
local Logs = Instance.new("Frame")
local Icon_5 = Instance.new("Frame")
local ImageLabel_5 = Instance.new("ImageLabel")
local Title_5 = Instance.new("Frame")
local TextLabel_5 = Instance.new("TextLabel")
local Button_5 = Instance.new("TextButton")
local Divider = Instance.new("Frame")
local Title_6 = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local Base = Instance.new("Frame")
local About_2 = Instance.new("Frame")
local Credits = Instance.new("Frame")
local accent = Instance.new("Frame")
local Title_7 = Instance.new("TextLabel")
local Description = Instance.new("TextLabel")
local Version = Instance.new("Frame")
local accent_2 = Instance.new("Frame")
local Title_8 = Instance.new("TextLabel")
local Description_2 = Instance.new("TextLabel")
local Purpose = Instance.new("Frame")
local accent_3 = Instance.new("Frame")
local Title_9 = Instance.new("TextLabel")
local Description_3 = Instance.new("TextLabel")
local ScreenWatch_2 = Instance.new("Frame")
local SearchBar = Instance.new("TextBox")
local Scroll = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local Preset = Instance.new("Frame")
local ImageLabel_6 = Instance.new("ImageLabel")
local Username = Instance.new("TextLabel")
local Button_6 = Instance.new("TextButton")
local Dashboard_2 = Instance.new("Frame")
local Section = Instance.new("Frame")
local accent_4 = Instance.new("Frame")
local Title_10 = Instance.new("TextLabel")
local Description_4 = Instance.new("TextLabel")
local ScriptCompare_2 = Instance.new("Frame")
local Section_2 = Instance.new("Frame")
local accent_5 = Instance.new("Frame")
local Title_11 = Instance.new("TextLabel")
local Description_5 = Instance.new("TextLabel")
local Logs_2 = Instance.new("Frame")
local Server = Instance.new("Frame")
local Scroll_2 = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local Preset_2 = Instance.new("Frame")
local Message = Instance.new("TextLabel")
local Stamp = Instance.new("TextLabel")
local SearchBar_2 = Instance.new("TextBox")
local Client = Instance.new("Frame")
local Scroll_3 = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local Preset_3 = Instance.new("Frame")
local Message_2 = Instance.new("TextLabel")
local Stamp_2 = Instance.new("TextLabel")
local SearchBar_3 = Instance.new("TextBox")
local ServerTab = Instance.new("TextButton")
local ClientTab = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local WatchDisplay = Instance.new("Frame")
local Side = Instance.new("Frame")
local WASD = Instance.new("Frame")
local W = Instance.new("Frame")
local TextLabel_6 = Instance.new("TextLabel")
local S = Instance.new("Frame")
local TextLabel_7 = Instance.new("TextLabel")
local A = Instance.new("Frame")
local TextLabel_8 = Instance.new("TextLabel")
local D = Instance.new("Frame")
local TextLabel_9 = Instance.new("TextLabel")
local MOUSE = Instance.new("Frame")
local Mouse = Instance.new("Frame")
local Left = Instance.new("Frame")
local Right = Instance.new("Frame")
local Middle = Instance.new("Frame")
local accent_6 = Instance.new("Frame")
local accent_7 = Instance.new("Frame")
local Return = Instance.new("TextButton")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local ICON = Instance.new("Frame")
local Open = Instance.new("TextButton")

--Properties:

WatchGUI.Name = "WatchGUI"
WatchGUI.Parent = game:GetService("CoreGui")
WatchGUI.ResetOnSpawn = false

Cursor.Name = "Cursor"
Cursor.Size = Vector3.new(0.5, 0.5, 0.5)
Cursor.CanCollide = true
Cursor.Transparency = 1
Cursor.Color = Color3.fromRGB(163, 162, 165)
Cursor.Parent = WatchGUI

BillboardGui.Name = "BillboardGui"
BillboardGui.Active = false
BillboardGui.AlwaysOnTop = true
BillboardGui.Enabled = true
BillboardGui.MaxDistance = 3.402823669209385
BillboardGui.ResetOnSpawn = true
BillboardGui.Size = UDim2.new(0, 200, 0, 200)
BillboardGui.Parent = Cursor

Dot.Name = "ImageLabel"
Dot.Size = UDim2.new(1, 0, 1, 0)
Dot.Image = "https://web.roblox.com/library/131581677/VaktovianDot1-2"
Dot.Parent = BillboardGui

Main.Name = "Main"
Main.Parent = WatchGUI
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Main.BackgroundTransparency = 1.000
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.5, 0, 0.5, 0)
Main.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)

Navigator.Name = "Navigator"
Navigator.Parent = Main
Navigator.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Navigator.BorderSizePixel = 0
Navigator.Size = UDim2.new(0.25, 0, 1, 0)

Select.Name = "Select"
Select.Parent = Navigator
Select.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Select.BackgroundTransparency = 1.000
Select.BorderSizePixel = 0
Select.Position = UDim2.new(0, 0, 0.100000001, 0)
Select.Size = UDim2.new(1, 0, 0.899999976, 0)

About.Name = "About"
About.Parent = Select
About.AnchorPoint = Vector2.new(0, 0.5)
About.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
About.BackgroundTransparency = 1.000
About.BorderSizePixel = 0
About.Position = UDim2.new(0, 0, 0.800000012, 0)
About.Size = UDim2.new(1, 0, 0.100000001, 0)
About.ZIndex = 2

Icon.Name = "Icon"
Icon.Parent = About
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.BorderSizePixel = 0
Icon.Size = UDim2.new(0.25, 0, 1, 0)

ImageLabel.Parent = Icon
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(0.5, 0, 0.600000024, 0)
ImageLabel.ZIndex = 2
ImageLabel.Image = "rbxassetid://155149625"

Title.Name = "Title"
Title.Parent = About
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.25, 0, 0, 0)
Title.Size = UDim2.new(0.75, 0, 1, 0)

TextLabel.Parent = Title
TextLabel.AnchorPoint = Vector2.new(1, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(1, 0, 0.5, 0)
TextLabel.Size = UDim2.new(0.850000024, 0, 0.5, 0)
TextLabel.ZIndex = 2
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "About"
TextLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

Button.Name = "Button"
Button.Parent = About
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.Size = UDim2.new(1, 0, 1, 0)
Button.ZIndex = 3
Button.Font = Enum.Font.SourceSans
Button.Text = ""
Button.TextColor3 = Color3.fromRGB(0, 0, 0)
Button.TextSize = 14.000

Dashboard.Name = "Dashboard"
Dashboard.Parent = Select
Dashboard.AnchorPoint = Vector2.new(0, 0.5)
Dashboard.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dashboard.BackgroundTransparency = 1.000
Dashboard.BorderSizePixel = 0
Dashboard.Position = UDim2.new(0, 0, 0.200000003, 0)
Dashboard.Size = UDim2.new(1, 0, 0.100000001, 0)
Dashboard.ZIndex = 2

Icon_2.Name = "Icon"
Icon_2.Parent = Dashboard
Icon_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon_2.BackgroundTransparency = 1.000
Icon_2.BorderSizePixel = 0
Icon_2.Size = UDim2.new(0.25, 0, 1, 0)

ImageLabel_2.Parent = Icon_2
ImageLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel_2.Size = UDim2.new(0.5, 0, 0.600000024, 0)
ImageLabel_2.ZIndex = 2
ImageLabel_2.Image = "rbxassetid://155149625"

Title_2.Name = "Title"
Title_2.Parent = Dashboard
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.Position = UDim2.new(0.25, 0, 0, 0)
Title_2.Size = UDim2.new(0.75, 0, 1, 0)

TextLabel_2.Parent = Title_2
TextLabel_2.AnchorPoint = Vector2.new(1, 0.5)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(1, 0, 0.5, 0)
TextLabel_2.Size = UDim2.new(0.850000024, 0, 0.5, 0)
TextLabel_2.ZIndex = 2
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Dashboard"
TextLabel_2.TextColor3 = Color3.fromRGB(150, 150, 150)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

Button_2.Name = "Button"
Button_2.Parent = Dashboard
Button_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_2.BackgroundTransparency = 1.000
Button_2.Size = UDim2.new(1, 0, 1, 0)
Button_2.ZIndex = 3
Button_2.Font = Enum.Font.SourceSans
Button_2.Text = ""
Button_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_2.TextSize = 14.000

ScreenWatch.Name = "ScreenWatch"
ScreenWatch.Parent = Select
ScreenWatch.AnchorPoint = Vector2.new(0, 0.5)
ScreenWatch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenWatch.BackgroundTransparency = 1.000
ScreenWatch.BorderSizePixel = 0
ScreenWatch.Position = UDim2.new(0, 0, 0.400000006, 0)
ScreenWatch.Size = UDim2.new(1, 0, 0.100000001, 0)
ScreenWatch.ZIndex = 2

Icon_3.Name = "Icon"
Icon_3.Parent = ScreenWatch
Icon_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon_3.BackgroundTransparency = 1.000
Icon_3.BorderSizePixel = 0
Icon_3.Size = UDim2.new(0.25, 0, 1, 0)

ImageLabel_3.Parent = Icon_3
ImageLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_3.BackgroundTransparency = 1.000
ImageLabel_3.BorderSizePixel = 0
ImageLabel_3.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel_3.Size = UDim2.new(0.5, 0, 0.600000024, 0)
ImageLabel_3.ZIndex = 2
ImageLabel_3.Image = "rbxassetid://155149625"

Title_3.Name = "Title"
Title_3.Parent = ScreenWatch
Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_3.BackgroundTransparency = 1.000
Title_3.Position = UDim2.new(0.25, 0, 0, 0)
Title_3.Size = UDim2.new(0.75, 0, 1, 0)

TextLabel_3.Parent = Title_3
TextLabel_3.AnchorPoint = Vector2.new(1, 0.5)
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(1, 0, 0.5, 0)
TextLabel_3.Size = UDim2.new(0.850000024, 0, 0.5, 0)
TextLabel_3.ZIndex = 2
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "ScreenWatch"
TextLabel_3.TextColor3 = Color3.fromRGB(150, 150, 150)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

Button_3.Name = "Button"
Button_3.Parent = ScreenWatch
Button_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_3.BackgroundTransparency = 1.000
Button_3.Size = UDim2.new(1, 0, 1, 0)
Button_3.ZIndex = 3
Button_3.Font = Enum.Font.SourceSans
Button_3.Text = ""
Button_3.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_3.TextSize = 14.000

ScriptCompare.Name = "ScriptCompare"
ScriptCompare.Parent = Select
ScriptCompare.AnchorPoint = Vector2.new(0, 0.5)
ScriptCompare.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptCompare.BackgroundTransparency = 1.00
ScriptCompare.BorderSizePixel = 0
ScriptCompare.Position = UDim2.new(0, 0, 0.600000024, 0)
ScriptCompare.Size = UDim2.new(1, 0, 0.100000001, 0)
ScriptCompare.Visible = false
ScriptCompare.ZIndex = 2

Icon_4.Name = "Icon"
Icon_4.Parent = ScriptCompare
Icon_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon_4.BackgroundTransparency = 1.000
Icon_4.BorderSizePixel = 0
Icon_4.Size = UDim2.new(0.25, 0, 1, 0)

ImageLabel_4.Parent = Icon_4
ImageLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_4.BackgroundTransparency = 1.000
ImageLabel_4.BorderSizePixel = 0
ImageLabel_4.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel_4.Size = UDim2.new(0.5, 0, 0.600000024, 0)
ImageLabel_4.ZIndex = 2
ImageLabel_4.Image = "rbxassetid://155149625"

Title_4.Name = "Title"
Title_4.Parent = ScriptCompare
Title_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_4.BackgroundTransparency = 1.000
Title_4.Position = UDim2.new(0.25, 0, 0, 0)
Title_4.Size = UDim2.new(0.75, 0, 1, 0)

TextLabel_4.Parent = Title_4
TextLabel_4.AnchorPoint = Vector2.new(1, 0.5)
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(1, 0, 0.5, 0)
TextLabel_4.Size = UDim2.new(0.850000024, 0, 0.5, 0)
TextLabel_4.ZIndex = 2
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "ScriptCompare"
TextLabel_4.TextColor3 = Color3.fromRGB(150, 150, 150)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

Button_4.Name = "Button"
Button_4.Parent = ScriptCompare
Button_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_4.BackgroundTransparency = 1.000
Button_4.Size = UDim2.new(1, 0, 1, 0)
Button_4.ZIndex = 3
Button_4.Font = Enum.Font.SourceSans
Button_4.Text = ""
Button_4.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_4.TextSize = 14.000

Logs.Name = "Logs"
Logs.Parent = Select
Logs.AnchorPoint = Vector2.new(0, 0.5)
Logs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logs.BackgroundTransparency = 1.000
Logs.BorderSizePixel = 0
Logs.Position = UDim2.new(0, 0, 0.600000024, 0)
Logs.Size = UDim2.new(1, 0, 0.100000001, 0)
Logs.ZIndex = 2

Icon_5.Name = "Icon"
Icon_5.Parent = Logs
Icon_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon_5.BackgroundTransparency = 1.000
Icon_5.BorderSizePixel = 0
Icon_5.Size = UDim2.new(0.25, 0, 1, 0)

ImageLabel_5.Parent = Icon_5
ImageLabel_5.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_5.BackgroundTransparency = 1.000
ImageLabel_5.BorderSizePixel = 0
ImageLabel_5.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel_5.Size = UDim2.new(0.5, 0, 0.600000024, 0)
ImageLabel_5.ZIndex = 2
ImageLabel_5.Image = "rbxassetid://155149625"

Title_5.Name = "Title"
Title_5.Parent = Logs
Title_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_5.BackgroundTransparency = 1.000
Title_5.Position = UDim2.new(0.25, 0, 0, 0)
Title_5.Size = UDim2.new(0.75, 0, 1, 0)

TextLabel_5.Parent = Title_5
TextLabel_5.AnchorPoint = Vector2.new(1, 0.5)
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(1, 0, 0.5, 0)
TextLabel_5.Size = UDim2.new(0.850000024, 0, 0.5, 0)
TextLabel_5.ZIndex = 2
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "Logs"
TextLabel_5.TextColor3 = Color3.fromRGB(150, 150, 150)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left

Button_5.Name = "Button"
Button_5.Parent = Logs
Button_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_5.BackgroundTransparency = 1.000
Button_5.Size = UDim2.new(1, 0, 1, 0)
Button_5.ZIndex = 3
Button_5.Font = Enum.Font.SourceSans
Button_5.Text = ""
Button_5.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_5.TextSize = 14.000

Divider.Name = "Divider"
Divider.Parent = Navigator
Divider.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Divider.BorderSizePixel = 0
Divider.Position = UDim2.new(0, 0, 0.100000001, 0)
Divider.Size = UDim2.new(0.25, 0, 0.899999976, 0)

Title_6.Name = "Title"
Title_6.Parent = Navigator
Title_6.BackgroundColor3 = Color3.fromRGB(59, 130, 234)
Title_6.BorderSizePixel = 0
Title_6.Size = UDim2.new(1, 0, 0.100000001, 0)

Label.Name = "Label"
Label.Parent = Title_6
Label.AnchorPoint = Vector2.new(0.5, 0.5)
Label.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Label.BackgroundTransparency = 1.000
Label.BorderSizePixel = 0
Label.Position = UDim2.new(0.5, 0, 0.5, 0)
Label.Size = UDim2.new(1, 0, 0.5, 0)
Label.Font = Enum.Font.SourceSansLight
Label.Text = "PHANTOMVISUAL'S EYE"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextScaled = true
Label.TextSize = 40.000
Label.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Label.TextStrokeTransparency = 0.900
Label.TextWrapped = true

Base.Name = "Base"
Base.Parent = Main
Base.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Base.BorderSizePixel = 0
Base.Position = UDim2.new(0.25, 0, 0, 0)
Base.Size = UDim2.new(0.75, 0, 1, 0)

About_2.Name = "About"
About_2.Parent = Base
About_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
About_2.BackgroundTransparency = 1.000
About_2.BorderSizePixel = 0
About_2.Size = UDim2.new(1, 0, 1, 0)

Credits.Name = "Credits"
Credits.Parent = About_2
Credits.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Credits.BackgroundTransparency = 1.000
Credits.Size = UDim2.new(0.5, 0, 0.5, 0)

accent.Name = "accent"
accent.Parent = Credits
accent.AnchorPoint = Vector2.new(0.5, 0)
accent.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
accent.BorderSizePixel = 0
accent.Position = UDim2.new(0.5, 0, 0.200000003, 0)
accent.Size = UDim2.new(0.800000012, 0, 0, 2)

Title_7.Name = "Title"
Title_7.Parent = Credits
Title_7.AnchorPoint = Vector2.new(0.5, 1)
Title_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_7.BackgroundTransparency = 1.000
Title_7.Position = UDim2.new(0.5, 0, 0.200000003, 0)
Title_7.Size = UDim2.new(0.800000012, 0, 0.125, 0)
Title_7.Font = Enum.Font.SourceSansLight
Title_7.Text = "CREDITS"
Title_7.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_7.TextScaled = true
Title_7.TextSize = 14.000
Title_7.TextWrapped = true

Description.Name = "Description"
Description.Parent = Credits
Description.AnchorPoint = Vector2.new(0.5, 0)
Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description.BackgroundTransparency = 1.000
Description.Position = UDim2.new(0.5, 0, 0.25, 0)
Description.Size = UDim2.new(0.800000012, 0, 0.0799999982, 0)
Description.Font = Enum.Font.SourceSansLight
Description.Text = "PhantomVisual - Scripter & Designer"
Description.TextColor3 = Color3.fromRGB(255, 255, 255)
Description.TextScaled = true
Description.TextSize = 14.000
Description.TextWrapped = true
Description.TextYAlignment = Enum.TextYAlignment.Top

Version.Name = "Version"
Version.Parent = About_2
Version.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Version.BackgroundTransparency = 1.000
Version.Position = UDim2.new(0.5, 0, 0, 0)
Version.Size = UDim2.new(0.5, 0, 0.5, 0)

accent_2.Name = "accent"
accent_2.Parent = Version
accent_2.AnchorPoint = Vector2.new(0.5, 0)
accent_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
accent_2.BorderSizePixel = 0
accent_2.Position = UDim2.new(0.5, 0, 0.200000003, 0)
accent_2.Size = UDim2.new(0.800000012, 0, 0, 2)

Title_8.Name = "Title"
Title_8.Parent = Version
Title_8.AnchorPoint = Vector2.new(0.5, 1)
Title_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_8.BackgroundTransparency = 1.000
Title_8.Position = UDim2.new(0.5, 0, 0.200000003, 0)
Title_8.Size = UDim2.new(0.800000012, 0, 0.125, 0)
Title_8.Font = Enum.Font.SourceSansLight
Title_8.Text = "VERSION"
Title_8.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_8.TextScaled = true
Title_8.TextSize = 14.000
Title_8.TextWrapped = true

Description_2.Name = "Description"
Description_2.Parent = Version
Description_2.AnchorPoint = Vector2.new(0.5, 0)
Description_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description_2.BackgroundTransparency = 1.000
Description_2.Position = UDim2.new(0.5, 0, 0.25, 0)
Description_2.Size = UDim2.new(0.800000012, 0, 0.324999988, 0)
Description_2.Font = Enum.Font.SourceSansLight
Description_2.Text = "1.0.1v\\nLast Updated: 8 - 3 - 2018\\nLast Updated By: PhantomVisual\\n"
Description_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Description_2.TextScaled = true
Description_2.TextSize = 14.000
Description_2.TextWrapped = true
Description_2.TextYAlignment = Enum.TextYAlignment.Top

Purpose.Name = "Purpose"
Purpose.Parent = About_2
Purpose.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Purpose.BackgroundTransparency = 1.000
Purpose.Position = UDim2.new(0, 0, 0.5, 0)
Purpose.Size = UDim2.new(1, 0, 0.5, 0)

accent_3.Name = "accent"
accent_3.Parent = Purpose
accent_3.AnchorPoint = Vector2.new(0.5, 0)
accent_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
accent_3.BorderSizePixel = 0
accent_3.Position = UDim2.new(0.5, 0, 0.200000003, 0)
accent_3.Size = UDim2.new(0.800000012, 0, 0, 2)

Title_9.Name = "Title"
Title_9.Parent = Purpose
Title_9.AnchorPoint = Vector2.new(0.5, 1)
Title_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_9.BackgroundTransparency = 1.000
Title_9.Position = UDim2.new(0.5, 0, 0.200000003, 0)
Title_9.Size = UDim2.new(0.800000012, 0, 0.125, 0)
Title_9.Font = Enum.Font.SourceSansLight
Title_9.Text = "PURPOSE"
Title_9.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_9.TextScaled = true
Title_9.TextSize = 14.000
Title_9.TextWrapped = true

Description_3.Name = "Description"
Description_3.Parent = Purpose
Description_3.AnchorPoint = Vector2.new(0.5, 0)
Description_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description_3.BackgroundTransparency = 1.000
Description_3.Position = UDim2.new(0.5, 0, 0.25, 0)
Description_3.Size = UDim2.new(0.800000012, 0, 0.400000006, 0)
Description_3.Font = Enum.Font.SourceSansLight
Description_3.Text = "Our goal is to promote fair play throughout ROBLOX games by providing a simple and open-source tool that can be used to moderate activity of misplay.\\n\\nPhantomVisual's Eye is ran and was created by PhantomVisual.\\n"
Description_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Description_3.TextScaled = true
Description_3.TextSize = 14.000
Description_3.TextWrapped = true
Description_3.TextYAlignment = Enum.TextYAlignment.Top

ScreenWatch_2.Name = "ScreenWatch"
ScreenWatch_2.Parent = Base
ScreenWatch_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScreenWatch_2.BackgroundTransparency = 1.000
ScreenWatch_2.BorderSizePixel = 0
ScreenWatch_2.Size = UDim2.new(1, 0, 1, 0)
ScreenWatch_2.Visible = false

SearchBar.Name = "SearchBar"
SearchBar.Parent = ScreenWatch_2
SearchBar.AnchorPoint = Vector2.new(0.5, 1)
SearchBar.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SearchBar.BorderSizePixel = 0
SearchBar.Position = UDim2.new(0.5, 0, 0.125, 0)
SearchBar.Size = UDim2.new(0.899999976, 0, 0.0500000007, 0)
SearchBar.Font = Enum.Font.SourceSansLight
SearchBar.Text = "Search"
SearchBar.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchBar.TextScaled = true
SearchBar.TextSize = 14.000
SearchBar.TextWrapped = true

Scroll.Name = "Scroll"
Scroll.Parent = ScreenWatch_2
Scroll.AnchorPoint = Vector2.new(0.5, 0)
Scroll.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Scroll.BorderSizePixel = 0
Scroll.Position = UDim2.new(0.5, 0, 0.174999997, 0)
Scroll.Selectable = false
Scroll.Size = UDim2.new(0.899999976, 0, 0.774999976, 0)
Scroll.ScrollBarThickness = 5

UIGridLayout.Parent = Scroll
UIGridLayout.CellPadding = UDim2.new(0, 6, 0, 6)

Preset.Name = "Preset"
Preset.Parent = Scroll
Preset.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Preset.BorderSizePixel = 0
Preset.Size = UDim2.new(0, 100, 0, 100)

ImageLabel_6.Parent = Preset
ImageLabel_6.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_6.BackgroundTransparency = 1.000
ImageLabel_6.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel_6.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
ImageLabel_6.Image = "https://www.roblox.com/bust-thumbnail/image?userId=25085896&width=420&height=420&format=image"

Username.Name = "Username"
Username.Parent = Preset
Username.AnchorPoint = Vector2.new(0.5, 1)
Username.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Username.BorderSizePixel = 0
Username.Position = UDim2.new(0.5, 0, 1, 0)
Username.Size = UDim2.new(1, 0, 0.174999997, 0)
Username.Font = Enum.Font.SourceSansLight
Username.Text = "PhantomVisual"
Username.TextColor3 = Color3.fromRGB(255, 255, 255)
Username.TextScaled = true
Username.TextSize = 14.000
Username.TextWrapped = true

Button_6.Name = "Button"
Button_6.Parent = Preset
Button_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button_6.BackgroundTransparency = 1.000
Button_6.Size = UDim2.new(1, 0, 1, 0)
Button_6.ZIndex = 2
Button_6.Font = Enum.Font.SourceSans
Button_6.Text = ""
Button_6.TextColor3 = Color3.fromRGB(0, 0, 0)
Button_6.TextSize = 14.000

Dashboard_2.Name = "Dashboard"
Dashboard_2.Parent = Base
Dashboard_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Dashboard_2.BackgroundTransparency = 1.000
Dashboard_2.BorderSizePixel = 0
Dashboard_2.Size = UDim2.new(1, 0, 1, 0)
Dashboard_2.Visible = false

Section.Name = "Section"
Section.Parent = Dashboard_2
Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Section.BackgroundTransparency = 1.000
Section.Position = UDim2.new(0, 0, 0.25, 0)
Section.Size = UDim2.new(1, 0, 0.5, 0)

accent_4.Name = "accent"
accent_4.Parent = Section
accent_4.AnchorPoint = Vector2.new(0.5, 0)
accent_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
accent_4.BorderSizePixel = 0
accent_4.Position = UDim2.new(0.5, 0, 0.200000003, 0)
accent_4.Size = UDim2.new(0.800000012, 0, 0, 2)

Title_10.Name = "Title"
Title_10.Parent = Section
Title_10.AnchorPoint = Vector2.new(0.5, 1)
Title_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_10.BackgroundTransparency = 1.000
Title_10.Position = UDim2.new(0.5, 0, 0.200000003, 0)
Title_10.Size = UDim2.new(0.800000012, 0, 0.125, 0)
Title_10.Font = Enum.Font.SourceSansLight
Title_10.Text = "COMING SOON"
Title_10.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_10.TextScaled = true
Title_10.TextSize = 14.000
Title_10.TextWrapped = true

Description_4.Name = "Description"
Description_4.Parent = Section
Description_4.AnchorPoint = Vector2.new(0.5, 0)
Description_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description_4.BackgroundTransparency = 1.000
Description_4.Position = UDim2.new(0.5, 0, 0.25, 0)
Description_4.Size = UDim2.new(0.800000012, 0, 0.400000006, 0)
Description_4.Font = Enum.Font.SourceSansLight
Description_4.Text = "The dashboard will allow you to view logs, bans, and news. I'm still thinking on what is should show, send me suggestions through ROBLOX. Thank you for using PhantomVisual's Eye!"
Description_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Description_4.TextScaled = true
Description_4.TextSize = 14.000
Description_4.TextWrapped = true
Description_4.TextYAlignment = Enum.TextYAlignment.Top

ScriptCompare_2.Name = "ScriptCompare"
ScriptCompare_2.Parent = Base
ScriptCompare_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptCompare_2.BackgroundTransparency = 1.000
ScriptCompare_2.BorderSizePixel = 0
ScriptCompare_2.Size = UDim2.new(1, 0, 1, 0)
ScriptCompare_2.Visible = false

Section_2.Name = "Section"
Section_2.Parent = ScriptCompare_2
Section_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Section_2.BackgroundTransparency = 1.000
Section_2.Position = UDim2.new(0, 0, 0.25, 0)
Section_2.Size = UDim2.new(1, 0, 0.5, 0)

accent_5.Name = "accent"
accent_5.Parent = Section_2
accent_5.AnchorPoint = Vector2.new(0.5, 0)
accent_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
accent_5.BorderSizePixel = 0
accent_5.Position = UDim2.new(0.5, 0, 0.200000003, 0)
accent_5.Size = UDim2.new(0.800000012, 0, 0, 2)

Title_11.Name = "Title"
Title_11.Parent = Section_2
Title_11.AnchorPoint = Vector2.new(0.5, 1)
Title_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_11.BackgroundTransparency = 1.000
Title_11.Position = UDim2.new(0.5, 0, 0.200000003, 0)
Title_11.Size = UDim2.new(0.800000012, 0, 0.125, 0)
Title_11.Font = Enum.Font.SourceSansLight
Title_11.Text = "COMING SOON"
Title_11.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_11.TextScaled = true
Title_11.TextSize = 14.000
Title_11.TextWrapped = true

Description_5.Name = "Description"
Description_5.Parent = Section_2
Description_5.AnchorPoint = Vector2.new(0.5, 0)
Description_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description_5.BackgroundTransparency = 1.000
Description_5.Position = UDim2.new(0.5, 0, 0.25, 0)
Description_5.Size = UDim2.new(0.800000012, 0, 0.400000006, 0)
Description_5.Font = Enum.Font.SourceSansLight
Description_5.Text = "ScriptCompare will allow you to select two players and compare every local script they have. The purpose of that is to see if a player has inserted a script to allow them to cheat. I might add script cloning so you can see what cheat they are using."
Description_5.TextColor3 = Color3.fromRGB(255, 255, 255)
Description_5.TextScaled = true
Description_5.TextSize = 14.000
Description_5.TextWrapped = true
Description_5.TextYAlignment = Enum.TextYAlignment.Top

Logs_2.Name = "Logs"
Logs_2.Parent = Base
Logs_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logs_2.BackgroundTransparency = 1.000
Logs_2.BorderSizePixel = 0
Logs_2.Size = UDim2.new(1, 0, 1, 0)
Logs_2.Visible = false

Server.Name = "Server"
Server.Parent = Logs_2
Server.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Server.BackgroundTransparency = 1.000
Server.Size = UDim2.new(1, 0, 1, 0)

Scroll_2.Name = "Scroll"
Scroll_2.Parent = Server
Scroll_2.AnchorPoint = Vector2.new(0.5, 0)
Scroll_2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Scroll_2.BorderSizePixel = 0
Scroll_2.Position = UDim2.new(0.5, 0, 0.174999997, 0)
Scroll_2.Selectable = false
Scroll_2.Size = UDim2.new(0.899999976, 0, 0.774999976, 0)
Scroll_2.ScrollBarThickness = 5

UIListLayout.Parent = Scroll_2
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIListLayout.Padding = UDim.new(0, 10)

Preset_2.Name = "Preset"
Preset_2.Parent = Scroll_2
Preset_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Preset_2.BackgroundTransparency = 1.000
Preset_2.Size = UDim2.new(0.899999976, 0, 0, 30)

Message.Name = "Message"
Message.Parent = Preset_2
Message.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Message.BackgroundTransparency = 1.000
Message.Position = UDim2.new(0.150000006, 0, 0, 0)
Message.Size = UDim2.new(0.850000024, 0, 1, 0)
Message.Font = Enum.Font.SourceSans
Message.Text = "PVEye requested to kick PhantomVisual. Message | Aimbotter lmao\\nDetails: Hit nil lol xd"
Message.TextColor3 = Color3.fromRGB(255, 255, 255)
Message.TextScaled = true
Message.TextSize = 14.000
Message.TextWrapped = true
Message.TextXAlignment = Enum.TextXAlignment.Left
Message.TextYAlignment = Enum.TextYAlignment.Top

Stamp.Name = "Stamp"
Stamp.Parent = Preset_2
Stamp.AnchorPoint = Vector2.new(0, 0.5)
Stamp.BackgroundColor3 = Color3.fromRGB(255, 220, 0)
Stamp.BackgroundTransparency = 1.000
Stamp.Position = UDim2.new(0, 0, 0.5, 0)
Stamp.Size = UDim2.new(0.150000006, 0, 0.5, 0)
Stamp.Font = Enum.Font.SourceSansBold
Stamp.Text = "13:48:44"
Stamp.TextColor3 = Color3.fromRGB(255, 255, 0)
Stamp.TextScaled = true
Stamp.TextSize = 14.000
Stamp.TextWrapped = true

SearchBar_2.Name = "SearchBar"
SearchBar_2.Parent = Server
SearchBar_2.AnchorPoint = Vector2.new(0.5, 1)
SearchBar_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SearchBar_2.BorderSizePixel = 0
SearchBar_2.Position = UDim2.new(0.5, 0, 0.174999997, 0)
SearchBar_2.Size = UDim2.new(0.899999976, 0, 0.0500000007, 0)
SearchBar_2.Font = Enum.Font.SourceSansLight
SearchBar_2.Text = "Search"
SearchBar_2.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchBar_2.TextScaled = true
SearchBar_2.TextSize = 14.000
SearchBar_2.TextWrapped = true

Client.Name = "Client"
Client.Parent = Logs_2
Client.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Client.BackgroundTransparency = 1.000
Client.Size = UDim2.new(1, 0, 1, 0)
Client.Visible = false

Scroll_3.Name = "Scroll"
Scroll_3.Parent = Client
Scroll_3.AnchorPoint = Vector2.new(0.5, 0)
Scroll_3.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Scroll_3.BorderSizePixel = 0
Scroll_3.Position = UDim2.new(0.5, 0, 0.174999997, 0)
Scroll_3.Selectable = false
Scroll_3.Size = UDim2.new(0.899999976, 0, 0.774999976, 0)
Scroll_3.ScrollBarThickness = 5

UIListLayout_2.Parent = Scroll_3
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIListLayout_2.Padding = UDim.new(0, 10)

Preset_3.Name = "Preset"
Preset_3.Parent = Scroll_3
Preset_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Preset_3.BackgroundTransparency = 1.000
Preset_3.Size = UDim2.new(0.899999976, 0, 0, 30)

Message_2.Name = "Message"
Message_2.Parent = Preset_3
Message_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Message_2.BackgroundTransparency = 1.000
Message_2.Position = UDim2.new(0.150000006, 0, 0, 0)
Message_2.Size = UDim2.new(0.850000024, 0, 1, 0)
Message_2.Font = Enum.Font.SourceSans
Message_2.Text = "PVEye requested to kick PhantomVisual. Message | Aimbotter lmao\\nDetails: Hit nil lol xd"
Message_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Message_2.TextScaled = true
Message_2.TextSize = 14.000
Message_2.TextWrapped = true
Message_2.TextXAlignment = Enum.TextXAlignment.Left
Message_2.TextYAlignment = Enum.TextYAlignment.Top

Stamp_2.Name = "Stamp"
Stamp_2.Parent = Preset_3
Stamp_2.AnchorPoint = Vector2.new(0, 0.5)
Stamp_2.BackgroundColor3 = Color3.fromRGB(255, 220, 0)
Stamp_2.BackgroundTransparency = 1.000
Stamp_2.Position = UDim2.new(0, 0, 0.5, 0)
Stamp_2.Size = UDim2.new(0.150000006, 0, 0.5, 0)
Stamp_2.Font = Enum.Font.SourceSansBold
Stamp_2.Text = "13:48:44"
Stamp_2.TextColor3 = Color3.fromRGB(255, 255, 0)
Stamp_2.TextScaled = true
Stamp_2.TextSize = 14.000
Stamp_2.TextWrapped = true

SearchBar_3.Name = "SearchBar"
SearchBar_3.Parent = Client
SearchBar_3.AnchorPoint = Vector2.new(0.5, 1)
SearchBar_3.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
SearchBar_3.BorderSizePixel = 0
SearchBar_3.Position = UDim2.new(0.5, 0, 0.174999997, 0)
SearchBar_3.Size = UDim2.new(0.899999976, 0, 0.0500000007, 0)
SearchBar_3.Font = Enum.Font.SourceSansLight
SearchBar_3.Text = "Search"
SearchBar_3.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchBar_3.TextScaled = true
SearchBar_3.TextSize = 14.000
SearchBar_3.TextWrapped = true

ServerTab.Name = "ServerTab"
ServerTab.Parent = Logs_2
ServerTab.AnchorPoint = Vector2.new(1, 0)
ServerTab.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ServerTab.BorderSizePixel = 0
ServerTab.Position = UDim2.new(0.5, 0, 0.0500000007, 0)
ServerTab.Size = UDim2.new(0.449999988, 0, 0.075000003, 0)
ServerTab.Font = Enum.Font.SourceSans
ServerTab.Text = "Server"
ServerTab.TextColor3 = Color3.fromRGB(255, 255, 255)
ServerTab.TextScaled = true
ServerTab.TextSize = 14.000
ServerTab.TextWrapped = true

ClientTab.Name = "ClientTab"
ClientTab.Parent = Logs_2
ClientTab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ClientTab.BorderSizePixel = 0
ClientTab.Position = UDim2.new(0.5, 0, 0.0500000007, 0)
ClientTab.Size = UDim2.new(0.449999988, 0, 0.075000003, 0)
ClientTab.Font = Enum.Font.SourceSans
ClientTab.Text = "Client"
ClientTab.TextColor3 = Color3.fromRGB(255, 255, 255)
ClientTab.TextScaled = true
ClientTab.TextSize = 14.000
ClientTab.TextWrapped = true

Close.Name = "Close"
Close.Parent = Main
Close.AnchorPoint = Vector2.new(0.5, 0.5)
Close.BackgroundColor3 = Color3.fromRGB(255, 119, 119)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(1, 0, 0, 0)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.ZIndex = 3
Close.Font = Enum.Font.Cartoon
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true

UIAspectRatioConstraint.Parent = Main
UIAspectRatioConstraint.AspectRatio = 1.800

WatchDisplay.Name = "WatchDisplay"
WatchDisplay.Parent = WatchGUI
WatchDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WatchDisplay.BackgroundTransparency = 1.000
WatchDisplay.Size = UDim2.new(1, 0, 1, 0)

Side.Name = "Side"
Side.Parent = WatchDisplay
Side.AnchorPoint = Vector2.new(0, 0.5)
Side.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Side.BackgroundTransparency = 1.000
Side.Position = UDim2.new(0, 0, 0.5, 0)
Side.Size = UDim2.new(0.100000001, 0, 0.300000012, 0)

WASD.Name = "WASD"
WASD.Parent = Side
WASD.AnchorPoint = Vector2.new(0.5, 0.5)
WASD.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WASD.BackgroundTransparency = 1.000
WASD.Position = UDim2.new(0.5, 0, 0.75, 0)
WASD.Size = UDim2.new(0.850000024, 0, 0.455000013, 0)

W.Name = "W"
W.Parent = WASD
W.AnchorPoint = Vector2.new(0.5, 0)
W.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
W.BorderSizePixel = 2
W.Position = UDim2.new(0.5, 0, 0.200000003, 0)
W.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)

TextLabel_6.Parent = W
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "W"
TextLabel_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextWrapped = true

S.Name = "S"
S.Parent = WASD
S.AnchorPoint = Vector2.new(0.5, 0)
S.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
S.BorderSizePixel = 2
S.Position = UDim2.new(0.5, 0, 0.550000012, 0)
S.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)

TextLabel_7.Parent = S
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "S"
TextLabel_7.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14.000
TextLabel_7.TextWrapped = true

A.Name = "A"
A.Parent = WASD
A.AnchorPoint = Vector2.new(0.5, 0)
A.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
A.BorderSizePixel = 2
A.Position = UDim2.new(0.150000006, 0, 0.550000012, 0)
A.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)

TextLabel_8.Parent = A
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "A"
TextLabel_8.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14.000
TextLabel_8.TextWrapped = true

D.Name = "D"
D.Parent = WASD
D.AnchorPoint = Vector2.new(0.5, 0)
D.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
D.BorderSizePixel = 2
D.Position = UDim2.new(0.850000024, 0, 0.550000012, 0)
D.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)

TextLabel_9.Parent = D
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.Size = UDim2.new(0.600000024, 0, 0.600000024, 0)
TextLabel_9.Font = Enum.Font.SourceSans
TextLabel_9.Text = "D"
TextLabel_9.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_9.TextScaled = true
TextLabel_9.TextSize = 14.000
TextLabel_9.TextWrapped = true

MOUSE.Name = "MOUSE"
MOUSE.Parent = Side
MOUSE.AnchorPoint = Vector2.new(0.5, 0.5)
MOUSE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MOUSE.BackgroundTransparency = 1.000
MOUSE.Position = UDim2.new(0.5, 0, 0.25, 0)
MOUSE.Size = UDim2.new(0.850000024, 0, 0.455000013, 0)

Mouse.Name = "Mouse"
Mouse.Parent = MOUSE
Mouse.AnchorPoint = Vector2.new(0.5, 0.5)
Mouse.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Mouse.BorderSizePixel = 2
Mouse.Position = UDim2.new(0.5, 0, 0.5, 0)
Mouse.Size = UDim2.new(0.319999993, 0, 0.400000006, 0)

Left.Name = "Left"
Left.Parent = Mouse
Left.AnchorPoint = Vector2.new(0.5, 0)
Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Left.BorderSizePixel = 0
Left.Position = UDim2.new(0.25, 0, 0, 0)
Left.Size = UDim2.new(0.5, 0, 0.5, 0)

Right.Name = "Right"
Right.Parent = Mouse
Right.AnchorPoint = Vector2.new(0.5, 0)
Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Right.BorderSizePixel = 0
Right.Position = UDim2.new(0.75, 0, 0, 0)
Right.Size = UDim2.new(0.5, 0, 0.5, 0)

Middle.Name = "Middle"
Middle.Parent = Mouse
Middle.AnchorPoint = Vector2.new(0.5, 1)
Middle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Middle.BorderSizePixel = 2
Middle.Position = UDim2.new(0.5, 0, 0.5, 0)
Middle.Size = UDim2.new(0.100000001, 0, 0.200000003, 0)

accent_6.Name = "accent"
accent_6.Parent = Mouse
accent_6.AnchorPoint = Vector2.new(0.5, 1)
accent_6.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
accent_6.BackgroundTransparency = -0.010
accent_6.BorderSizePixel = 0
accent_6.Position = UDim2.new(0.5, 0, 0.5, 2)
accent_6.Size = UDim2.new(1, 0, 0, 2)

accent_7.Name = "accent"
accent_7.Parent = Mouse
accent_7.AnchorPoint = Vector2.new(0.5, 0)
accent_7.BackgroundColor3 = Color3.fromRGB(27, 42, 53)
accent_7.BorderSizePixel = 0
accent_7.Position = UDim2.new(0.5, 0, 0, 0)
accent_7.Size = UDim2.new(0, 2, 0.25, 2)

Return.Name = "Return"
Return.Parent = Side
Return.AnchorPoint = Vector2.new(0, 1)
Return.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Return.Size = UDim2.new(1, 0, 0, 30)
Return.Font = Enum.Font.SourceSansLight
Return.Text = "RETURN"
Return.TextColor3 = Color3.fromRGB(255, 255, 255)
Return.TextScaled = true
Return.TextSize = 14.000
Return.TextWrapped = true

UIAspectRatioConstraint_2.Parent = Side
UIAspectRatioConstraint_2.AspectRatio = 0.500

ICON.Name = "ICON"
ICON.Parent = WatchDisplay
ICON.AnchorPoint = Vector2.new(0.5, 0.5)
ICON.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ICON.BorderSizePixel = 0
ICON.Size = UDim2.new(0, 10, 0, 10)

Open.Name = "Open"
Open.Parent = WatchGUI
Open.AnchorPoint = Vector2.new(0, 1)
Open.BackgroundColor3 = Color3.fromRGB(59, 130, 234)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0.100000001, 0, 1, 0)
Open.Size = UDim2.new(0, 40, 0, 20)
Open.ZIndex = 3
Open.Font = Enum.Font.SourceSansLight
Open.Text = "PVEye"
Open.TextColor3 = Color3.fromRGB(0, 0, 0)
Open.TextScaled = true
Open.TextSize = 14.000
Open.TextWrapped = true

-- Scripts:

local function JPXPX_fake_script() -- WatchGUI.LocalScript 
	local script = Instance.new('LocalScript', WatchGUI)

	local game = game
	
	local Players = game:GetService('Players')
	local RunService = game:GetService('RunService')
	local ReplicatedStorage = game:GetService('ReplicatedStorage')
	
	local LocalPlayer = Players.LocalPlayer
	local Camera = workspace.Camera
	local Mouse = LocalPlayer:GetMouse()
	
	wait(.1)
	
	local GUI = script.Parent
	local Open = GUI:WaitForChild('Open')
	local Main = GUI:WaitForChild('Main')
	local WatchDisplay = GUI:WaitForChild('WatchDisplay')
		local Base = Main.Base
	
	do
		local About = Base.About
		
		local Version = About.Version
			local Description = Version.Description
		
		Description.Text = '1.1.1v\nLast Updated: 02-7-2019\nLast Updated By: PhantomVisual'
		
	end
	
	do
		local Navigator = Main.Navigator
			local Select = Navigator.Select
		
		local Close = Main.Close
		Close.MouseButton1Click:Connect(function()
			Main.Visible = false
			Open.Visible = true
		end)
		
		Open.MouseButton1Click:Connect(function()
			Main.Visible = true
			Open.Visible = false
		end)
		
		local BaseChildren = Base:GetChildren()
		local SelectChildren = Select:GetChildren()
		
		for i=1, #SelectChildren, 1 do
			SelectChildren[i].Button.MouseButton1Click:Connect(function()
				for x=1, #BaseChildren, 1 do
					BaseChildren[x].Visible = false
				end
				local FindPage = Base:FindFirstChild(SelectChildren[i].Name)
				if (FindPage) then
					FindPage.Visible = true
				end
			end)
		end
	end
	
	do
		local ud2 = UDim2.new
		
		local ScreenWatchFolder = ReplicatedStorage:WaitForChild('ScreenWatch')
		
			local Icon = WatchDisplay.ICON
			local Side = WatchDisplay.Side
				local MOUSE = Side.MOUSE
				local WASD = Side.WASD
				local Return = Side.Return
			
		local ScreenWatch = Base.ScreenWatch
			local Scroll = ScreenWatch.Scroll
				local GridLayout = Scroll.UIGridLayout
				local Preset = Scroll.Preset
			local SearchBar = ScreenWatch.SearchBar
		
		GridLayout.Changed:Connect(function()
			local ACS = GridLayout.AbsoluteContentSize
			Scroll.CanvasSize = UDim2.new(0, ACS.X, 0, ACS.Y)
		end)
		SearchBar.Changed:Connect(function()
			local Children = Scroll:GetChildren()
			for i=1, #Children, 1 do
				if (Children[i].ClassName == 'Frame') and (Children[i] ~= Preset) then
					local lwr = Children[i].Name:lower()
					local text = SearchBar.Text:lower()
					if (lwr:match(text)) then
						Children[i].Visible = true
					else
						Children[i].Visible = false
					end
				end
			end
		end)
			
		WatchDisplay.Visible = false
		Preset.Visible = false
		Open.Visible = false
		
		local CurrentlyWatching = nil
		
		local Cursor = GUI.Cursor
		Cursor.Parent = nil
		
		local PlayerAdded = function(Player)
			local Clone = Preset:Clone()
			Clone.Name = Player.Name
			Clone.Username.Text = Player.Name
			Clone.ImageLabel.Image = 'https://www.roblox.com/bust-thumbnail/image?userId=' .. Player.UserId .. '&width=420&height=420&format=image'
			Clone.Button.MouseButton1Click:Connect(function()
				CurrentlyWatching = ScreenWatchFolder:FindFirstChild(Player.Name)
				if (CurrentlyWatching) then
					Cursor.Parent = workspace
					Main.Visible = false
					WatchDisplay.Visible = true
				end
			end)
			Clone.Parent = Scroll
			Clone.Visible = true
		end
		
		local CurrentPlayers = Players:GetPlayers()
		for i=1, #CurrentPlayers, 1 do
			PlayerAdded(CurrentPlayers[i])
		end
		Players.PlayerAdded:Connect(PlayerAdded)
		Players.PlayerRemoving:Connect(function(Player)
			local Find = Scroll:FindFirstChild(Player.Name)
			if (Find) then
				Find:Destroy()
			end
		end)
		
		Return.MouseButton1Click:Connect(function()
			CurrentlyWatching = nil
			Cursor.Parent = nil
			Main.Visible = true
			WatchDisplay.Visible = false
		end)
		
		do
			local c3, cf = Color3.new, CFrame.new
			local Pressed, NotPressed = c3(1,0,0), c3(1,1,1)
			
			RunService.RenderStepped:Connect(function()
				if (CurrentlyWatching) then
					Camera.CFrame = CurrentlyWatching.Camera.Value
					Camera.FieldOfView = CurrentlyWatching.FieldOfView.Value
					
					Cursor.CFrame = cf(CurrentlyWatching.MousePos.Value)
					
					WASD.W.BackgroundColor3 = (CurrentlyWatching.W.Value and Pressed) or (NotPressed)
					WASD.A.BackgroundColor3 = (CurrentlyWatching.A.Value and Pressed) or (NotPressed)
					WASD.S.BackgroundColor3 = (CurrentlyWatching.S.Value and Pressed) or (NotPressed)
					WASD.D.BackgroundColor3 = (CurrentlyWatching.D.Value and Pressed) or (NotPressed)
					
					MOUSE.Mouse.Left.BackgroundColor3 = (CurrentlyWatching.Left.Value and Pressed) or (NotPressed)
					MOUSE.Mouse.Right.BackgroundColor3 = (CurrentlyWatching.Right.Value and Pressed) or (NotPressed)
					MOUSE.Mouse.Middle.BackgroundColor3 = (CurrentlyWatching.Middle.Value and Pressed) or (NotPressed)
				end
			end)
		end
	end
	
	do
		local rgb = Color3.fromRGB
		
		local Logs = Base.Logs
			local Server = Logs.Server
			local Client = Logs.Client
		
		do
			local ClientTab = Logs.ClientTab
			local ServerTab = Logs.ServerTab
			
			local off, on = rgb(30,30,30), rgb(40,40,40)
			
			ClientTab.MouseButton1Click:Connect(function()
				Server.Visible = false
				Client.Visible = true
				ClientTab.BackgroundColor3 = on
				ServerTab.BackgroundColor3 = off
			end)
			
			ServerTab.MouseButton1Click:Connect(function()
				Server.Visible = true
				Client.Visible = false
				ClientTab.BackgroundColor3 = off
				ServerTab.BackgroundColor3 = on
			end)
		end
		
		local createlog = {}
		local LoadTabs = function(Side)
			local Scroll = Side.Scroll
				local ListLayout = Scroll.UIListLayout
				local Preset = Scroll.Preset
			local SearchBar = Side.SearchBar
			
			Preset.Visible = false
			
			ListLayout.Changed:Connect(function()
				local ACS = ListLayout.AbsoluteContentSize
				Scroll.CanvasSize = UDim2.new(0, ACS.X, 0, ACS.Y)
			end)
			
			createlog[Side.Name] = function(Info)
				local newLog = Preset:Clone()
				newLog.Stamp.Text = Info.Stamp
				newLog.Message.Text = Info.Message
				newLog.Name = Info.Stamp .. ' ' .. Info.Message
				newLog.Parent = Scroll
				newLog.Visible = true
			end
			
			SearchBar.Changed:Connect(function()
				local Children = Scroll:GetChildren()
				for i=1, #Children do
					if (Children[i].ClassName == 'Frame') and (Children[i] ~= Preset) then
						local lwr = Children[i].Name:lower()
						local text = SearchBar.Text:lower()
						if (lwr:match(text)) then
							Children[i].Visible = true
						else
							Children[i].Visible = false
						end
					end
				end
			end)
		end
		LoadTabs(Client)
		LoadTabs(Server)
		
		local LogsRemote = ReplicatedStorage:WaitForChild('Logs')
		
		LogsRemote.OnClientEvent:Connect(function(Request, Info1, Info2)
			if (Request == 'Server') then
				createlog.Server(Info1)
			elseif (Request == 'Client') then
				createlog.Client(Info1)
			elseif (Request == 'History') then
				if (Info1 == 'Server') then
					for i,v in next, Info2 do
						createlog.Server(v)
					end
				elseif (Info1 == 'Client') then
					for i,v in next, Info2 do
						createlog.Client(v)
					end
				end
			end
		end)
	end
end
coroutine.wrap(JPXPX_fake_script)()
