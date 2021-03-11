local bannerA = loadstring(game:HttpGet("https://raw.githubusercontent.com/Entry-Null/rluaenvironment/main/logo.txt", true))()

print(bannerA)

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
  return (("0xxxxyxxxx-1xxxxx-4xyxxyxx-yxxx-x0Xxxyxxxxxxxx:yxxxy-xxxxy"):gsub("[xy]", fn))
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
if getgenv().kobolmoduleSettings.Compile.PrintAn == true then
print("[ Loaded Without Problems. ]")
end

if getgenv().kobolmoduleSettings.Compile.Compile == true then
local boolINST = NEWINST(boolvalue, true)
	boolINST.Parent = game.Players.LocalPlayer
		boolINST.Name = "ASPX(".. RANGEN(47238, 3849732849) ..")(ALLOWFUXIT(true))"
end

getgenv().REGEDIT = function(param, valuename, value)
    local getreg = debug.getregistry or getreg

    for i,v in pairs(getreg()) do
    if typeof(v) == "table" then
    if v.param then
    v.valname = value
    end
    end
    end
end

getgenv().READ, WRITE = readfile or syn_io_read,writefile or syn_io_write

getgenv().WRAP_INST = function(call, callback)
    loadstring(call, true)()
    getgenv().callbackREG = callback
end
    
getgenv().CHECKFILE(filename)
a,b = pcall(READ, filename)
return a
end


local MOD               = 2^64;
local MODM              = MOD-1;


local function memoize(f)
local mt = {}
local t = setmetatable({}, mt)
function mt:__index(k)
    local v = f(k)
    t[k] = v
    return v
end
return t
end
local function make_bitop_uncached(t, m)
local function bitop(a, b)
    local res,p = 0,1
    while a ~= 0 and b ~= 0 do
        local am, bm = a % m, b % m
        res = res + t[am][bm] * p
        a = (a - am) / m
        b = (b - bm) / m
        p = p*m
    end
    res = res + (a + b) * p
    return res
 end
 return bitop
 end
 local function make_bitop(t)
 local op1 = make_bitop_uncached(t,2^1)
 local op2 = memoize(function(a) return memoize(function(b) return op1(a, b) 
 end) end)
 return make_bitop_uncached(op2, 2 ^ (t.n or 1))
 end
 local bxor1 = make_bitop({[0] = {[0] = 0,[1] = 1}, [1] = {[0] = 1, [1] = 0}, n = 4})
 local function bxor(a, b, c, ...)
 local z = nil
 if b then
    a = a % MOD
    b = b % MOD
    z = bxor1(a, b)
    if c then z = bxor(z, c, ...) end
    return z
elseif a then return a % MOD
else return 0 end
end
local function band(a, b, c, ...)
local z
if b then
    a = a % MOD
    b = b % MOD
    z = ((a + b) - bxor1(a,b)) / 2
    if c then z = bit32_band(z, c, ...) end
    return z
elseif a then return a % MOD
else return MODM end
end
local function bnot(x) return (-1 - x) % MOD end
local function rshift1(a, disp)
if disp < 0 then return lshift(a,-disp) end
return math.floor(a % 2 ^ 32 / 2 ^ disp)
end
local function rshift(x, disp)
if disp > 31 or disp < -31 then return 0 end
return rshift1(x % MOD, disp)
end
local function lshift(a, disp)
if disp < 0 then return rshift(a,-disp) end 
return (a * 2 ^ disp) % 2 ^ 32
end
-- UTILITY FUNCTIONS
--
-- transform a string of bytes in a string of hexadecimal digits
local function str2hexa (s)
local h = string.gsub(s, ".", function(c)
    return string.format("%02x", string.byte(c))
end)
return h
end

-- transforms number 'l' into a big-endian sequence of 'n' bytes
--(coded as a string)
local function num2string(l, n)
local s = ""
for i = 1, n do
    --most significant byte of l
    local remainder = l % 256
    s = string.char(remainder) .. s
    --remove from l the bits we have already transformed
    l = (l-remainder) / 256;
