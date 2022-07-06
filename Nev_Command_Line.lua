--[[

====================================
|         NEV COMMAND LINE         |
====================================
Created By: #C0KE

]]--

--|| Check Loaded ||--
if not game:IsLoaded() then
	game.Loaded:Wait()
end
while not game:GetService("Players").LocalPlayer do
	game:GetService("Players").PlayerAdded:Wait()
end
while not game:GetService("CoreGui") do
	wait()
end

if NCL_isLOADED then print("Nev Command Line is already loaded!") return end

print("\n===NEV COMMAND LINE===\nSuccessfully Loaded!\nCreated By: #C0KE\n")

pcall(function()
	getgenv().NCL_isLOADED = true
end)

--|| Settings ||--
local NCL_Version = "1.0"
CoreGUI = game:GetService("CoreGui")
Players = game:GetService("Players")
UI_Parent = nil

input = game:GetService("UserInputService")
tweenService = game:GetService("TweenService")
tweenInfo = TweenInfo.new
low = string.lower
RunService = game:GetService("RunService")

--|| GUI ||--
local NevCoreGui = Instance.new("ScreenGui")
local Loader = Instance.new("Frame")
local Top = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Content = Instance.new("Frame")
local Top_2 = Instance.new("Frame")
local Header = Instance.new("TextLabel")
local Bottom = Instance.new("Frame")
local Bar = Instance.new("Frame")
local Progress = Instance.new("Frame")
local Amount = Instance.new("TextLabel")
local LoadText = Instance.new("TextLabel")
local LoadObj = Instance.new("TextLabel")
local NCL = Instance.new("Frame")
local Top_3 = Instance.new("Frame")
local Center = Instance.new("Frame")
local Title_2 = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local Bottom_2 = Instance.new("Frame")
local CmdLine = Instance.new("TextBox")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local Label = Instance.new("TextLabel")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local Settings = Instance.new("TextButton")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local Configure = Instance.new("TextButton")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local Drag = Instance.new("Frame")
local Label_2 = Instance.new("TextLabel")
local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
local Alert = Instance.new("Frame")
local Top_4 = Instance.new("Frame")
local Title_3 = Instance.new("TextLabel")
local UITextSizeConstraint_7 = Instance.new("UITextSizeConstraint")
local Content_2 = Instance.new("Frame")
local Top_5 = Instance.new("Frame")
local Msg = Instance.new("TextLabel")
local UITextSizeConstraint_8 = Instance.new("UITextSizeConstraint")

