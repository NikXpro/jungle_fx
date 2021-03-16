ESX = nil
Citizen.CreateThread(function()
     for k,v in pairs(data.menu) do
          LoadModel(v.ped)
          local ped = CreatePed(5, v.ped, v.zone, v.heading, false, 1)
          FreezeEntityPosition(ped, 1)
          SetBlockingOfNonTemporaryEvents(ped, true)
     end
end)

Citizen.CreateThread(function()
     while true do
          attente = 500
          for k,v in pairs(data.menu) do
               local pPed = GetPlayerPed(-1)
               local pCoords = GetEntityCoords(pPed, true)
               local dst = GetDistanceBetweenCoords(pCoords, v.zone, true)
               if dst <= v.TailleZone then
                    attente = 1
                    dst = GetDistanceBetweenCoords(pCoords, v.zone, true)
                    ESX.ShowHelpNotification(v.MessageZone)
                    if IsControlJustReleased(0, 38) then
                         if v.MenuType == "service" then
                              MenuService = v.MenuId
                              CreateService()
                         end
                    end  
               end
          end
          Citizen.Wait(attente)
     end
end)


function LoadModel(model)
     while not HasModelLoaded(model) do
          RequestModel(model)
          Wait(100)
     end
end