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

--// The locals 

Get = game
Plrs = Get.Players
Client = Get.Players.LocalPlayer
ClientChar = Get.Players.LocalPlayer.Character
Work = game.Workspace
load = loadstring
