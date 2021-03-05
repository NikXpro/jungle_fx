ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local veiculos = {}

Citizen.CreateThread(function ()
	local marker = vector3(Config.Zones.ShopEntering.Pos.x,Config.Zones.ShopEntering.Pos.y,Config.Zones.ShopEntering.Pos.z)
	CreateBlip()
	while true do
		Citizen.Wait(5)
		DrawMarker(Config.Zones.ShopEntering.Type, marker.x, marker.y, marker.z, 0, 0, 0, 0, 0, 0, 1.0001,1.0001,1.0001, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 0.8, 0, 0, 0, 0, 0, 0, 0)
		if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), marker.x, marker.y, marker.z, true ) < 4 then
		ESX.ShowHelpNotification('Appuyer sur ~INPUT_CONTEXT~ pour parler au vendeur')
		 	if (IsControlJustReleased(1, 51)) then		
				if Config.LicenseEnable then
					ESX.TriggerServerCallback('esx_license:checkLicense', function(hasDriversLicense)
						if hasDriversLicense then
							TriggerServerEvent('SC:cardealer:GetInfo')	
						else
							ESX.ShowNotification("Vous n'avez pas le permit !")
						end
					end, GetPlayerServerId(PlayerId()), 'drive')
				else
					TriggerServerEvent('SC:cardealer:GetInfo')	
				end
		 	end
		end
	end
end)

function CreateBlip()
	local pos = vector3(Config.Zones.ShopEntering.Pos.x,Config.Zones.ShopEntering.Pos.y,Config.Zones.ShopEntering.Pos.z)
	local blip = AddBlipForCoord(pos)
	SetBlipSprite (blip, 734)
	SetBlipColour(blip, 10)
	SetBlipDisplay(blip, 4)
	SetBlipScale  (blip, 0.9)
	SetBlipAsShortRange(blip, true)
	BeginTextCommandSetBlipName('STRING')
	AddTextComponentString("Larry's car")
	EndTextCommandSetBlipName(blip)
end

local infoChecked = false
RegisterNetEvent('SC:cardealer:ListInfo')
AddEventHandler('SC:cardealer:ListInfo', function(categories, vehicles, identity)
	if infoChecked == true then
		categories = {}
	end
	SetNuiFocus(true, true)
	SendNUIMessage({
		show = true,
		categories = categories,
		veiculos = vehicles,
		identidade = identity
	})
	infoChecked = true
end)

RegisterNetEvent('SC:cardealer:ListCategorieCars')
AddEventHandler('SC:cardealer:ListCategorieCars', function(vehicles)
	SendNUIMessage({
		filter = true,
		veiculos = vehicles
	})
end)

RegisterNetEvent('SC:cardealer:GetInCar')
AddEventHandler('SC:cardealer:GetInCar', function(model, generatedPlate)
	local playerPed = PlayerPedId()
	local carModel = model
	ESX.Game.SpawnVehicle(carModel, Config.Zones.ShopOutside.Pos, Config.Zones.ShopOutside.Heading, function(vehicle)
		TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
		SetVehicleNumberPlateText(vehicle, generatedPlate)
		FreezeEntityPosition(playerPed, false)
		SetEntityVisible(playerPed, true)
	end)
end)

RegisterNUICallback('comprar', function(data, cb)
	SetNuiFocus(false, false)
	local veh = data.id
	local generatedPlate = GeneratePlate()
	ESX.TriggerServerCallback('SC:cardealer:BuyCar', function(success)
	if success then
			TriggerServerEvent("SC:cardealer:SpawnCar", veh, generatedPlate)
		else
			ESX.ShowNotification("Not enough money")
		end
	end, veh, generatedPlate)
end)

RegisterNUICallback('filter', function(data, cb)
	local category = data.id
	TriggerServerEvent("SC:cardealer:GetCategorieCars", category)
end)

RegisterNUICallback('fechar', function()
    print("1 fermer")
    SetNuiFocus(false, false)
	print("1 fermer 2")
end)

AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then
	  return
	end
	SetNuiFocus(false, false)
end)