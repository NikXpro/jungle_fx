ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('nth_f5:Weapon_addAmmoToPedS')
AddEventHandler('nth_f5:Weapon_addAmmoToPedS', function(plyId, value, quantity)
	if #(GetEntityCoords(source, false) - GetEntityCoords(plyId, false)) <= 3.0 then
		TriggerClientEvent('nth_f5:Weapon_addAmmoToPedC', plyId, value, quantity)
	end
end)

ESX.RegisterServerCallback('nth_f5:billing', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local bills = {}

	MySQL.Async.fetchAll('SELECT * FROM billing WHERE identifier = @identifier', {
		['@identifier'] = xPlayer.identifier
	}, function(result)
		for i = 1, #result, 1 do
			table.insert(bills, {
				id = result[i].id,
				label = result[i].label,
				amount = result[i].amount
			})
		end

		cb(bills)
	end)
end)

RegisterNetEvent("BUG_REPORT")
AddEventHandler("BUG_REPORT", function(bug)
	exports.JD_logs:discord('**JOUEUR:** *' .. GetPlayerName(source) .. '*\n**Description du bug:** \n*'..bug..'*', source, 0, '000000', 'BUG_REPORT')
end)




ESX.RegisterServerCallback('nth:itemCheck', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)
	local itemCheck = {
		Identity = xPlayer.getInventoryItem("card_identity").count,
		Driver = xPlayer.getInventoryItem("card_driver").count,
		PPA = xPlayer.getInventoryItem("card_ppa_2").count
	}
    
	cb(itemCheck)
end)

ESX.RegisterServerCallback('nth_f5:getItemAmountIdentity', function(source, cb, item)
    local xPlayer = ESX.GetPlayerFromId(source)
    local Item = xPlayer.getInventoryItem("card_identity")
    if Item.count < 1 then
        cb(0)
    else
        cb(Item.count)
    end
end)

ESX.RegisterServerCallback('nth_f5:getItemAmountDrive', function(source, cb, item)
    local xPlayer = ESX.GetPlayerFromId(source)
    local Item = xPlayer.getInventoryItem("card_driver")
    if Item.count < 1 then
        cb(0)
    else
        cb(Item.count)
    end
end)

ESX.RegisterServerCallback('nth_f5:getItemAmountPPA2', function(source, cb, item)
    local xPlayer = ESX.GetPlayerFromId(source)
    local Item = xPlayer.getInventoryItem("card_ppa_2")
    if Item.count < 1 then
        cb(0)
    else
        cb(Item.count)
    end
end)