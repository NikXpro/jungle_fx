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

MenuShop = ""

function CreateShopMenu()
  ShopActif = true
  local LicenseData = {}
  ESX.TriggerServerCallback('esx_license:getLicenses', function(playerData) 
    LicenseData = playerData 
  end, GetPlayerServerId(PlayerId()))
  for _, v in pairs(data.shops) do
    local shopMenu = RageUI.CreateMenu(v.Settings.TitreMenu, v.Settings.TitreMenu)
    if v.Settings.CustomBanner.Activate == true then
      shopMenu:SetSpriteBanner(v.Settings.CustomBanner.BannerDic, v.Settings.CustomBanner.BannerName)
    else
      shopMenu:SetRectangleBanner(2, 140, 4, 1.00)
    end
    
    shopMenu:SetSubtitle(v.Settings.DescriptionMenu)
    shopMenu.Closed = function()
        ShopActif = false
    end
    if MenuShop == v.MenuId then
      RageUI.Visible(shopMenu, not RageUI.Visible(shopMenu))
      while ShopActif do
        Citizen.Wait(6)
        
        RageUI.IsVisible(shopMenu, function()
          --Items
          for _, k in pairs(v.items) do
            if k.licence == "" or k.licence == nil then
                AchatShopNormal(k)
            else
              if LicenseList(LicenseData, k.licence) then
                  AchatShopNormal(k)
              else
                RageUI.Button(k.Label, nil, {RightLabel = "🔒"}, true, {onSelected = function() ESX.ShowNotification("Vous n'avez pas la license nécessaire ("..k.licence..")")end})
              end
            end
          end
          end, function()
            --Panels
        end)
      end
    end
  end
end