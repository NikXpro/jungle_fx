ESX = nil

Citizen.CreateThread(function()
     while ESX == nil do
       TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
       Citizen.Wait(10)
     end
end)

Citizen.CreateThread(function()
     for k,v in pairs(data.shops) do
          if v.Settings.blip.Activate == true then
               local blip = AddBlipForCoord(v.Settings.MenuPosition)
               SetBlipSprite(blip, v.Settings.blip.BlipId)
               SetBlipScale(blip, v.Settings.blip.BlipScale)
               SetBlipColour(blip, v.Settings.blip.BlipColor)
               SetBlipAsShortRange(blip, true)
               if v.Settings.blip.property then
                    SetBlipCategory(blip, 10)
               end
               BeginTextCommandSetBlipName('STRING')
		     AddTextComponentString(v.Settings.blip.BlipName)
		     EndTextCommandSetBlipName(blip)
          end
     end
end)


Citizen.CreateThread(function()
     while true do
          attente = 1500
          for k,v in pairs(data.shops) do
               local pPed = GetPlayerPed(-1)
               local pCoords = GetEntityCoords(pPed, true)
               local dst = GetDistanceBetweenCoords(pCoords, v.Settings.MenuPosition, true)
               if v.Settings.marker.Activate == true then
                    if dst <= v.Settings.marker.ViewDistance then
                         attente = 7
                         DrawMarker(v.Settings.marker.MarkerType, v.Settings.MenuPosition, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, v.Settings.marker.MarkerSize.x, v.Settings.marker.MarkerSize.y, v.Settings.marker.MarkerSize.z, v.Settings.marker.MarkerColor.r, v.Settings.marker.MarkerColor.g, v.Settings.marker.MarkerColor.b, 100, false, true, 2, true, false, false, false)
                    end
               end
               if dst <= v.Settings.TailleZone then
                    if GetVehiclePedIsIn(PlayerPedId(), false) == 0 then
                        ESX.PlayerData = ESX.GetPlayerData()
                    
                         if v.Settings.JobRequired.Activate == true then
                              local jobName = ESX.PlayerData.job.name
                              if JobList(v.Settings.JobRequired.jobName) then
                                   attente = 7
                                   ESX.ShowHelpNotification(string.format(v.Settings.MessageZone))
                                   if IsControlJustReleased(0, 38) then
                                        MenuShop = v.MenuId
                                        CreateShopMenu()
                                   end
                              end
                         else
                              attente = 7
                              ESX.ShowHelpNotification(string.format(v.Settings.MessageZone))
                              if IsControlJustReleased(0, 38) then
                                   MenuShop = v.MenuId
                                   CreateShopMenu()
                              end
                         end
                    end
               end
          end
          Citizen.Wait(attente)
     end
 end)
 
 Citizen.CreateThread(function()
     for k,v in pairs(data.shops) do
          if v.Settings.ped.Activate == true then
               LoadModel(v.Settings.ped.PedHash)
               local ped = CreatePed(5, v.Settings.ped.PedHash, v.Settings.MenuPosition.x, v.Settings.MenuPosition.y, v.Settings.MenuPosition.z, v.Settings.ped.Heanding, false, 1)
               FreezeEntityPosition(ped, 1)
               SetBlockingOfNonTemporaryEvents(ped, true)
          end
     end
 end)