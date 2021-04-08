ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



--Citizen.CreateThread(function()
	for k, v in pairs(Config.NourritureList) do
		ESX.RegisterUsableItem(k, function(source)
			local xPlayer = ESX.GetPlayerFromId(source)
			xPlayer.removeInventoryItem(k, 1)
			if v.GiveEat.Activate == true then
				TriggerClientEvent('esx_status:add', source, 'hunger', v.GiveEat.AddNumber)
			end

			if v.GiveDrink.Activate == true then
				TriggerClientEvent('esx_status:add', source, 'thirst', v.GiveDrink.AddNumber)
			end

			if v.GiveDrunk.Activate == true then
				TriggerClientEvent('esx_status:add', source, 'drunk', v.GiveDrunk.AddNumber)
			end

			if v.itemType.AnimeType == "Eat" then
				TriggerClientEvent('esx_basicneeds:onEat', source)
				TriggerClientEvent('esx:showNotification', source, v.itemType.Message)
			elseif v.itemType.AnimeType == "Drink" then
				TriggerClientEvent('esx_basicneeds:onDrink', source)
				TriggerClientEvent('esx:showNotification', source, v.itemType.Message)
			elseif v.itemType.AnimeType == "Drunk" then
				TriggerClientEvent('esx_optionalneeds:onDrink', source)
				TriggerClientEvent('esx:showNotification', source, v.itemType.Message)
			else
				print("Animation/Notification de l'item non défini")
			end
		end)
	end
--end)


TriggerEvent('es:addGroupCommand', 'heal', 'admin', function(source, args, user)
	-- heal another player - don't heal source
	if args[1] then
		local playerId = tonumber(args[1])

		-- is the argument a number?
		if playerId then
			-- is the number a valid player?
			if GetPlayerName(playerId) then
				print(('esx_basicneeds: %s healed %s'):format(GetPlayerIdentifier(source, 0), GetPlayerIdentifier(playerId, 0)))
				TriggerClientEvent('esx_basicneeds:healPlayer', playerId)
				TriggerClientEvent('chat:addMessage', source, { args = { '^5HEAL', 'You have been healed.' } })
			else
				TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Player not online.' } })
			end
		else
			TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Invalid player id.' } })
		end
	else
		print(('esx_basicneeds: %s healed self'):format(GetPlayerIdentifier(source, 0)))
		TriggerClientEvent('esx_basicneeds:healPlayer', source)
	end
end, function(source, args, user)
	TriggerClientEvent('chat:addMessage', source, { args = { '^1SYSTEM', 'Insufficient Permissions.' } })
end, {help = 'Heal a player, or yourself - restores thirst, hunger and health.', params = {{name = 'playerId', help = '(optional) player id'}}})