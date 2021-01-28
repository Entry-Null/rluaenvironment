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

Get = game
Plrs = Get.Players
Client = Get.Players.LocalPlayer
ClientChar = Get.Players.LocalPlayer.Character
Work = game.Workspace
load = loadstring
