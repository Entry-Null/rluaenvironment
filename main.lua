getgenv().rm = function(path)
path:Remove()
end

getgenv().ChangeValue = function(path, valname, New)
path[""..valname..""] = New
end

getgenv().GetVal = function(path, valname)
print(path[""..valname..""])
local ret = path[""..valname..""]
return ret
end


getgenv().IDENTIFICATION(auth, version, name)
local creator = auth
local vers = version
local scriptname = name
return auth, version, name
end

local au, verid, scriptid = IDENTIFICATION()

getgenv().DISPLAY(args)
print(args)
end


getgenv().halt = function(time)
wait(time)
end


getgenv().RemoteCall = function(path, args, args2)
path:FireServer(args, args2)
end

getgenv().CloneToPath = function(org, new)
local orginal = org:Clone()
orginal.Parent = new
end

getgenv().Notify = function(title, text, icon, time)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title;
        Text = text;
        Icon = icon;
        Duration = time;
    })
end


getgenv().Noclip = function()
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
		Notify("Entry-Null", "Noclip: "..tostring(noclip), "", 3)
	end
end)
end

Get = game
Plrs = Get.Players
Client = Get.Players.LocalPlayer
ClientChar = Get.Players.LocalPlayer.Character
Work = game.Workspace
load = loadstring
local RnS = game:GetService("RunService")
local Mouse =  Client:GetMouse()
local rawmet, Index, NIndex, NCall, Caller = getrawmetatable(game), getrawmetatable(game).__index, getrawmetatable(game).__newindex, getrawmetatable(game).__namecall, checkcaller or is_protosmasher_caller
