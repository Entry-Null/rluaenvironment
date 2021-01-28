local function rm(path)
path:Remove()
end

local function ChangeValue(path, valname, New)
path[""..valname..""] = New
end

local function GetVal(path, valname)
print(path[""..valname..""])
local ret = path[""..valname..""]
return ret
end

local function RemoteCall(path, args, args2)
path:FireServer(args, args2)
end

local function CloneToPath(org, new)
local orginal = org:Clone()
orginal.Parent = new
end

Get = game
Plrs = Get.Players
Client = Get.Players.LocalPlayer
ClientChar = Get.Players.LocalPlayer.Character
Work = game.Workspace
load = loadstring
