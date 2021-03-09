ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("nth_store:CarBuy")
AddEventHandler("nth_store:CarBuy", function(prix, vehiculeLabel, vehiculeName, zone, heading)
     local xPlayer = ESX.GetPlayerFromId(source) 
     local xMoney = xPlayer.getMoney()
     if xMoney >= prix then
          xPlayer.removeMoney(prix)
          TriggerClientEvent('esx:showNotification', source, "~g~Location~w~ effectué !")
          --print(vehiculeLabel.." | "..vehiculeName.." | "..zone.." | "..heading)
          TriggerClientEvent('nth_jobs:CarBuyS', source,  vehiculeName, zone, heading)
     else
          TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez d'argent, il vous manque: ~r~"..prix - xMoney.."$")
     end
end)


RegisterServerEvent("nth_store:ArmurerieBuy")
AddEventHandler("nth_store:ArmurerieBuy", function(moneytype, prix, item, itemName, count, type, v)
     local xPlayer = ESX.GetPlayerFromId(source)
     local Item = xPlayer.getInventoryItem(item)
     local xMoney = xPlayer.getMoney()
     local xBank = xPlayer.getBank()
     local xBlackMoney = xPlayer.getAccount('black_money').money
     local societyAccount = nil
     
     if moneytype == "money" then 
          if xMoney >= prix then
               if (type == "item") then
                    if Item.limit ~= -1 and (Item.count + count) > Item.limit then
                         TriggerClientEvent('esx:showNotification', source, "Vous avez le nombre maximum "..itemName)
                    else
                         xPlayer.addInventoryItem(item, count)
                         xPlayer.removeMoney(prix)
                         TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
                    end
               elseif (type == "weapon") then
                    xPlayer.addWeapon(item, count)
                    xPlayer.removeMoney(prix)
                    TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
               end
          else
               TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez d'argent, il vous manque: ~r~"..prix - xMoney.."$")
          end
     elseif moneytype == "black_money" then
          if xBlackMoney >= prix then 
               if (type == "item") then
                    if Item.limit ~= -1 and (Item.count + count) > Item.limit then
                         TriggerClientEvent('esx:showNotification', source, "Vous avez le nombre maximum "..itemName)
                    else
                         xPlayer.addInventoryItem(item, count)
                         xPlayer.removeAccountMoney('black_money', prix)
                         TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
                    end
               elseif (type == "weapon") then
                    xPlayer.addWeapon(item, count)
                    xPlayer.removeAccountMoney('black_money', prix)
                    TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
               end
          else
               TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez d'argent, il vous manque: ~r~"..prix - xBlackMoney.."$")
          end
     elseif moneytype == "bank" then 
          if xBank >= prix then 
               if (type == "item") then
                    if Item.limit ~= -1 and (Item.count + count) > Item.limit then
                         TriggerClientEvent('esx:showNotification', source, "Vous avez le nombre maximum "..itemName)
                    else
                         xPlayer.addInventoryItem(item, count)
                         xPlayer.removeAccountMoney('bank', prix)
                         TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
                    end
               elseif (type == "weapon") then
                    xPlayer.addWeapon(item, count)
                    xPlayer.removeAccountMoney('bank', prix)
                    TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
               end
          else
               TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez d'argent, il vous manque: ~r~"..prix - xBank.."$")
          end
     elseif moneytype == "society" then
          TriggerEvent('esx_society:getSociety', xPlayer.job.name, function (society)
               if society ~= nil then
                    TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function (account)
                         if account.money >= prix then
                              if (type == "item") then
                                   if Item.limit ~= -1 and (Item.count + count) > Item.limit then
                                        TriggerClientEvent('esx:showNotification', source, "Vous avez le nombre maximum "..itemName)
                                   else
                                        xPlayer.addInventoryItem(item, count)
                                        account.removeMoney(prix)
                                        TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
                                   end
                              elseif (type == "weapon") then
                                   xPlayer.addWeapon(item, count)
                                   account.removeMoney(prix)
                                   TriggerClientEvent('esx:showNotification', source, "~g~Achats~w~ effectué !")
                              end
                         else
                              TriggerClientEvent('esx:showNotification', source, "Vous n'avez assez d'argent, il vous manque: ~r~"..prix - account.money.."$")
                         end
                    end)
               end
          end)
     end
end)
RegisterServerEvent("nth_jobs:DataUpdate")
AddEventHandler("nth_jobs:DataUpdate", function(Data)
     DataName = Data
end)

RegisterServerEvent('nth_jobs:putStockItems')
AddEventHandler('nth_jobs:putStockItems', function(itemName, count, label)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', DataName, function(inventory)
		local sourceItem = xPlayer.getInventoryItem(itemName)

		if sourceItem.count >= count and count > 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
			TriggerClientEvent('esx:showNotification', xPlayer.source, 'Vous venez de déposer ~r~x'..count..' '..label)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, "~r~Nombres d'items invalid !")
		end
	end)
end)
RegisterServerEvent('nth_jobs:getStockItem')
AddEventHandler('nth_jobs:getStockItem', function(itemName, count, max, label)
	local xPlayer = ESX.GetPlayerFromId(source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', DataName, function(inventory)

		local inventoryItem = inventory.getItem(itemName)

		if count > 0 and inventoryItem.count >= count then

			if sourceItem.limit ~= -1 and (sourceItem.count + count) > sourceItem.limit then
				TriggerClientEvent('esx:showNotification', source, "~r~Impossible d'en porter plus ! (max: "..sourceItem.limit..")")
			else
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)
				TriggerClientEvent('esx:showNotification', source, 'Vous venez de récupérer ~g~x'..count..' '..label)
			end
		else
			TriggerClientEvent('esx:showNotification', source, "~r~Nombre invalide ! (max: "..max..")")
		end
	end)
end)

ESX.RegisterServerCallback('nth_jobs:addArmoryWeapon', function(source, cb, weaponName, weaponAmmo)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.hasWeapon(weaponName) then
		TriggerEvent('esx_datastore:getSharedDataStore', DataName, function(store)
			local weapons = store.get('weapons') or {}
			weaponName = string.upper(weaponName)

			table.insert(weapons, {
				name = weaponName,
				ammo = weaponAmmo
			})

			xPlayer.removeWeapon(weaponName)
			store.set('weapons', weapons)
			cb()
		end)
	else
		xPlayer.showNotification('Vous ne possédez pas cette arme !')
		cb()
	end
end)

ESX.RegisterServerCallback('nth_jobs:removeArmoryWeapon', function(source, cb, weaponName, weaponAmmo)
     
	local xPlayer = ESX.GetPlayerFromId(source)

     if not xPlayer.hasWeapon(weaponName) then
          
          TriggerEvent('esx_datastore:getSharedDataStore', DataName, function(store)
			local weapons = store.get('weapons') or {}
			weaponName = string.upper(weaponName)

			for i = 1, #weapons, 1 do
				if weapons[i].name == weaponName and weapons[i].ammo == weaponAmmo then
					table.remove(weapons, i)

					store.set('weapons', weapons)
					xPlayer.addWeapon(weaponName, weaponAmmo)
					break
				end
			end

			cb()
		end)
	else
		xPlayer.showNotification('Vous possédez déjà cette arme !')
		cb()
	end
end)

ESX.RegisterServerCallback('nth_jobs:getArmoryWeapons', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_datastore:getSharedDataStore', DataName, function(store)
		local weapons = store.get('weapons') or {}
		cb(weapons)
	end)
end)

ESX.RegisterServerCallback('nth_jobs:getStockItems', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', DataName, function(inventory)
		cb(inventory.items)
	end)
end)