end
return s
end

-- transform the big-endian sequence of eight bytes starting at
-- index 'i' in 's' into a number
local function s264num (s, i)
local n = 0
for i = i, i + 7 do
    n = n*256 + string.byte(s, i)
end
return n
end


local HH = {}

local function initH512(H)
H = {0x6a09e667f3bcc908, 0xbb67ae8584caa73b, 0x3c6ef372fe94f82b, 0xa54ff53a5f1d36f1, 0x510e527fade682d1, 0x9b05688c2b3e6c1f, 0x1f83d9abfb41bd6b, 0x5be0cd19137e2179}
return H
end


local k = {
0x428a2f98d728ae22, 0x7137449123ef65cd, 0xb5c0fbcfec4d3b2f, 0xe9b5dba58189dbbc, 0x3956c25bf348b538,
0x59f111f1b605d019, 0x923f82a4af194f9b, 0xab1c5ed5da6d8118, 0xd807aa98a3030242, 0x12835b0145706fbe,
0x243185be4ee4b28c, 0x550c7dc3d5ffb4e2, 0x72be5d74f27b896f, 0x80deb1fe3b1696b1, 0x9bdc06a725c71235,
0xc19bf174cf692694, 0xe49b69c19ef14ad2, 0xefbe4786384f25e3, 0x0fc19dc68b8cd5b5, 0x240ca1cc77ac9c65,
0x2de92c6f592b0275, 0x4a7484aa6ea6e483, 0x5cb0a9dcbd41fbd4, 0x76f988da831153b5, 0x983e5152ee66dfab,
0xa831c66d2db43210, 0xb00327c898fb213f, 0xbf597fc7beef0ee4, 0xc6e00bf33da88fc2, 0xd5a79147930aa725,
0x06ca6351e003826f, 0x142929670a0e6e70, 0x27b70a8546d22ffc, 0x2e1b21385c26c926, 0x4d2c6dfc5ac42aed,
0x53380d139d95b3df, 0x650a73548baf63de, 0x766a0abb3c77b2a8, 0x81c2c92e47edaee6, 0x92722c851482353b,
0xa2bfe8a14cf10364, 0xa81a664bbc423001, 0xc24b8b70d0f89791, 0xc76c51a30654be30, 0xd192e819d6ef5218,
0xd69906245565a910, 0xf40e35855771202a, 0x106aa07032bbd1b8, 0x19a4c116b8d2d0c8, 0x1e376c085141ab53,
0x2748774cdf8eeb99, 0x34b0bcb5e19b48a8, 0x391c0cb3c5c95a63, 0x4ed8aa4ae3418acb, 0x5b9cca4f7763e373,
0x682e6ff3d6b2b8a3, 0x748f82ee5defb2fc, 0x78a5636f43172f60, 0x84c87814a1f0ab72, 0x8cc702081a6439ec,
0x90befffa23631e28, 0xa4506cebde82bde9, 0xbef9a3f7b2c67915, 0xc67178f2e372532b, 0xca273eceea26619c,
0xd186b8c721c0c207, 0xeada7dd6cde0eb1e, 0xf57d4f7fee6ed178, 0x06f067aa72176fba, 0x0a637dc5a2c898a6,
0x113f9804bef90dae, 0x1b710b35131c471b, 0x28db77f523047d84, 0x32caab7b40c72493, 0x3c9ebe0a15c9bebc,
0x431d67c49c100d4c, 0x4cc5d4becb3e42b6, 0x597f299cfc657e2a, 0x5fcb6fab3ad6faec, 0x6c44198c4a475817
 }

 -- THIRD STEP: PRE-PROCESSING (padding)

 local function preprocess(toProcess, len)
 --append a single '1' bit
 --append K '0' bits, where K is the minimum number >= 0 such that L + 1 + K = 896mod1024
