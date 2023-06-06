local GetPath = function(Obj)
    local Path = Obj:GetFullName()
    local Service = string.match(Path, "^([%a_]+)\\.+")
    local GetService = "game:GetService('" .. Service .. "')"

    return string.gsub(Path, Service, GetService)
end

local Character = game:GetService("Players").LocalPlayer.Character

print(GetPath(Character)) --> game:GetService("Workspace").Username
