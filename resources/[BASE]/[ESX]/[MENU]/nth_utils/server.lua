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

ESX.RegisterUsableItem('plonger_pink', function(source) TriggerClientEvent('nth:plonger', source, 25) end)
ESX.RegisterUsableItem('plonger_red', function(source) TriggerClientEvent('nth:plonger', source, 3) end)
ESX.RegisterUsableItem('plonger_white', function(source) TriggerClientEvent('nth:plonger', source, 1) end)
ESX.RegisterUsableItem('plonger_black', function(source) TriggerClientEvent('nth:plonger', source, 0) end)
ESX.RegisterUsableItem('plonger_green', function(source) TriggerClientEvent('nth:plonger', source, 22) end)
ESX.RegisterUsableItem('plonger_yellow', function(source) TriggerClientEvent('nth:plonger', source, 7) end)
ESX.RegisterUsableItem('plonger_orange', function(source) TriggerClientEvent('nth:plonger', source, 23) end)
ESX.RegisterUsableItem('plonger_purple', function(source) TriggerClientEvent('nth:plonger', source, 24) end)