local extra = - (len + 17) % 128 + 8
len = num2string(8 * len, 8)
toProcess = toProcess .. "\128" .. string.rep("\0", extra) .. len
assert(#toProcess % 128 == 0)
return toProcess
end

local function rrotate(rot, n)
return rshift(rot, n) or (rshift(rot, 64 - n))
end

local function digestblock(msg, i, H)
local w = {}
for j = 1, 16 do w[j] = s264num(msg, i + (j - 1) * 8) end
for j = 17, 80 do
    local v = w[j - 15] 
    local s0 = bxor(rrotate(v, 1), rrotate(v, 8), rshift(v, 7))
    v = w[j - 2] 
    w[j] = w[j - 16] + s0 + w[j - 7] + bxor(rrotate(v, 19), rrotate(v, 61), 
 rshift(v, 6))
end

local a, b, c, d, e, f, g, h = H[1], H[2], H[3], H[4], H[5], H[6], H[7], H[8]
for i = 1, 80 do
    a, b, c, d, e, f, g, h = a , b , c , d , e , f , g , h 
    local s0 = bxor(rrotate(a, 28), rrotate(a, 34), rrotate(a, 39))
    local maj = bxor(band(a, b), band(a, c), band(b, c))
    local t2 = s0 + maj
    local s1 = bxor(rrotate(e, 14), rrotate(e, 18), rrotate(e, 41))
    local ch = bxor (band(e, f), band(bnot(e), g))
    local t1 = h + s1 + ch + k[i] + w[i]
    h, g, f, e, d, c, b, a = g, f, e, d + t1, c, b, a, t1 + t2
end

H[1] = (H[1] + a) 
H[2] = (H[2] + b) 
H[3] = (H[3] + c) 
H[4] = (H[4] + d) 
H[5] = (H[5] + e) 
H[6] = (H[6] + f) 
H[7] = (H[7] + g) 
H[8] = (H[8] + h) 
end

local function finalresult512 (H)
-- Produce the final hash value:
return
str2hexa(num2string(H[1], 8)..num2string(H[2], 8)..num2string(H[3], 8)..num2string(H[4], 8)..
        num2string(H[5], 8)..num2string(H[6], 8)..num2string(H[7], 8)..num2string(H[8], 8))
end


-- Returns the hash512 for the given string.
getgenv().HASH512 = function(msg)
msg = preprocess(msg, #msg)
local H = initH512(HH)

-- Process the message in successive 1024-bit (128 bytes) chunks:
for i = 1, #msg, 128 do
    digestblock(msg, i, H)
end

return finalresult512(H)
end

function table.length(T)
    local size = 0
    for k,v in pairs(T) do
        size = size + 1
    end
    return size
end

function table.tostring(A)
    local size = table.length(A)
    local string = "{"
    for i,v in ipairs(A) do
        string = string .. (v or "")
        if i < size then
           string = string .. ","
        end
    end
    string = string .. "}"
    return string
end

getgenv.()quickSort = function(array, p, r)
    p = p or 1
    r = r or #array
    if p < r then
        q = partition(array, p, r)
        quickSort(array, p, q - 1)
        quickSort(array, q + 1, r)
    end
end

function partition(array, p, r)
    local x = array[r]
    local i = p - 1
    for j = p, r - 1 do
        if array[j] <= x then
            i = i + 1
            local temp = array[i]
            array[i] = array[j]
            array[j] = temp
        end
    end
    local temp = array[i + 1]
    array[i + 1] = array[r]
    array[r] = temp
    return i + 1
end

local r = 5
local b = 11*12
local h = 6
local enable_pi = true -- set true if you want to multiply by pi, set false to use set pi value
local pi_value = 3.14 -- set to 0 if you dont want a set value 

getgenv().CONE = function()
    if enable_pi or pi_value == 0 then
        return (1/3)*r^2*math.pi*h
    else
        if pi_value == 0 then
            return (1/3)*r^2*h .."*pi"
        else
            return (1/3)*r^2*pi_value*h
        end
    end
end

getgenv().SQUARE = function
    return (1/3)*b*b*h
end

getgenv().TRIANGLE = function
    return 1/3*((1/2)*b)*h
end
