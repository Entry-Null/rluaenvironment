getgenv().DELETE = function(path)
	path:Remove()
end

getgenv().CHANGEVAL = function(path, valname, New)
	path[""..valname..""] = New
end

getgenv().GETVAL = function(path, valname)
	print(path[""..valname..""])
	local ret = path[""..valname..""]
  return ret
end


getgenv().IDENTIFICATION = function(auth, version, name)
	local creator = auth
	local vers = version
	local scriptname = name
	print("".. vers .. " | ".. name .." by ".. auth .."")
	return auth, version, name
end

getgenv().DISPLAY = function(args)
	print(args)
end

getgenv().GETBOOLSTATUS = function(boolname, bool)
	if boolname == bool then
	 return true
	else
	 return false
end
end


getgenv().NASM = function(path,script, bool)
path[""..script..""].Disabled = bool
end

getgenv().RANGEN = function(first, sec)
numval = math.random(first, sec)
return numval
end


getgenv().ISTRUE = function(bool)
bool = true
end


getgenv().ISFALSE = function(bool)
bool = false
end

getgenv().WSB = function()
local mt = getrawmetatable(game)
local oldnc = mt.__namecall
setreadonly(mt,false)

local LocalPlayer = game:GetService("Players").LocalPlayer

mt.__namecall = function(self,...)
	local method = getnamecallmethod()
	if method == "Kick" and self == LocalPlayer then
		return
	end
	return oldnc(self,...)
end

setreadonly(mt,true)
end

getgenv().NOKICK = function()
local mt = getrawmetatable(game)
local oldnc = mt.__namecall
setreadonly(mt,false)

local LocalPlayer = game:GetService("Players").LocalPlayer

mt.__namecall = function(self,...)
	local method = getnamecallmethod()
	if method == "Kick" and self == LocalPlayer then
		return
	end
	return oldnc(self,...)
end

setreadonly(mt,true)
end



getgenv().HALT = function(time)
wait(time)
end


getgenv().REMOTECALL = function(path, args, args2)
path:FireServer(args, args2)
end

getgenv().CLONEPATH = function(org, new)
local orginal = org:Clone()
orginal.Parent = new
end

getgenv().MESSAGE = function(title, text, icon, time)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title;
        Text = text;
        Icon = icon;
        Duration = time;
    })
end


getgenv().NOCLIP = function()
local Players = game:GetService("Players")
local RunS = game:GetService("RunService")
local PLR, Mouse = Players.LocalPlayer, Players.LocalPlayer:GetMouse();
local rawmet, Index, NIndex, NCall, Caller = getrawmetatable(game), getrawmetatable(game).__index, getrawmetatable(game).__newindex, getrawmetatable(game).__namecall, checkcaller or is_protosmasher_caller
local noclip, KeyT = false, "x"
setreadonly(rawmet, false)

RunS.Stepped:Connect(function()
	if noclip == true and PLR and PLR.Character and PLR.Character:FindFirstChild("Humanoid") then
		pcall(function()
			PLR.Character.Head.CanCollide = false
			PLR.Character.Torso.CanCollide = false
		end)
	end
end)

rawmet.__newindex = newcclosure(function(self, crv, Value)
	if Caller() then
		return NIndex(self, crv, Value)
	end
	if tostring(self) == "HumanoidRootPart" or tostring(self) == "Torso" then
		if crv == "CFrame" and self:IsDescendantOf(PLR.Character) then
			return true
		end
	end
	return NIndex(self, crv, Value)
end)
setreadonly(rawmet, true)

Mouse.KeyDown:Connect(function(Key)
	if Key == KeyT then
		noclip = not noclip
		MESSAGE("Entry-Null", "Noclip: "..tostring(noclip), "", 3)
	end
end)
end

getgenv().LOC = function(localdata, pharse)
local storedloc = localdata
sloc = ""..sloc..", "..localdata..""
return storedloc
end

sloc = {}

function FLR(stringb)
local str = stringb
  return str:sub(1, 1)
end

getgenv().ENRESET = function()
	game.StarterGui:SetCore("ResetButtonCallback", true)
end

getgenv().CRASH = function()
	if game.Players.LocalPlayer then
		local var = 0
		while true do
			var += math.random()^math.random(-5,5) 
		end
	end 
end


getgenv().SCRAM = function(msg)
	local newmsg = {}
	for char = 0, #msg do
		table.insert(newmsg, math.random(0, #msg), string.sub(msg, char, char))
	end
	for i = 1, #newmsg do
		if newmsg[i] == nil then
			table.remove(newmsg, i)
		end
	end
	local ran, result = pcall(function()
		return table.concat(newmsg)
	end)
	if ran and result then return result or "" end
end

getgenv().FINDOBJ = function(object, substring)
	for _, obj in pairs(object:GetChildren()) do
		if string.match(obj.Name, substring) then
			return object
		end
	end
end


Get = game
Plrs = Get.Players
Client = Get.Players.LocalPlayer
ClientChar = Get.Players.LocalPlayer.Character
Work = game.Workspace
PROCEDURE = loadstring
local RnS = game:GetService("RunService")
local Mouse =  Client:GetMouse()
local rawmet, Index, NIndex, NCall, Caller = getrawmetatable(game), getrawmetatable(game).__index, getrawmetatable(game).__newindex, getrawmetatable(game).__namecall, checkcaller or is_protosmasher_caller
