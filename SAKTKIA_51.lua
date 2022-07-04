--[[
  Survive and kill the killers in area 51 Hack
  By: #C0KE
]]--

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib('Survive & Kill the killers in Area 51', 'Sentinel')
local MiscTab = Window:NewTab('Misc.')
local GunsTab = Window:NewTab('Guns')
local TeleTab = Window:NewTab('Teleports')

local MTS = MiscTab:NewSection('Misc. Section')
local GTS = GunsTab:NewSection('Guns Section')
local TTS = TeleTab:NewSection('Teleports Section')

MTS:NewSlider('WalkSpeed', 'Change your speed!', 250, 16, function(v)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

MTS:NewSlider('JumpPower', 'Change your jumppower!', 250, 50, function(v)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)

MTS:NewToggle('Infinite Jump', 'Enable Infinite Jump', function(v)
	InfiniteJumpEnabled = v
	game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled == true then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)

end)

MTS:NewButton('E To Noclip', 'Press E to enable/disable noclip', function()
	noclip = false
	game:GetService('RunService').Stepped:connect(function()
		if noclip then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end)

	plr = game.Players.LocalPlayer
	mouse = plr:GetMouse()
	mouse.KeyDown:connect(function(key)
	 
	if key == "e" then
		noclip = not noclip
			game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
		end
	end)

	print('Loaded')
	print('Press "E" to noclip')
end)

MTS:NewButton('Infinite Yeild', 'Enables Infinite Yield admin', function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

GTS:NewButton('Sniper', 'Get the sniper gun!', function()
	local x = 184.08
	local y = 306.5
	local z = 176.32
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

GTS:NewButton('Rifle', 'Get the rifle gun!', function()
	local x = 122
	local y = 323.5
	local z = 699
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

GTS:NewButton('Ray Gun', 'Get the ray gun!', function()
	local x = 231.32
	local y = 373.5
	local z = 39.78
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

GTS:NewButton('Assult Gun', 'Get the assult gun!', function()
	local x = 112.07
	local y = 335.5
	local z = 556
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

GTS:NewButton('Pistol', 'Get the pistol gun!', function()
	local x = 164.87
	local y = 343.5
	local z = 607.16
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

GTS:NewButton('M1014', 'Get the gun M014 gun!', function()
	local x = 147.87
	local y = 259.7
	local z = 315.49
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

GTS:NewButton('MI6A2', 'Get the MI6A2 gun!', function()
	local x = 4.15
	local y = 267.7
	local z = 179.9
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

GTS:NewButton('R870', 'Get the R870 gun!', function()
	local x = 137.56
	local y = 333.5
	local z = 497.94
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

GTS:NewButton('M481', 'Get the M481 gun!', function()
	local x = 370.97
	local y = 323.5
	local z = 650.87
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

GTS:NewButton('AK-47', 'Get the AK-47 gun!', function()
	local x = 310.04
	local y = 271.7
	local z = 137.09
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

TTS:NewButton('Spawn', 'Teleport to spawn', function()
	local x = 324.54
	local y = 511.5
	local z = 419.38
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

TTS:NewButton('Cameras', 'Teleport to cameras', function()
	local x = 91.2
	local y = 314
	local z = 172.4
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

TTS:NewButton('Pack A Punch', 'Teleport to pack a punch', function()
	local x = 281
	local y = 325.5
	local z = 784
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

TTS:NewButton('Command Area', 'Teleport to command area', function()
	local x = 138.42
	local y = 333.5
	local z = 535.41
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)

TTS:NewButton('Key Room', 'Teleport to key room', function()
	local x = 143
	local y = 333
	local z = 500
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(x,y,z))
end)
