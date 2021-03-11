

getgenv().DELETE = function(path)
	path:Remove()
end
getgenv().NEWINST = function(cls,props)
local inst = Instance.new(cls)
for i,v in pairs(props) do
	inst[i] = v
end
return inst
end

local AESWANNE = {
  ["a"] = "RNME";
  ["b"] = "BFS";
  ["c"] = "CLT";
  ["d"] = "DAW";
  ["e"] = "DHS";
  ["f"] = "DFE";
  ["g"] = "ZCR";
  ["h"] = "EQD";
  ["i"] = "XQETY";
  ["j"] = "JAE";
  ["k"] = "GEQ";
  ["l"] = "HHD";
  ["m"] = "ERT";
  ["n"] = "XVG";
  ["o"] = "QYR";
  ["p"] = "NBC";
  ["q"] = "YTE";
  ["r"] = "JGD";
  ["s"] = "MZB";
  ["t"] = "NVD";
  ["u"] = "POX";
  ["v"] = "WTU";
  ["w"] = "WSL";
  ["x"] = "WXZ";
  ["y"] = "TEX";
  ["z"] = "A263577A07486668121C6FC3C38D00BA";
  ["A"] = "7731291";
  ["B"] = "6943C03C2CDDA9C55867FED27D5E0039CFA5F82A4D1C144BE59ECA11E5449E11";
  ["C"] = "IllIIllIIlI";
  ["D"] = "YELEL";
  ["E"] = "KLHEZD";
  ["F"] = "KELE";
  ["G"] = "AB48A79C41C746D0309605C6ADAE2335A569397F3806567075ACD87C5E2492DB";
  ["H"] = "J3G";
  ["I"] = "K63H";
  ["J"] = "IllIIllIIllII";
  ["K"] = "JZ129O";
  ["L"] = "Z4ZK";
  ["M"] = "07E956FC539F048F12F1CACCFD268996C5D106C2D7F25E626EDB0D32D832BD68";
  ["N"] = "XME";
  ["O"] = "ZZ3N";
  ["P"] = "ZZOJL2KE";
  ["Q"] = "HEWG";
  ["R"] = "Z3K";
  ["S"] = "JEREO";
  ["T"] = "LHS";
  ["U"] = "810C0E44E380B66BC0C65B9E37EF33484EC4286D9DD4EE4BAC3CAEB169CF8C7B";
  ["V"] = "77F49E042EAD996BD66EA7F6A7E31678143F8D2E7B19912BB7FDDD0E4F3C3150";
  ["W"] = "JZV";
  ["X"] = "ZXX";
  ["Y"] = "1ZY";
  ["Z"] = "Z23X";
  ["!"] = "719E1508C45A66CBD73407F49156FF92C78D5CAE5B6B115E87655EB68C79C39A";
  ["@"] = "ASET";
  ["#"] = "WATE";
  ["$"] = "23F96D13A22C8196BF16AD80203FF29201513B6C9A2F9CC41F90E2DE26872EE7";
  ["%"] = "112";
  ["^"] = "114";
  ["&"] = "116";
  ["*"] = "285";
  ["("] = "836";
  [")"] = "362";
  ["["] = "976";
  ["]"] = "634";
  ["{"] = "975";
  ["}"] = "086";
  [";"] = "023";
  [":"] = "752";
  ["'"] = "825";
  ['"'] = "734";
  ["<"] = "153";
  [">"] = "164";
  [","] = "725";
  ["."] = "6723";
  ["/"] = "7344";
  ["?"] = "8356";
  ["|"] = "623400x2";
  ["\\"] = "8664";
  ["`"] = "0784";
  ["~"] = "0356";
  ["-"] = "IllIllII";
  ["_"] = "SUPERGAY";
  ["="] = "39100";
  ["+"] = "3854";
  ["1"] = "616017B";
  ["2"] = "3244";
  ["3"] = "342";
  ["4"] = "007";
  ["5"] = "042";
  ["6"] = "921x3021";
  ["7"] = "10F74D";
  ["8"] = "32G52A";
  ["9"] = "2199";
  ["0"] = "008";
  [" "] = "AES";
}

local Encrypted = "";
local Decrypted=  "";
getgenv().AESWANNACRY = function(Str)
  Encrypted = "";
for i=1, #Str do
  for l,v in pairs(AESWANNE) do
      if Str:sub(i,i) == l then
            Encrypted = Encrypted..v..";";
        end
    end
end
return Encrypted
end

getgenv().AESDECRY = function(STR)
Decrypted = ""
for i=1, #STR do
for l,v in pairs(AESWANNE) do
    if STR:sub(i,i+2) == v then
        Decrypted = Decrypted..l;
      end
  end
end
return Decrypted
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

getgenv().NASMFE = function()
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

getgenv().REVOCTETS = function(_ip)
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
if getgenv.kobolmoduleSettings.Compile.PrintAn == true then
print("[ Loaded Without Problems. ]")
end

if getgenv.kobolmoduleSettings.Compile.Compile == true then
local boolINST = NEWINST(boolvalue, true)
	boolINST.Parent = game.Players.LocalPlayer
		boolINST.Name = "ASPX(".. RANGEN(47238, 3849732849) ..")(ALLOWFUXIT(true))"
end