--|| Code ||--
local function randomString(length)
	local Characters = {}
	for _, Charset in next, {{"A", "Z"}, {"a", "z"}, {"0", "9"}} do
		for Character = string.byte(Charset[1]), string.byte(Charset[2]) do
		table.insert(Characters, string.char(Character))
		end
	end

	local Randomizer = Random.new(tick() * time())
	local String = {}
	for Character_Index = 1, (tonumber(Length) or 64) do
		table.insert(String, Characters[Randomizer:NextInteger(1, #Characters)])
	end
	return table.concat(String)
end

if get_hidden_gui then UI_Parent = get_hidden_gui() else UI_Parent = CoreGUI end
NevCoreGui.Name = tostring(randomString(10))
NevCoreGui.Parent = UI_Parent

function makeDraggable(frame, parent)
	parent = parent or frame
	local dragging = false
	local dragInput, mousePos, framePos

	frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			mousePos = input.Position
			framePos = parent.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)

	input.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			local delta = input.Position - mousePos
			parent.Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
		end
	end)
end

function TweenObject(Object, PropertiesTable, doWait, Duration, ...)
	newTween = tweenService:Create(Object, tweenInfo(Duration, ...), PropertiesTable)
	newTween:Play()
	if doWait then
		newTween.Completed:Wait()
	end
end

Loader.Name = "Loader"
Loader.Parent = NevCoreGui
Loader.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Loader.BackgroundTransparency = 0.800
Loader.BorderSizePixel = 0
Loader.Position = UDim2.new(0.5, -172, 0.5, -85)
Loader.Size = UDim2.new(0, 345, 0, 170)

Top.Name = "Top"
Top.Parent = Loader
Top.BackgroundColor3 = Color3.fromRGB(156, 156, 156)
Top.BackgroundTransparency = 0.500
Top.BorderColor3 = Color3.fromRGB(255, 255, 255)
Top.BorderSizePixel = 2
Top.Position = UDim2.new(0.0119565129, 0, 0.0352941193, 0)
Top.Size = UDim2.new(0.976086974, 0, 0.282352984, 0)

Title.Name = "Title"
Title.Parent = Top
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Size = UDim2.new(1, 0, 1, 0)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "N E V"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 21.000

Content.Name = "Content"
Content.Parent = Loader
Content.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Content.BackgroundTransparency = 0.700
Content.BorderColor3 = Color3.fromRGB(255, 255, 255)
Content.BorderSizePixel = 2
Content.Position = UDim2.new(0.0119565213, 0, 0.352941185, 0)
Content.Size = UDim2.new(0.976086974, 0, 0.600000083, 0)

Top_2.Name = "Top"
Top_2.Parent = Content
Top_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Top_2.BackgroundTransparency = 0.400
Top_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
Top_2.BorderSizePixel = 2
Top_2.Size = UDim2.new(1, 0, 0.325490296, 0)

Header.Name = "Header"
Header.Parent = Top_2
Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.BackgroundTransparency = 1.000
Header.BorderSizePixel = 0
Header.Size = UDim2.new(1, 0, 1, 0)
Header.Font = Enum.Font.SourceSansSemibold
Header.Text = "L O A D E R"
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.TextSize = 14.000

Bottom.Name = "Bottom"
Bottom.Parent = Content
Bottom.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Bottom.BackgroundTransparency = 0.400
Bottom.BorderColor3 = Color3.fromRGB(255, 255, 255)
Bottom.BorderSizePixel = 2
Bottom.Position = UDim2.new(0, 0, 0.390195906, 0)
Bottom.Size = UDim2.new(1, 0, 0.609804034, 0)

Bar.Name = "Bar"
Bar.Parent = Bottom
Bar.BackgroundColor3 = Color3.fromRGB(76, 76, 76)
Bar.BorderColor3 = Color3.fromRGB(255, 255, 255)
Bar.Position = UDim2.new(0.0207869336, 0, 0.436255515, 0)
Bar.Size = UDim2.new(0.958426118, 0, 0.432955146, 0)

Progress.Name = "Progress"
Progress.Parent = Bar
Progress.BackgroundColor3 = Color3.fromRGB(230, 1, 1)
Progress.BorderColor3 = Color3.fromRGB(255, 255, 255)
Progress.BorderSizePixel = 0
Progress.Size = UDim2.new(1, 0, 1, 0)

Amount.Name = "Amount"
Amount.Parent = Bar
Amount.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Amount.BackgroundTransparency = 1.000
Amount.BorderSizePixel = 0
Amount.Size = UDim2.new(1, 0, 1, 0)
Amount.Font = Enum.Font.SourceSansBold
Amount.Text = "L O A D I N G"
Amount.TextColor3 = Color3.fromRGB(0, 0, 0)
Amount.TextSize = 17.000

LoadText.Name = "LoadText"
LoadText.Parent = Bottom
LoadText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadText.BackgroundTransparency = 1.000
LoadText.BorderSizePixel = 0
LoadText.Position = UDim2.new(0.0207869336, 0, 0, 0)
LoadText.Size = UDim2.new(0.471417964, 0, 0.436255574, 0)
LoadText.Font = Enum.Font.SourceSansBold
LoadText.Text = "Nev Command Line"
LoadText.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadText.TextSize = 17.000
LoadText.TextWrapped = true
LoadText.TextXAlignment = Enum.TextXAlignment.Left

LoadObj.Name = "LoadObj"
LoadObj.Parent = Bottom
LoadObj.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LoadObj.BackgroundTransparency = 1.000
LoadObj.BorderSizePixel = 0
LoadObj.Position = UDim2.new(0.629547119, 0, 0, 0)
LoadObj.Size = UDim2.new(0.34966591, 0, 0.436255574, 0)
LoadObj.Font = Enum.Font.SourceSansBold
LoadObj.Text = "1.0"
LoadObj.TextColor3 = Color3.fromRGB(255, 255, 255)
LoadObj.TextSize = 17.000
LoadObj.TextWrapped = true
LoadObj.TextXAlignment = Enum.TextXAlignment.Right

NCL.Name = "NCL"
NCL.Parent = NevCoreGui
NCL.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NCL.BackgroundTransparency = 1.000
NCL.BorderSizePixel = 0
NCL.Position = UDim2.new(0.217231199, 0, 0.715851605, 0)
NCL.Size = UDim2.new(0.565537632, 0, 0.264755458, 0)
NCL.Visible = false

Top_3.Name = "Top"
Top_3.Parent = NCL
Top_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Top_3.BackgroundTransparency = 0.500
Top_3.BorderSizePixel = 0
Top_3.Position = UDim2.new(-0.00028394314, 0, 0.142887726, 0)
Top_3.Size = UDim2.new(1, 0, 0.220000014, 0)

Center.Name = "Center"
Center.Parent = Top_3
Center.BackgroundColor3 = Color3.fromRGB(230, 1, 1)
Center.BorderSizePixel = 0
Center.Position = UDim2.new(-0.000283943111, 0, 0.233796567, 0)
Center.Size = UDim2.new(0.99999994, 0, 0.522727251, 0)

Title_2.Name = "Title"
Title_2.Parent = Center
Title_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_2.BackgroundTransparency = 1.000
Title_2.BorderSizePixel = 0
Title_2.Size = UDim2.new(1, 0, 1, 0)
Title_2.Font = Enum.Font.SourceSansSemibold
Title_2.Text = "NEV COMMAND LINE"
Title_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_2.TextScaled = true
Title_2.TextSize = 19.000
Title_2.TextWrapped = true

UITextSizeConstraint.Parent = Title_2
UITextSizeConstraint.MaxTextSize = 40

Bottom_2.Name = "Bottom"
Bottom_2.Parent = NCL
Bottom_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Bottom_2.BackgroundTransparency = 0.500
Bottom_2.BorderSizePixel = 0
Bottom_2.Position = UDim2.new(0, 0, 0.36499995, 0)
Bottom_2.Size = UDim2.new(1, 0, 0.63500005, 0)

CmdLine.Name = "CmdLine"
CmdLine.Parent = Bottom_2
CmdLine.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
CmdLine.BorderColor3 = Color3.fromRGB(108, 108, 108)
CmdLine.BorderSizePixel = 3
CmdLine.Position = UDim2.new(0.0413318016, 0, 0.125984251, 0)
CmdLine.Size = UDim2.new(0.918484449, 0, 0.204724416, 0)
CmdLine.Font = Enum.Font.Code
CmdLine.Text = ""
CmdLine.TextColor3 = Color3.fromRGB(255, 255, 255)
CmdLine.TextScaled = true
CmdLine.TextSize = 14.000
CmdLine.TextWrapped = true

UITextSizeConstraint_2.Parent = CmdLine
UITextSizeConstraint_2.MaxTextSize = 40

Label.Name = "Label"
Label.Parent = Bottom_2
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.BorderSizePixel = 0
Label.Position = UDim2.new(0.0413318016, 0, 0.125984251, 0)
Label.Size = UDim2.new(0.0723306462, 0, 0.204724416, 0)
Label.Font = Enum.Font.SourceSansItalic
Label.Text = "CMD"
Label.TextColor3 = Color3.fromRGB(255, 255, 255)
Label.TextScaled = true
Label.TextSize = 24.000
Label.TextWrapped = true

UITextSizeConstraint_3.Parent = Label
UITextSizeConstraint_3.MaxTextSize = 40

Settings.Name = "Settings"
Settings.Parent = Bottom_2
Settings.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Settings.BorderColor3 = Color3.fromRGB(108, 108, 108)
Settings.BorderSizePixel = 3
Settings.Position = UDim2.new(0.0413318016, 0, 0.488188982, 0)
Settings.Size = UDim2.new(0.160734773, 0, 0.196850389, 0)
Settings.Font = Enum.Font.SourceSansSemibold
Settings.Text = "SETTINGS"
Settings.TextColor3 = Color3.fromRGB(255, 255, 255)
Settings.TextScaled = true
Settings.TextSize = 18.000
Settings.TextWrapped = true

UITextSizeConstraint_4.Parent = Settings
UITextSizeConstraint_4.MaxTextSize = 40

Configure.Name = "Configure"
Configure.Parent = Bottom_2
Configure.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Configure.BorderColor3 = Color3.fromRGB(108, 108, 108)
Configure.BorderSizePixel = 3
Configure.Position = UDim2.new(0.243398383, 0, 0.488188982, 0)
Configure.Size = UDim2.new(0.160734773, 0, 0.196850389, 0)
Configure.Font = Enum.Font.SourceSansSemibold
Configure.Text = "KEYBINDS"
Configure.TextColor3 = Color3.fromRGB(255, 255, 255)
Configure.TextScaled = true
Configure.TextSize = 18.000
Configure.TextWrapped = true

UITextSizeConstraint_5.Parent = Configure
UITextSizeConstraint_5.MaxTextSize = 40

Drag.Name = "Drag"
Drag.Parent = NCL
Drag.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Drag.BorderSizePixel = 0
Drag.Size = UDim2.new(0.200000003, 0, 0.140000015, 0)

Label_2.Name = "Label"
Label_2.Parent = Drag
Label_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label_2.BackgroundTransparency = 1.000
Label_2.BorderSizePixel = 0
Label_2.Size = UDim2.new(1, 0, 1, 0)
Label_2.Font = Enum.Font.SourceSans
Label_2.Text = "// DRAG"
Label_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Label_2.TextScaled = true
Label_2.TextSize = 19.000
Label_2.TextWrapped = true

UITextSizeConstraint_6.Parent = Label_2
UITextSizeConstraint_6.MaxTextSize = 40

Alert.Name = "Alert"
Alert.Parent = NevCoreGui
Alert.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Alert.BackgroundTransparency = 1.000
Alert.BorderSizePixel = 0
Alert.Position = UDim2.new(0.360662341, 0, 0.41315347, 0)
Alert.Size = UDim2.new(0.278675288, 0, 0.173693091, 0)
Alert.Visible = false

Top_4.Name = "Top"
Top_4.Parent = Alert
Top_4.BackgroundColor3 = Color3.fromRGB(156, 156, 156)
Top_4.BackgroundTransparency = 0.500
Top_4.BorderColor3 = Color3.fromRGB(255, 255, 255)
Top_4.BorderSizePixel = 2
Top_4.Position = UDim2.new(0.013043493, 0, 0, 0)
Top_4.Size = UDim2.new(0.973913014, 0, 0.466019422, 0)

Title_3.Name = "Title"
Title_3.Parent = Top_4
Title_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title_3.BackgroundTransparency = 1.000
Title_3.BorderSizePixel = 0
Title_3.Size = UDim2.new(1, 0, 1, 0)
Title_3.Font = Enum.Font.SourceSansBold
Title_3.Text = "A L E R T"
Title_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Title_3.TextScaled = true
Title_3.TextSize = 21.000
Title_3.TextWrapped = true

UITextSizeConstraint_7.Parent = Title_3
UITextSizeConstraint_7.MaxTextSize = 21

Content_2.Name = "Content"
Content_2.Parent = Alert
Content_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Content_2.BackgroundTransparency = 0.700
Content_2.BorderColor3 = Color3.fromRGB(255, 255, 255)
Content_2.BorderSizePixel = 2
Content_2.Position = UDim2.new(0.013043493, 0, 0.533980608, 0)
Content_2.Size = UDim2.new(0.973999977, 0, 0.465999991, 0)

Top_5.Name = "Top"
Top_5.Parent = Content_2
Top_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Top_5.BackgroundTransparency = 0.400
Top_5.BorderColor3 = Color3.fromRGB(255, 255, 255)
Top_5.BorderSizePixel = 2
Top_5.Size = UDim2.new(1, 0, 1, 0)

Msg.Name = "Msg"
Msg.Parent = Top_5
Msg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Msg.BackgroundTransparency = 1.000
Msg.BorderSizePixel = 0
Msg.Position = UDim2.new(0, 0, -0.0212765951, 0)
Msg.Size = UDim2.new(1, 0, 1.02127659, 0)
Msg.Font = Enum.Font.SourceSansSemibold
Msg.Text = "This is a test"
Msg.TextColor3 = Color3.fromRGB(255, 255, 255)
Msg.TextScaled = true
Msg.TextSize = 14.000
Msg.TextWrapped = true

UITextSizeConstraint_8.Parent = Msg
UITextSizeConstraint_8.MaxTextSize = 14

function alert(Title, Text)
	local minWidth, minHeight = 0.974, 0.466 --Scale Size
	
	Content.Size = UDim2.new(math.max(minWidth, Msg.TextBounds.X), 0, math.max(minHeight, Msg.TextBounds.Y), 0)
	
	Alert.Top.Title.Text = tostring(Title)
	Alert.Content.Top.Msg.Text = tostring(Text)

	Alert.Visible = true
	wait(3)
	Alert.Visible = false
end

cmdPrefix = "$"

local CMDS = {}
CMDS.Commands = {
	[cmdPrefix .. "prefix"] = "Shows the the command prefix.";
	[cmdPrefix .. "version"] = "Shows Nev Command Line version.";
	[cmdPrefix .. "noclip"] = "Enables noclip.";
	[cmdPrefix .. "clip"] = "Disabled noclip.";
	[cmdPrefix .. "nctoggle"] = "Toggless noclip.";
	[cmdPrefix .. "infiniteJump"] = "Enables/Disables infinite jump.";
	[cmdPrefix .. "infjump"] = "Enables/Disables infinite jump.";
	[cmdPrefix .. "walkspeed"] = "Set player walkspeed.";
	[cmdPrefix .. "ws"] = "Set player walkspeed.";
	[cmdPrefix .. "jumppower"] = "Set player jumppower";
	[cmdPrefix .. "jp"] = "Set player jumppower";
	[cmdPrefix .. "keybind.new"] = "Create new keybind."
}

local Noclipping = nil
local Clip = true
local infJump = false

input.JumpRequest:Connect(function()
	local Char = Players.LocalPlayer.Character
	if not Char then alert("E R R O R", "Cannot find character!") return end
	local Hum = Char:FindFirstChild("Humanoid")
	if not Hum then alert("E R R O R", "Cannot find humanoid!") return end
	if infJump then
		Hum:ChangeState(3)
	end
end)

local commandFunctions = {}

function createCMD(Name, Action)
	commandFunctions[Name] = Action
end

createCMD(cmdPrefix .. "close", function()
	NevCoreGui:Destroy()
	getgenv().NCL_isLOADED = false
end)

createCMD("prefix", function()
	alert("P R E F I X", "The current command prefix is '" .. cmdPrefix .. "'")
end)

createCMD(cmdPrefix .. "infinitejump", function()
	infJump = not infJump
end)

createCMD(cmdPrefix .. "infjump", function()
	infJump = not infJump
end)

createCMD(cmdPrefix .. "noclip", function()
	Clip = false
	local function Nocliploop()
		if Clip == false and Players.LocalPlayer.Character ~= nil then
			for _, child in pairs(Players.LocalPlayer.Character:GetDescendants()) do
				if child:IsA("BasePart") and child.CanCollide == true then
					child.CanCollide = false
				end
			end
		end
	end
	Noclipping = RunService.Stepped:Connect(NoclipLoop)
end)

createCMD(cmdPrefix .. "clip", function()
	if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
end)

createCMD(cmdPrefix .. "unnoclip", function()
	if Noclipping then
		Noclipping:Disconnect()
	end
	Clip = true
end)

createCMD(cmdPrefix .. "nctoggle", function()
	if Clip == true then
		Clip = false
		local function NoclipLoop()
			if Clip == false and Players.LocalPlayer.Character ~= nil then
				for _, child in pairs(Players.LocalPlayer.Character:GetDescendants()) do
					if child:IsA("BasePart") and child.CanCollide == true then
						child.CanCollide = false
					end
				end
			end
		end
		Noclipping = RunService.Stepped:Connect(NoclipLoop)
	else
		if Noclipping then
			Noclipping:Disconnect()
		end
		Clip = true
	end
end)

wait(8)

Loader.Visible = false
NCL.Visible = true
makeDraggable(Label_2, NCL)

CmdLine.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local Splits = string.split(CmdLine.Text, " ")
		if commandFunctions[low(Splits[1])] then
			commandFunctions[low(Splits[1])]()
		else
			alert("E R R O R", Splits[1] .. " is not a valid command!")
		end
	end
end)
