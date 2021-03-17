local ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) 
    ESX = obj 
    ESX.RegisterServerCallback('gcphone:getItemAmount', function(source, cb, item)
        local xPlayer = ESX.GetPlayerFromId(source)
        local items = xPlayer.getInventoryItem(item)
        if items == nil then
            cb(0)
        else
            cb(items.count)
        end
    end)
end) 

RegisterServerEvent("siren:sync")
AddEventHandler("siren:sync", function(state, veh)
    TriggerClientEvent("siren:ClientSync", -1, state, veh)
end)

RegisterServerEvent("RPCore:drag")
AddEventHandler("RPCore:drag", function(Target)
	local Source = source
	TriggerClientEvent("RPCore:drag", Target, Source)
end)

ESX.RegisterUsableItem('plonger_1', function(source)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    xPlayer.removeInventoryItem('plonger_1', 1)
        TriggerClientEvent('nth:plonger_1', _source)
end)