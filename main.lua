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

getgenv()._GETBOOLSTATUS = function(boolname, bool)
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

_G.objs = {}

getgenv().SPOOF = function(obj, property, value)
	local s = pcall(function()
		local lol = obj[property]
	end)
	if s then
		table.insert(_G.objs, {obj, property, value})
	end
end

getgenv().findwithintable = function(o, p)
	for i, v in pairs(_G.objs) do
		if table.find(v, o) and table.find(v, p) then
			return v
		end
	end
	return nil
end

getgenv().DESPOOF = function(obj, property)
	local lol = findwithintable(obj, property)
	if lol then
		table.remove(_G.objs, table.find(_G.objs, lol))
	end
end


local mt = getrawmetatable(game)
setreadonly(mt, false)
old = mt.__index

mt.__index = newcclosure(function(o, p)
	local t = findwithintable(o, p)
	if t ~= nil then
		return t[3]
	end
	
	return old(o, p)
end)


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


getgenv()._SCRAM = function(msg)
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

local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
function ENCODE64(data)
    return ((data:gsub('.', function(x)
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end


function DECODE64(data)
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
            return string.char(c)
    end))
end


getgenv()._FINDOBJ = function(object, substring)
	for _, obj in pairs(object:GetChildren()) do
		if string.match(obj.Name, substring) then
			return true
            else
            return false
		end
	end
end

getgenv().GENTEXT = function(num)
    local JSuIZ = ""
    for i = 1,num do
        JSuIZ = JSuIZ..string.char(math.random(65, 90))
    end
    return JSuIZ
end

getgenv().FLOATGEN = function(lower, greater)
    return lower + math.random()  * (greater - lower);
end


getgenv().PROCEDURE = function(code)
local f = loadstring(code);
 f()
end

while true do
wait(4)
print(FLOATGEN(341, 213888))
end

Get = game
Plrs = Get.Players
Client = Get.Players.LocalPlayer
ClientChar = Get.Players.LocalPlayer.Character
Work = game.Workspace
local RnS = game:GetService("RunService")
local Mouse =  Client:GetMouse()
local rawmet, Index, NIndex, NCall, Caller = getrawmetatable(game), getrawmetatable(game).__index, getrawmetatable(game).__newindex, getrawmetatable(game).__namecall, checkcaller or is_protosmasher_caller
