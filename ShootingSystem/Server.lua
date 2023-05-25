local Players = game:GetService("Players")

local Test = game:GetService("ReplicatedStorage"):WaitForChild("Test")
local Test2 = game:GetService("ReplicatedStorage"):WaitForChild("Test 2")

local ShuffledTables = {}
local Keys = {}

local KeysChanging = {}

local GetShuffledTable = function() : {}
	local Table = {"X", "Y", "Z", "x", "y", "z"}
	
	for Index = 1, rawlen(Table) do
		local RandomIndex = math.random(Index)
		
		Table[Index], Table[RandomIndex] = Table[RandomIndex], Table[Index]
	end
	
	return Table
end

local GetRandomString = function() : string
	local AByte = string.byte("a")
	local ZByte = string.byte("z")
	
	local String = "" do
		for _ = 1, math.random(6, 32) do
			local Character = string.char(math.random(AByte, ZByte))

			String ..= (math.random(1, 2) == 2 and string.upper(Character)) or Character
		end
	end
	
	return String
end

local GetHitPosition = function(Player, Table) : Vector3
	local ShuffledTableInfo = ShuffledTables[Player]
	local ShuffledTable = ShuffledTableInfo[1]
	local ShuffledIndexes = ShuffledTableInfo[2]

	local HitX = Table[ShuffledIndexes["X"]]
	local HitY = Table[ShuffledIndexes["Y"]]
	local HitZ = Table[ShuffledIndexes["Z"]]

	return Vector3.new(HitX, HitY, HitZ)
end

local GetTorsoPosition = function(Player, Table) : Vector3
	local ShuffledTableInfo = ShuffledTables[Player]
	local ShuffledTable = ShuffledTableInfo[1]
	local ShuffledIndexes = ShuffledTableInfo[2]

	local TorsoX = Table[ShuffledIndexes["x"]]
	local TorsoY = Table[ShuffledIndexes["y"]]
	local TorsoZ = Table[ShuffledIndexes["z"]]

	return Vector3.new(TorsoX, TorsoY, TorsoZ)
end

local GetSpawnPosition = function(Player, Hit) : Vector3
	return (Player.Character.PrimaryPart.Position + (Hit - Player.Character.Head.Position).Unit * 5)
end

local GetVelocity = function(Player, Hit) : Vector3
	return ((Player.Character.Head.Position - Hit).Unit * -75 + Vector3.new(0, 50, 0))
end

Test.OnServerEvent:Connect(function(Player, Key : string, Table : {})
	if Key == "Magnet API V2" then
		local ShuffledTable = GetShuffledTable()
		local ShuffledIndexes = {}
		
		for Index, Value in pairs(ShuffledTable) do
			ShuffledIndexes[Value] = Index
		end
		
		ShuffledTables[Player] = {ShuffledTable, ShuffledIndexes}
		
		return Test:FireClient(Player, 1, ShuffledTable)
	end
		
	if typeof(Table) ~= "table" then
		return Player:Kick("Hit")
	end
	
	if #Table ~= 6 then
		return Player:Kick("Hit")
	end
	
	if KeysChanging[Player] ~= nil then
		return
	end
	
	if typeof(Key) ~= "string" then
		return Player:Kick("Key")
	end
	
	if Keys[Player] ~= Key then
		return Player:Kick("Key")
	end
	
	local Hit = GetHitPosition(Player, Table)
	
	if Hit == nil then
		return Player:Kick("Hit")
	end
	
	local TorsoPosition = GetTorsoPosition(Player, Table)
	
	if TorsoPosition == nil then
		return Player:Kick("Torso")
	end
	
	local SpawnPosition = GetSpawnPosition(Player, Hit)
	
	if SpawnPosition == nil then
		return Player:Kick("Spawn")
	end
	
	local Velocity = GetVelocity(Player, Hit)
	
	if Velocity == nil then
		return Player:Kick("Velocity")
	end
	
	KeysChanging[Player] = true
	
	task.spawn(function()
		if Test2:InvokeClient(Player) ~= true then
			Player:Kick("Shoot")
		end
	end)
	
	local Ball = script.Basketball:Clone()
	Ball.Parent = workspace
	Ball.Handle:SetNetworkOwner(nil)
	Ball.Handle.Position = SpawnPosition
	Ball.Handle:ApplyImpulse(Velocity)
	
	local Key = GetRandomString()

	Keys[Player] = Key
	Test:FireClient(Player, 2, Key)
	
	task.wait(1)
	
	KeysChanging[Player] = nil
end)

Players.PlayerAdded:Connect(function(Player)
	repeat task.wait() until rawget(ShuffledTables, Player) ~= nil
	
	local Key = GetRandomString()
	
	Keys[Player] = Key
	Test:FireClient(Player, 2, Key)
end)
