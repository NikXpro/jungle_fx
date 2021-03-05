ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
  while ESX.GetPlayerData().job == nil do 
    Citizen.Wait(10)
  end
  PlayerData = ESX.GetPlayerData()
  ESX.PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob') 
AddEventHandler('esx:setJob', function(job)  
ESX.PlayerData.job = job 
end)

local PlayerMoney, PlayerCash = 0, 0

local megaphoneMenu = RageUI.CreateMenu("Mégaphone", "Mégaphone")
megaphoneMenu:SetRectangleBanner(2, 140, 4, 1.00)

local keymenu = RageUI.CreateMenu("List touche", "List touche")
keymenu:SetRectangleBanner(2, 140, 4, 1.00)

local atmMenu = RageUI.CreateMenu("", "ATM")
local atmAction = RageUI.CreateSubMenu(atmMenu, "", "ATM INFORMATION")



Citizen.CreateThread(function()
  while (true) do
    local attente = 500
    --Menu mégaphone début
    if RageUI.Visible(megaphoneMenu) then
      attente = 6
      RageUI.IsVisible(megaphoneMenu, function()
        for k,v in pairs(data.sounds) do  
          RageUI.Button(v.Name, nil, {RightLabel = "🔊"}, true, {
            onSelected = function()
              TriggerServerEvent("InteractSound_SV:PlayWithinDistance", v.Distance, v.Sound, v.Volume)
            end,
          });
        end
      end)
    end
    --Menu mégaphone fin

    --Menu list touche debut
    if RageUI.Visible(keymenu) then
      attente = 6
      RageUI.IsVisible(keymenu, function()
        for k,v in pairs(data.keylist) do  
          RageUI.Button(v.Action, nil, {RightLabel = "~b~" .. v.Key}, true, {
            onSelected = function()
              RageUI.CloseAll()
            end,
          });
        end
      end)
    end
    --Menu list touche fin

    --Menu banque debut
    if RageUI.Visible(atmMenu) then
      attente = 6
      RageUI.IsVisible(atmMenu, function()
        atmMenu:SetSpriteBanner('root_cause', 'shopui_title_fleecabank')
        atmAction:SetSpriteBanner("root_cause", "shopui_title_fleecabank")
        ESX.PlayerData = ESX.GetPlayerData()
        PlayerCash = ESX.Math.GroupDigits(ESX.PlayerData.money)
        RageUI.Button('Information', "Portefeuille: ~g~"..PlayerCash.."$", {RightLabel = "🔎"}, true, {onSelected = function() end}, atmAction);
        RageUI.Button('Dépot', "Portefeuille: ~g~"..PlayerCash.."$", {RightLabel = "📥"}, true, {
          onSelected = function()
            depot_argent()
          end
        });
        RageUI.Button('Retrait', "Portefeuille: ~g~"..PlayerCash.."$", {RightLabel = "📤"}, true, {
            onSelected = function()
              retire_argent()
            end
          });
      end)
    end
    if RageUI.Visible(atmAction) then
      attente = 6
      RageUI.IsVisible(atmAction, function()
          RageUI.Button('Propriétaire:', nil, {RightLabel = '~g~' .. GetPlayerName(PlayerId()) .. ''}, true, {
              onSelected = function()
                retire_argent()
              end
          });
          ESX.PlayerData = ESX.GetPlayerData()
          for i = 1, #ESX.PlayerData.accounts, 1 do
              if ESX.PlayerData.accounts[i].name == 'bank' then
                  PlayerMoney = ESX.Math.GroupDigits(ESX.PlayerData.accounts[i].money)
                  RageUI.Button('Solde:', nil, {RightLabel = "~g~"..PlayerMoney.."$"}, true, {
                      onSelected = function()
                      end
                  });
              end
          end
      end)
    end
    --Menu banque fin
    Citizen.Wait(attente)
  end
end)

MenuService = ""
function CreateService()
  ServiceActif = true
  for k, v in pairs(data.menu) do
    if v.MenuType == "service" then
      serviceMenu = RageUI.CreateMenu(v.TitreMenu, v.TitreMenu)
      serviceMenu:SetRectangleBanner(2, 140, 4, 1.00)
      serviceMenu:SetSubtitle(v.DescriptionMenu)
      serviceMenu.Closed = function()
        ServiceActif = false
      end
      if MenuService == v.MenuId then
        RageUI.Visible(serviceMenu, not RageUI.Visible(serviceMenu))
        while ServiceActif do
          Citizen.Wait(0)
          
          RageUI.IsVisible(serviceMenu, function()
            if ESX.PlayerData.job.name == v.ServiceOff then 
              RageUI.Button('Prendre son service', nil, {}, true, {
                onSelected = function()
                  local serviceon = v.ServiceOn
                  TriggerServerEvent('service:on', serviceon)
                end
              });
            elseif ESX.PlayerData.job.name == v.ServiceOn then 
              RageUI.Button('Quitter son service', nil, {}, true, {
                onSelected = function()
                  local serviceoff = v.ServiceOff
                  TriggerServerEvent('service:off', serviceoff)
                end
              });
            else
              RageUI.Separator("Vous n'êtes pas employez ici !")
            end
          end, function()
            --Panels
          end)
        end
      end
    end
  end
end


--Keys.Register('X', 'X', 'Menu des touche.', function()
--  RageUI.Visible(keymenu, not RageUI.Visible(keymenu))
--end)


Keys.Register('X', 'X', 'Mégaphone LSPD.', function()
  if VehiculeList(GetVehiclePedIsUsing(GetPlayerPed(-1))) then
    if ESX.PlayerData.job.name == "police" then
      RageUI.Visible(megaphoneMenu, not RageUI.Visible(megaphoneMenu))
    else
       ESX.ShowNotification('Vous n\'avez pas d\'acreditation fédéral')
    end
  end
end)

--Ouverture Menu banque
Citizen.CreateThread(function()
  while true do
    attente = 500
    for k in pairs(Config.kBank) do
      local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
      local dst = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.kBank[k].x, Config.kBank[k].y, Config.kBank[k].z)
      if dst <= 1.5 then
        attente = 5
        ESX.ShowHelpNotification("Press ~g~E~s~ pour accéder a votre compte")
        if IsControlJustReleased(0, 38) then
          RageUI.Visible(atmMenu, not RageUI.Visible(atmMenu))
        end
      end
    end
    Citizen.Wait(attente)
  end
end)