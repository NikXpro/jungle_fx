ESX = nil

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
                    ESX.ShowHelpNotification(string.format(v.MessageZone))
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