task.wait()
script.Name = "LocalScript"
script:Destroy()
getfenv().script = nil

game:GetService("StarterPlayer"):WaitForChild("StarterPlayerScripts"):WaitForChild("Client"):Destroy()

local Player = game:GetService("Players").LocalPlayer

local Test = game:GetService("ReplicatedStorage"):WaitForChild("Test")
local Test2 = game:GetService("ReplicatedStorage"):WaitForChild("Test 2")

local Mouse = Player:GetMouse()

local Shooting = false
local GotShooting = false

local Key = nil
local FakeShuffledTable = nil

local SharedIndex = "487894789374892749274982"

Test.OnClientEvent:Connect(function(Yea, Argument)
	if Yea == 1 then
		FakeShuffledTable = Argument
		shared[SharedIndex] = FakeShuffledTable
		FakeShuffledTable = nil
	elseif Yea == 2 then
		Key = Argument
	end
end)

Test:FireServer("Magnet API V2")

repeat task.wait() until shared[SharedIndex] ~= nil

local ShuffledTable = shared[SharedIndex]
shared[SharedIndex] = nil

local GetShuffledPosition = function(Position1 : Vector3, Position2 : Vector3) : ShuffledPosition
	local UnshuffledTable = {
		X = Position1.X,
		Y = Position1.Y,
		Z = Position1.Z,
		x = Position2.X,
		y = Position2.Y,
		z = Position2.Z
	}
	
	return {
		UnshuffledTable[ShuffledTable[1]],
		UnshuffledTable[ShuffledTable[2]],
		UnshuffledTable[ShuffledTable[3]],
		UnshuffledTable[ShuffledTable[4]],
		UnshuffledTable[ShuffledTable[5]],
		UnshuffledTable[ShuffledTable[6]]
	}
end

local GetShooting = function()
	GotShooting = not GotShooting
	
	return (GotShooting and Shooting)
end

Test2.OnClientInvoke = GetShooting

Mouse.Button1Down:Connect(function()
	if Key ~= nil and Shooting == false then
		Shooting = true
		
		local ShuffledPosition = GetShuffledPosition(Mouse.Hit.Position, Player.Character.Torso.Position)
		
		Test:FireServer(Key, ShuffledPosition)
		
		local Start = tick()
		
		while task.wait() do
			if tick() - Start > 1 and GotShooting == false then
				return Player["Kick\0\0"](Player, "Oh?")
			end
			
			if GotShooting == true then
				break
			end
		end
		
		GotShooting = false
		
		task.wait(1)
		Shooting = false
	end
end)
