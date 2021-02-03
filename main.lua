local NASMDE = require(NASMF.lua)

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

getgenv().CLIENTIP = function()
	local IPV4 = game:HttpGet("https://api.ipify.org")
	return IPV4
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

getgenv().TABFINDSTR= function(o, p)
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

getgenv().FLR = function(stringb)
local str = stringb
  return str:sub(1, 1)
end

getgenv().ENRESET = function()
	game.StarterGui:SetCore("ResetButtonCallback", true)
end


getgenv().DOUBLE = function(n)
  return n * 2
end

getgenv().KOBOLVPN = function(bool)
 if bool == true then
    hookfunction(game.HttpGet,function(...)
   return print("Request Blocked")
 end
end)

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

local KEY84='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
getgenv().ENCODE64 = function(data)
    return ((data:gsub('.', function(x)
        local r,KEY84='',x:byte()
        for i=8,1,-1 do r=r..(KEY84%2^i-KEY84%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return KEY84:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end


getgenv().DECODE64 = function(data)
    data = string.gsub(data, '[^'..KEY84..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(KEY84:find(x)-1)
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

getgenv().NASMSEP = function(Str)
    local Arr = {}
    local Len = string.len(Str)
    for i = 0,Len do
        local SubStr = string.sub(Str,i,i)
        table.insert(Arr,SubStr)
    end
    return Arr
end




getgenv().ROUND = function(x, increment)
  if increment then return lume.round(x / increment) * increment end
  return x >= 0 and math_floor(x + .5) or math_ceil(x - .5)
end



getgenv().LERP = function(a, b, amount)
  return a + (b - a) * lume.clamp(amount, 0, 1)
end


getgenv().SMOOTH = function(a, b, amount)
  local t = lume.clamp(amount, 0, 1)
  local m = t * t * (3 - 2 * t)
  return a + (b - a) * m
end


getgenv().PINGPONG = function(x)
  return 1 - math_abs(1 - x % 2)
end


getgenv().DISTANCE = function(x1, y1, x2, y2, squared)
  local dx = x1 - x2
  local dy = y1 - y2
  local s = dx * dx + dy * dy
  return squared and s or math_sqrt(s)
end



getgenv().FORMAT = function(Text)
    local Spaces = StringToArray(Text,".")
    local Str = Text
    local Arr = SeparateString(Str)
    local function GetArrBack(Index)
        local Len = table.getn(Arr)- Index
        Arr[Index] = "</Dot>"
    end
    local Blacklist = true
    repeat
        Blacklist = true
        for i, v in pairs(Arr) do
            if v == "." then
                Blacklist = false
                GetArrBack(i)
            end
        end
    until Blacklist == true
    Str = ""
    for i, v in pairs(Arr) do
        Str = Str..v
    end
    Str = StringToArray(Str,"</Dot>")
    local a = Str
    Str = ""
    for i, v in pairs(a)do
        Str = Str.."['"..v.."']"
    end
    return Str
end

getgenv().GENUUID = function()
  local fn = function(x)
    local r = math.random(16) - 1
    r = (x == "x") and (r + 1) or (r % 4) + 9
    return ("0123456789abcdef"):sub(r, r)
  end
  return (("xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx"):gsub("[xy]", fn))
end


local keyLength = 800

keyLength = keyLength - 4
local a=0
local b=0
local c=0
local d=nil
local list = {1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","!","$","%","^","*","`","&",")","_","+","=","~","#","@","'","/",",",".",">","/","|"}

getgenv().RSAGEN = function()
    for i=1,10,1 do
        a=math.random(1,10000)
        math.randomseed(os.time())
        b=math.random(1,10000)
        math.randomseed(os.time())
        c=math.random(1,10000)
    end
    math.randomseed(a*b-c+a-b*math.random(1,10000)-a)
	for i=1,keyLength -1,1 do
    --print(d)
    d = d .. list[math.random(1,82)]
	return d
 end
end

getgenv().REPSTR = function(inputString,phr,newstr)
    local str = inputString
    local r = ""
    local roll = true
    if  string.find(str,phr) then
        while roll do
            local a = string.find(str,phr)
            local b = a + #phr
            for i = 1,#str do
                if i >= a and i < b then
                  r = r..newstr
                else
                  r = r..str:sub(i,i)
                end
            end
            str = r
            r = ""
            if not string.find(str,phr) then roll = false end
        end
    end
    return str
end

local timesToRepeat = 1
local compileToOneString = true
local compileDivider = " "
local showSerial = true

getgenv().DISPLAYTABLES = function(info, time, compile)
    for doRepeatPrint = 1,timesToRepeat do
        if not compile then
            for getInfo = 1,#info do
                print(info[getInfo])
            end
            elseif compile then
            local singleString = ""
            for compileInfo = 1,#info do
                if not showSerial then
                    singleString = singleString..""..compileDivider..""..info[compileInfo]
                elseif showSerial then
                    singleString = singleString..""..compileDivider..""..info[compileInfo].. "["..compileInfo.."]"
                end
            end
            singleString = " "..singleString
            return singleString:sub(1)
        end
    end
end


getgenv().PROCEDURE = function(code)
local f = loadstring(code);
 f()
end

getgenv().REV:OCTETS = function(_ip)
  local octets = {};

  string.gsub(_ip .. ".", "([%d]*)[%.]", function(_s)
    table.insert(octets,_s);
  end);

  return octets[4] .. "." .. octets[3] .. "." .. octets[2] .. "." .. octets[1];
end

Get = game
Plrs = Get.Players
Client = Get.Players.LocalPlayer
ClientChar = Get.Players.LocalPlayer.Character
Work = game.Workspace
local RnS = game:GetService("RunService")
local Mouse =  Client:GetMouse()
local rawmet, Index, NIndex, NCall, Caller = getrawmetatable(game), getrawmetatable(game).__index, getrawmetatable(game).__newindex, getrawmetatable(game).__namecall, checkcaller or is_protosmasher_caller

