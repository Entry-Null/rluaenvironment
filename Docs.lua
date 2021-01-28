loadstring(game:HttpGet("https://raw.githubusercontent.com/Entry-Null/rluaenvironment/main/main.lua", true))()
--Place this above the script

--//ClientChar Is The local players Character.
--//EXAMPLE
print(ClientChar)


--//ClientChar Is The local player.
--//EXAMPLE
print(Client.Name)


--//CloneToPath works like so, 
--//CloneToPath(Object to clone, its desination)
--//EX.
CloneToPath(Work.Baseplate, ClientChar)

--GetVal works to get the value of a path or bool, int, ect.
--// GETVAL WILL RETURN VALUES 
local bruh = GetVal(ClientChar.Humanoid, "Health")
--// THIS SETS BRUH TO THE VALUE YOU CAN ALSO PRINT THAT VALUE
--//EXAMPLES 

GetVal(Client, "AccountAge")
local accage = GetVal(Client, "AccountAge")
print(accage)

GetVal(ClientChar.Humanoid, "Health")
print(GetVal(ClientChar.Humanoid, "Health"))
--// Change value changes a value works like GetVal but has an extra argument at the end stating the new value
ChangeValue(ClientChar.Humanoid, "Health", 50)

Notify(title, text, icon, time)

Notify(Hello, This is a test, Robloxassetid, time to wait)

--// Noclip pretty easy to understand\
Noclip()
--// X Toggles noclip / clip
--// Its undetected by most games.

--// The VARS for easy access

Get = game
Plrs = Get.Players
Client = Get.Players.LocalPlayer
ClientChar = Get.Players.LocalPlayer.Character
Work = game.Workspace
load = loadstring
local RnS = game:GetService("RunService")
local Mouse =  Players.LocalPlayer:GetMouse()
local rawmet, Index, NIndex, NCall, Caller = getrawmetatable(game), getrawmetatable(game).__index, getrawmetatable(game).__newindex, getrawmetatable(game).__namecall, checkcaller or is_protosmasher_caller
