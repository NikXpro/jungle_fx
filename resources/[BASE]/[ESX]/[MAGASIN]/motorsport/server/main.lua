ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


Citizen.CreateThread(function()
	local char = Config.PlateLetters
	char = char + Config.PlateNumbers
	if Config.PlateUseSpace then char = char + 1 end

	if char > 8 then
		print(('[SC-motorsport] [^3WARNING^7] Plate character count reached, %s/8 characters!'):format(char))
	end
end)

function RemoveOwnedVehicle(plate)
	MySQL.Async.execute('DELETE FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	})
end


RegisterServerEvent('SC:motorsport:GetCategorieCars')
AddEventHandler('SC:motorsport:GetCategorieCars', function(id)
	local _id = id
	local source = source
	local category = getCategory(_id)
	local vehicles = getAllCategorieCars(category.name)
    TriggerClientEvent('SC:motorsport:ListCategorieCars', source, vehicles)
end)

RegisterServerEvent('SC:motorsport:GetInfo')
AddEventHandler('SC:motorsport:GetInfo', function()
    local source = source
    local identity = getIdentity(source)
	local categories = getAllCategories()
	local vehicles = getAllCars()
    TriggerClientEvent('SC:motorsport:ListInfo', source, categories, vehicles, identity.firstname.." "..identity.lastname)
end)

RegisterServerEvent('SC:motorsport:SpawnCar')
AddEventHandler('SC:motorsport:SpawnCar', function(veh, plate)
	local _source = source
	TriggerClientEvent("SC:motorsport:GetInCar", _source, veh, plate)
end)


ESX.RegisterServerCallback('SC:motorsport:BuyCar', function(source, cb, veh, plate)
	local xPlayer = ESX.GetPlayerFromId(source)
	local vehicle = getCar(veh)

	if vehicle.price and xPlayer.getMoney() >= vehicle.price then
		xPlayer.removeMoney(vehicle.price)

		MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle) VALUES (@owner, @plate, @vehicle)', {
			['@owner']   = xPlayer.identifier,
			['@plate']   = plate,
			['@vehicle'] = json.encode({model = GetHashKey(vehicle.model), plate = plate})
		}, function(rowsChanged)
			xPlayer.showNotification('Le vehicule imatriculer ~r~'..plate..'~w~ et maintenant a vous !')
			cb(true)
		end)
	else
		cb(false)
	end
end)

ESX.RegisterServerCallback('SC-motorsport:isPlateTaken', function(source, cb, plate)
	MySQL.Async.fetchAll('SELECT 1 FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	}, function(result)
		cb(result[1] ~= nil)
	end)
end)

ESX.RegisterServerCallback('SC-motorsport:retrieveJobVehicles', function(source, cb, type)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE owner = @owner AND type = @type AND job = @job', {
		['@owner'] = xPlayer.identifier,
		['@type'] = type,
		['@job'] = xPlayer.job.name
	}, function(result)
		cb(result)
	end)
end)

RegisterNetEvent('SC-motorsport:setJobVehicleState')
AddEventHandler('SC-motorsport:setJobVehicleState', function(plate, state)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.execute('UPDATE owned_vehicles SET `stored` = @stored WHERE plate = @plate AND job = @job', {
		['@stored'] = state,
		['@plate'] = plate,
		['@job'] = xPlayer.job.name
	}, function(rowsChanged)
		if rowsChanged == 0 then
			print(('[SC-motorsport] [^3WARNING^7] %s exploited the garage!'):format(xPlayer.identifier))
		end
	end)
end)

