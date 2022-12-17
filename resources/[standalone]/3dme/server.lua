CashoutCore = nil

TriggerEvent('CashoutCore:GetObject', function(obj) CashoutCore = obj end)

CashoutCore.Commands.Add("me", "Character interactions", {}, false, function(source, args)
	local src = source
	local Player = CashoutCore.Functions.GetPlayer(src)
	local text = table.concat(args, " ")
	local Player = CashoutCore.Functions.GetPlayer(source)
	TriggerClientEvent('3dme:triggerDisplay', -1, " " .. text, source)
    TriggerEvent("cash-log:server:CreateLog", "me", "Me", "white", "**"..GetPlayerName(source).."** (CitizenID: "..Player.PlayerData.citizenid.." | ID: "..source..")** " ..Player.PlayerData.charinfo.firstname.." "..Player.PlayerData.charinfo.lastname.. " **" ..text, false)
end)

--TriggerClientEvent('3dme:triggerDisplay', -1,  Player.PlayerData.charinfo.firstname.." " ..Player.PlayerData.charinfo.lastname.."  " .. text, source)--]]