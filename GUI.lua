local ShootGUI = Instance.new("ScreenGui")
local Background = Instance.new("Frame")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UICorner = Instance.new("UICorner")
local ShootLabel = Instance.new("TextLabel")
local ShootButton = Instance.new("TextButton")

local GetRandomString = function()
	local AByte = string.byte("a")
	local ZByte = string.byte("z")
	local String = "" do
		for _ = 1, math.random(16, 32) do
		    local Character = string.char(math.random(AByte, ZByte))
		
		    String = (math.random(1, 2) == 1 and string.upper(Character)) or Character
		end
	end
	
	return String
end

ShootGUI.Name = GetRandomString()
ShootGUI.Parent = game:GetService("CoreGui")
ShootGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Background.Name = "Background"
Background.Parent = ShootGUI
Background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Background.BackgroundTransparency = 0.500
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0.714870572, 0, 0.0762942359, 0)
Background.Size = UDim2.new(0.0685999319, 0, 0.138787344, 0)

UIAspectRatioConstraint.Parent = Background

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Background

ShootLabel.Name = "ShootLabel"
ShootLabel.Parent = Background
ShootLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ShootLabel.BackgroundTransparency = 1.000
ShootLabel.Position = UDim2.new(0.142803907, 0, 0.142803878, 0)
ShootLabel.Size = UDim2.new(0.699999988, 0, 0.699999988, 0)
ShootLabel.Font = Enum.Font.GothamBold
ShootLabel.Text = "Shoot"
ShootLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
ShootLabel.TextScaled = true
ShootLabel.TextSize = 14.000
ShootLabel.TextWrapped = true

ShootButton.Name = "ShootButton"
ShootButton.Parent = Background
ShootButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ShootButton.BackgroundTransparency = 1.000
ShootButton.Size = UDim2.new(1, 0, 1, 0)
ShootButton.Font = Enum.Font.SourceSans
ShootButton.Text = ""
ShootButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ShootButton.TextScaled = true
ShootButton.TextSize = 14.000
ShootButton.TextWrapped = true

return ShootButton
