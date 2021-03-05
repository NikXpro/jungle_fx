RegisterServerEvent('nth:ammoClipCal12')
AddEventHandler('nth:ammoClipCal12', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('ammo_cal12', 1)
end)

RegisterServerEvent('nth:ammoClip9mm')
AddEventHandler('nth:ammoClip9mm', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('ammo_9mm', 1)
end)

RegisterServerEvent('nth:ammoClip5.56mm')
AddEventHandler('nth:ammoClip5.56mm', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('ammo_5.56mm', 1)
end)

RegisterServerEvent('nth:ammoClip7.62mm')
AddEventHandler('nth:ammoClip7.62mm', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeInventoryItem('ammo_7.62mm', 1)
end)


ESX.RegisterUsableItem('ammo_cal12', function(source)
	TriggerClientEvent('nth:ammoClipCal12', source)
end)

ESX.RegisterUsableItem('ammo_9mm', function(source)
	TriggerClientEvent('nth:ammoClip9mm', source)
end)

ESX.RegisterUsableItem('ammo_5.56mm', function(source)
	TriggerClientEvent('nth:ammoClip5.56mm', source)
end)

ESX.RegisterUsableItem('ammo_7.62mm', function(source)
	TriggerClientEvent('nth:ammoClip7.62mm', source)
end)