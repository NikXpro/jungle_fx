ESX = nil

local Emoticon = {
	Couleur = {
		Rouge = "🔴",
		Bleu = "🔵",
		Blanc = "⚪",
		Noir = "⚫", 
		Orange = "🟠",
		Jaune = "🟡",
		Vert = "🟢",
		Violet = "🟣",
		Maron = "🟤",
	},
	Poubelle = "🗑️",
	Donner = "📤",
	Recevoir = "📥",
	Utilliser = "✅",
	Loupe = "🔎",
	Cheval = "🐎",
	Menotte = "🔗",
	Dollard = "💲",
	Objet = "🧊",
	Reparer = "🔧",
	Netoyer = "🧼",
	Sang = "🩸",
	Droite = ">",
	Annonce = "📢",
	Pied = "👣",
	Feuille = "📃",
	Permis = "📇",
  Dossier = "📁",
  Reciclage = "♻️"
}

local societymoney, societymoney2 = nil, nil

local PM ={
  ItemSelected = {},
  ItemSelected2 = {},
  WeaponData = {},
  Ped = PlayerPedId(), 
  facture = {},
  identityCard = 2,
  weaponCard = 2,
  driverCard = 2,
  minimap = true,
  hud = true,
  amplifierlight = false,
  amplifiercolor = false,
  blackandwhite = false
}

local plyPed = PlayerPedId()

Citizen.CreateThread(function()
  while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj)
			ESX = obj
		end)
		Citizen.Wait(10)
	end

  ESX.PlayerData = ESX.GetPlayerData()

  while ESX.GetPlayerData().job == nil do
    Citizen.Wait(10)
  end

  RefreshMoney()
  RefreshMoney2()

	ESX.GetWeaponList = ESX.GetWeaponList()
  
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
	RefreshMoney()
end)

RegisterNetEvent('esx:setJob2')
AddEventHandler('esx:setJob2', function(job2)
	ESX.PlayerData.job2 = job2
	RefreshMoney2()
end)


function hasIdentity(cb)
	if (ESX == nil) then return cb(0) end
	ESX.TriggerServerCallback('nth_f5:getItemAmountIdentity', function(qtty)
	  	cb(qtty > 0)
	end, 'card_identity')
end
function hasDriver(cb)
	if (ESX == nil) then return cb(0) end
	ESX.TriggerServerCallback('nth_f5:getItemAmountDrive', function(qtty)
		cb(qtty > 0)
    print(qtty > 0)
	end, 'card_driver')
end
function hasWeapon(cb)
	if (ESX == nil) then return cb(0) end
	ESX.TriggerServerCallback('nth_f5:getItemAmountPPA2', function(qtty)
		cb(qtty > 0)
	end, 'card_ppa_2')
end

function RefreshMoney()
	if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.grade_name == 'boss' then
		ESX.TriggerServerCallback('esx_society:getSocietyMoney', function(money)
			societymoney = ESX.Math.GroupDigits(money)
		end, ESX.PlayerData.job.name)
	end
end

function RefreshMoney2()
	if ESX.PlayerData.job2 ~= nil and ESX.PlayerData.job2.grade_name == 'boss' then
		ESX.TriggerServerCallback('esx_society:getSocietyMoney', function(money)
			societymoney2 = ESX.Math.GroupDigits(money)
		end, ESX.PlayerData.job2.name)
	end
end

RegisterNetEvent('nth_f5:Weapon_addAmmoToPedC')
AddEventHandler('nth_f5:Weapon_addAmmoToPedC', function(value, quantity)
	local weaponHash = GetHashKey(value)

	if HasPedGotWeapon(plyPed, weaponHash, false) and value ~= 'WEAPON_UNARMED' then
		AddAmmoToPed(plyPed, weaponHash, quantity)
	end
end)


RegisterNetEvent('esx_addonaccount:setMoney')
AddEventHandler('esx_addonaccount:setMoney', function(society, money)
	if ESX.PlayerData.job ~= nil and ESX.PlayerData.job.grade_name == 'boss' and 'society_' .. ESX.PlayerData.job.name == society then
		societymoney = ESX.Math.GroupDigits(money)
	end

	if ESX.PlayerData.job2 ~= nil and ESX.PlayerData.job2.grade_name == 'boss' and 'society_' .. ESX.PlayerData.job2.name == society then
		societymoney2 = ESX.Math.GroupDigits(money)
	end
end)

local personalMenu = RageUI.CreateMenu("", "Menu personnel")
  local backpackMenu = RageUI.CreateSubMenu(personalMenu, "", "Sac a dos")
  local objetMenu = RageUI.CreateSubMenu(backpackMenu, "", "Objets")
  local objetActionMenu = RageUI.CreateSubMenu(objetMenu, "", "Action objet")
  local armeMenu = RageUI.CreateSubMenu(backpackMenu, "", "Armes")
  local armeActionMenu = RageUI.CreateSubMenu(armeMenu, "", "Action arme")
local portefeuilleMenu = RageUI.CreateSubMenu(personalMenu, "", "Portefeuille")
  local moneyMenu = RageUI.CreateSubMenu(portefeuilleMenu, "", "Actions Liquide")
  local blackMenu = RageUI.CreateSubMenu(portefeuilleMenu, "", "Actions declare")
  local factureMenu = RageUI.CreateSubMenu(portefeuilleMenu, "", "Factures")
  local identityMenu = RageUI.CreateSubMenu(portefeuilleMenu, "", "Piece d'identite")
local actionMenu = RageUI.CreateSubMenu(personalMenu, "", "Actions rapides")
  local incidentMenu = RageUI.CreateSubMenu(actionMenu, "", "Raport d'incident")
local optionMenu = RageUI.CreateSubMenu(personalMenu, "", "Option")
  local filtreMenu = RageUI.CreateSubMenu(optionMenu, "", "Filtres")
  



Citizen.CreateThread(function()
  while (true) do
    local attente = 500
    --Menu Personnel début
    if RageUI.Visible(personalMenu) then
      personalMenu:SetSpriteBanner("banner", "jungle_header")
      attente = 6
      RageUI.IsVisible(personalMenu, function()
        RageUI.Button('Sac a dos', nil, {RightLabel = "→"}, true, {onSelected = function() end}, backpackMenu);
        RageUI.Button('Portefeuille', nil, {RightLabel = "→"}, true, {onSelected = function() end}, portefeuilleMenu);
        RageUI.Button('Option diverse', nil, {RightLabel = "→"}, true, {onSelected = function() end}, optionMenu);
        RageUI.Button('Actions rapides', nil, {RightLabel = "→"}, true, {onSelected = function() end}, actionMenu);
      end)
    end
    --Menu Personnel fin

    --Submenu Sac a dos début
    if RageUI.Visible(backpackMenu) then
      backpackMenu:SetSpriteBanner("banner", "jungle_header")
      attente = 6
      RageUI.IsVisible(backpackMenu, function()
        RageUI.Button('Objets', nil, {RightLabel = Emoticon.Loupe}, true, {onSelected = function() end}, objetMenu);
        RageUI.Button('Armes', nil, {RightLabel = Emoticon.Loupe}, true, {onSelected = function() end}, armeMenu);
      end)
    end
    --Submenu Sac a dos fin

    --Submenu Objet début
    if RageUI.Visible(objetMenu) then
      objetMenu:SetSpriteBanner("banner", "jungle_header")
      attente = 6
      RageUI.IsVisible(objetMenu, function()
        ESX.PlayerData = ESX.GetPlayerData()
        for i = 1, #ESX.PlayerData.inventory do
          if ESX.PlayerData.inventory[i].count > 0 then
            RageUI.Button('~s~' ..ESX.PlayerData.inventory[i].label, nil, {RightLabel = '~g~' ..ESX.PlayerData.inventory[i].count.."~s~ →"},true, {
              onSelected = function()
                PM.ItemSelected = ESX.PlayerData.inventory[i]
              end
            }, objetActionMenu);
          end
        end
      end)
    end
    --Submenu Objet fin

    --Submenu Arme début
    if RageUI.Visible(armeMenu) then
      armeMenu:SetSpriteBanner("banner", "jungle_header")
      attente = 6
      RageUI.IsVisible(armeMenu, function()
        for i = 1, #ESX.GetWeaponList, 1 do
          if HasPedGotWeapon(PlayerPedId(), GetHashKey(ESX.GetWeaponList[i].name), false) and ESX.GetWeaponList[i].name ~= 'WEAPON_UNARMED' then
              local ammo      = GetAmmoInPedWeapon(PlayerPedId(), GetHashKey(ESX.GetWeaponList[i].name))
              local label     = ESX.GetWeaponList[i].label
              local value     = ESX.GetWeaponList[i].name
              RageUI.Button('~s~' ..label, nil, {RightLabel = '~g~' ..ammo.."~s~ →"},true, {
                onSelected = function()
                  PM.ItemSelected = ESX.GetWeaponList[i]
                end
              }, armeActionMenu);
          end
        end
      end)
    end
    --Submenu Arme fin

    --Submenu Action d'objet début
    if RageUI.Visible(objetActionMenu) then
      objetActionMenu:SetSpriteBanner("banner", "jungle_header")
      attente = 6
      RageUI.IsVisible(objetActionMenu, function()
        RageUI.Button('Utiliser l\'objet', nil, {RightLabel = Emoticon.Utilliser}, true, {
          onSelected = function()
            if PM.ItemSelected.usable then
              TriggerServerEvent('esx:useItem', PM.ItemSelected.name)
            else
              ESX.ShowNotification('l\'items n\'est pas utilisable' ..PM.ItemSelected.label)
              PlaySoundFrontend(-1, "ERROR", "HUD_AMMO_SHOP_SOUNDSET", 1)
            end
         end
        });
        RageUI.Button('Donner l\'objet', nil, {RightLabel = Emoticon.Donner}, true, {
          onSelected = function()
            local sonner,quantity = CheckQuantity(KeyboardInput("Nombres d'objet a donner ?(max:" .. PM.ItemSelected.count ..")", "", 100))
            local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
            local pPed = GetPlayerPed(-1)
            local coords = GetEntityCoords(pPed)
            local x,y,z = table.unpack(coords)
            DrawMarker(2, x, y, z+1.5, 0, 0, 0, 180.0,nil,nil, 0.5, 0.5, 0.5, 0, 0, 255, 120, true, true, p19, true)
            if sonner then
                if closestDistance ~= -1 and closestDistance <= 3 then
                    local closestPed = GetPlayerPed(closestPlayer)
                    if IsPedOnFoot(closestPed) then
                            TriggerServerEvent('esx:giveInventoryItem', GetPlayerServerId(closestPlayer), 'item_standard', PM.ItemSelected.name, quantity)
                            --RageUI.CloseAll()
                            RageUI.GoBack()
                        else
                          ESX.ShowNotification("~r~Nombres d'items invalid !")
                        end
                    --else
                        --ESX.ShowNotification("~∑~ Tu ne peux pas donner d'items dans un véhicule !", PM.ItemSelected.label
                else
                  ESX.ShowNotification("~r~Aucun joueur ~r~Proche~n~ !")
                end
            end
         end
        });
        RageUI.Button('Jeter l\'objet', nil, {RightLabel = Emoticon.Poubelle}, true, {
          onSelected = function()
            if PM.ItemSelected.canRemove then
              local post,quantity = CheckQuantity(KeyboardInput("Nombres d'items que vous voulez jeter(max:" .. PM.ItemSelected.count ..")", '', 100))
              if post then
                  if not IsPedSittingInAnyVehicle(PlayerPed) then
                      TriggerServerEvent('esx:removeInventoryItem', 'item_standard', PM.ItemSelected.name, quantity)
                      --RageUI.CloseAll()
                      RageUI.GoBack()
                  end
              end
          end
         end
        });
      end)
    end
    --Submenu Action d'objet fin
    
    --Submenu Action d'Arme début
    if RageUI.Visible(armeActionMenu) then
      armeActionMenu:SetSpriteBanner("banner", "jungle_header")
      attente = 6
      RageUI.IsVisible(armeActionMenu, function()
        if Config.GiveMunition == true then
          RageUI.Button('Donner des munition', nil, {RightLabel = Emoticon.Donner}, true, {
            onSelected = function()
              local post, quantity = CheckQuantity(KeyboardInput('Nombre de munitions ?', '', 4))
		  	  		if post then
		  	  			local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
		  	  			if closestDistance ~= -1 and closestDistance <= 3 then
		  	  				local closestPed = GetPlayerPed(closestPlayer)
                  if not IsPedOnVehicle(closestPed) then
                    local ammo      = GetAmmoInPedWeapon(PlayerPedId(), GetHashKey(PM.ItemSelected.name))
		  	  					if ammo > 0 then
		  	  						if quantity <= ammo and quantity >= 0 then
		  	  							local finalAmmo = math.floor(ammo - quantity)
                        SetPedAmmo(plyPed, PM.ItemSelected.name, finalAmmo)
                        local weaponHash = GetHashKey(value)
	                      if HasPedGotWeapon(plyPed, weaponHash, false) and value ~= 'WEAPON_UNARMED' then
	                      	AddAmmoToPed(closestPlayer, GetHashKey(PM.ItemSelected.name), quantity)
	                      end
		  	  							--TriggerServerEvent('nth_f5:Weapon_addAmmoToPedS', GetPlayerServerId(closestPlayer), PM.ItemSelected.name, quantity)
		  	  							ESX.ShowNotification('gave_ammo'..quantity.." a "..GetPlayerName(closestPlayer))
		  	  							RageUI.GoBack()
		  	  						else
		  	  							ESX.ShowNotification('not_enough_ammo')
		  	  						end
		  	  					else
		  	  						ESX.ShowNotification('no_ammo')
		  	  					end
		  	  				else
		  	  					ESX.ShowNotification('in_vehicle_give', PM.ItemSelected.label)
		  	  				end
		  	  			else
		  	  				ESX.ShowNotification('players_nearby')
		  	  			end
		  	  		else
		  	  			ESX.ShowNotification('amount_invalid')
		  	  		end
            end
          });
        end
        RageUI.Button('Donner l\'arme', nil, {RightLabel = Emoticon.Donner},true, {
          onSelected = function()
            local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()                   
            if closestDistance ~= -1 and closestDistance <= 3 then
              local closestPed = GetPlayerPed(closestPlayer)
              local pPed = GetPlayerPed(-1)
              local coords = GetEntityCoords(pPed)
              local x,y,z = table.unpack(coords)
              DrawMarker(2, x, y, z+1.5, 0, 0, 0, 180.0,nil,nil, 0.5, 0.5, 0.5, 0, 0, 255, 120, true, true, p19, true)
            
              if IsPedOnFoot(closestPed) then
                local ammo      = GetAmmoInPedWeapon(PlayerPedId(), GetHashKey(PM.ItemSelected.name))
                TriggerServerEvent('esx:giveInventoryItem', GetPlayerServerId(closestPlayer), 'item_weapon', PM.ItemSelected.name, ammo)
                --seAll()
                RageUI.GoBack()
              else
                ESX.ShowNotification('~r~Impossible~s~ de donner une arme dans un véhicule ('..PM.ItemSelected.label..")")
                PlaySoundFrontend(-1, "ERROR", "HUD_AMMO_SHOP_SOUNDSET", 1)
              end
            else
              ESX.ShowNotification('Aucun joueur ~r~proche !')
              PlaySoundFrontend(-1, "ERROR", "HUD_AMMO_SHOP_SOUNDSET", 1)
            end
          end
        });
        RageUI.Button('Jeter l\'arme', nil, {RightLabel = Emoticon.Poubelle},true, {
          onSelected = function()
            if not IsPedInAnyVehicle(PM.Ped, true) then
              TriggerServerEvent('esx:removeInventoryItem', 'item_weapon', PM.ItemSelected.name)
              RageUI.GoBack()
            else
              ESX.ShowNotification('~r~Impossible~s~ de Jeter une arme dans un véhicule ('..PM.ItemSelected.label..")")
              PlaySoundFrontend(-1, "ERROR", "HUD_AMMO_SHOP_SOUNDSET", 1)
            end
          end
        });
      end)
    end
    --Submenu Action d'Arme fin

    --Menu Portefeuille début
    if RageUI.Visible(portefeuilleMenu) then
      portefeuilleMenu:SetSpriteBanner("banner", "jungle_header")
      attente = 6
      RageUI.IsVisible(portefeuilleMenu, function()
        if societymoney ~= nil then
          RageUI.Separator(string.upper("~g~"..ESX.PlayerData.job.grade_label.."  | "..societymoney.."$ |  ".. ESX.PlayerData.job.label))
        else
          RageUI.Separator(string.upper("~g~"..ESX.PlayerData.job.grade_label.."  |  ".. ESX.PlayerData.job.label))
        end

        if societymoney2 ~= nil then
          RageUI.Separator(string.upper("~r~"..ESX.PlayerData.job2.grade_label.."  | "..societymoney2.."$ |  ".. ESX.PlayerData.job2.label))
        else
          RageUI.Separator(string.upper("~g~"..ESX.PlayerData.job2.grade_label.."  |  ".. ESX.PlayerData.job2.label))
        end
        RageUI.Button('Liquide:', nil, {RightLabel = "~g~" ..ESX.Math.GroupDigits(ESX.PlayerData.money).."$~s~ →"},true, {
          onSelected = function()
          end
        }, moneyMenu);
        ESX.PlayerData = ESX.GetPlayerData()
        for i = 1, #ESX.PlayerData.accounts, 1 do
          if ESX.PlayerData.accounts[i].name == 'black_money' then
            RageUI.Button('Non déclaré:', nil, {RightLabel = "~r~" ..ESX.Math.GroupDigits(ESX.PlayerData.accounts[i].money).."$~s~ →"},true, {
                  onSelected = function()
                  end
            }, blackMenu);
          end
        end
        RageUI.Button('Piéce d\'identité', nil, {RightLabel = Emoticon.Loupe},true, {onSelected = function() hasIdentity(function(hasIdentity) hasIdentity = hasIdentity end) hasDriver(function(hasDriver) hasDriver = hasDriver end) hasWeapon(function(hasWeapon) hasWeapon = hasWeapon end) Wait(1000) end}, identityMenu);
        RageUI.Button('Facture', nil, {RightLabel = Emoticon.Loupe},true, {onSelected = function()end}, factureMenu);
      end)
    end
    --Menu Portefeuille fin

    --Menu action liquide début
    if RageUI.Visible(moneyMenu) then
      moneyMenu:SetSpriteBanner("banner", "jungle_header")
      attente = 6
      RageUI.IsVisible(moneyMenu, function()
        RageUI.Button('Donner du liquide', nil, {RightLabel = Emoticon.Donner},true, {
          onSelected = function()
            local black, quantity = CheckQuantity(KeyboardInput("Combient voulez vous donner (~g~"..ESX.Math.GroupDigits(ESX.PlayerData.money).."$~s~)", '', 10))
            if black then
              local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
              if closestDistance ~= -1 and closestDistance <= 3 then
                local closestPed = GetPlayerPed(closestPlayer)
                if not IsPedSittingInAnyVehicle(closestPed) then
                  TriggerServerEvent('esx:giveInventoryItem', GetPlayerServerId(closestPlayer), 'item_money', ESX.PlayerData.money, quantity)
                  --RageUI.CloseAll()
                  RageUI.GoBack()
                else
                  ESX.ShowNotification('Vous ne pouvez pas donner de l\'argent dans un véhicles')
                end
              else
                ESX.ShowNotification('Aucun joueur proche !')
              end
            else
              ESX.ShowNotification('Somme invalid')
            end
          end
        });
        RageUI.Button('Jeter du liquide', nil, {RightLabel = Emoticon.Poubelle},true, {
          onSelected = function()
            local black, quantity = CheckQuantity(KeyboardInput("Combien voulez-vous jeter ?(~g~"..ESX.Math.GroupDigits(ESX.PlayerData.money).."$~s~)", '', 10))
            if black then
              if not IsPedSittingInAnyVehicle(PlayerPed) then
                TriggerServerEvent('esx:removeInventoryItem', 'item_money', ESX.PlayerData.money, quantity)
                --RageUI.CloseAll()
                RageUI.GoBack()
              else
                ESX.ShowNotification('Vous pouvez pas jeter de l\'argent dans un véhicles')
                PlaySoundFrontend(-1, "ERROR", "HUD_AMMO_SHOP_SOUNDSET", 1)
              end
            else
              ESX.ShowNotification('Somme Invalid')
              PlaySoundFrontend(-1, "ERROR", "HUD_AMMO_SHOP_SOUNDSET", 1)
            end
          end
        });
      end)
    end
    --Menu action liquide fin

    --Menu action blackmoney début
    if RageUI.Visible(blackMenu) then
      blackMenu:SetSpriteBanner("banner", "jungle_header")
      attente = 6
      RageUI.IsVisible(blackMenu, function()
        ESX.PlayerData = ESX.GetPlayerData()
        for i = 1, #ESX.PlayerData.accounts, 1 do
          if ESX.PlayerData.accounts[i].name == 'black_money' then
            RageUI.Button('Donner de l\'argent non déclaré', nil, {RightLabel = Emoticon.Donner},true, {
              onSelected = function()
                local black, quantity = CheckQuantity(KeyboardInput("Combient voulez vous donner (~r~"..ESX.Math.GroupDigits(ESX.PlayerData.accounts[i].money).."$~s~)", '', 10))
                if black then
                    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
                    if closestDistance ~= -1 and closestDistance <= 3 then
                        local closestPed = GetPlayerPed(closestPlayer)
                        if not IsPedSittingInAnyVehicle(closestPed) then
                            TriggerServerEvent('esx:giveInventoryItem', GetPlayerServerId(closestPlayer), 'item_account', ESX.PlayerData.accounts[i].name, quantity)
                            --RageUI.CloseAll()
                            RageUI.GoBack()
                        else
                          ESX.ShowNotification('Vous ne pouvez pas donner de l\'argent dans un véhicles')
                        end
                    else
                      ESX.ShowNotification('Aucun joueur proche !')
                    end
                else
                  ESX.ShowNotification('Somme invalid')
                end
              end
            });
            RageUI.Button('Jeter de l\'argent non déclaré', nil, {RightLabel = Emoticon.Poubelle},true, {
              onSelected = function()
                local black, quantity = CheckQuantity(KeyboardInput("Combien voulez-vous jeter ?(~r~"..ESX.Math.GroupDigits(ESX.PlayerData.accounts[i].money).."$~s~)", '', 10))
                if black then
                    if not IsPedSittingInAnyVehicle(PlayerPed) then
                        TriggerServerEvent('esx:removeInventoryItem', 'item_account', ESX.PlayerData.accounts[i].name, quantity)
                        --RageUI.CloseAll()
                        RageUI.GoBack()
                    else
                      ESX.ShowNotification('Vous ne pouvez pas Jeter de l\'argent dans un véhicles')
                      PlaySoundFrontend(-1, "ERROR", "HUD_AMMO_SHOP_SOUNDSET", 1)
                    end
                else
                  ESX.ShowNotification('Somme Invalid')
                  PlaySoundFrontend(-1, "ERROR", "HUD_AMMO_SHOP_SOUNDSET", 1)
                end
              end
            });
          end
        end
      end)
    end
    --Menu action blackmoney fin

    --Menu facture début
    if RageUI.Visible(factureMenu) then
      factureMenu:SetSpriteBanner("banner", "jungle_header")
      attente = 6
      RageUI.IsVisible(factureMenu, function()
        if #PM.facture == 0 then
          RageUI.Separator("Aucune facture impayée")
        end
        for i = 1, #PM.facture, 1 do
          RageUI.Button(PM.facture[i].label, nil, {RightLabel = "~g~"..ESX.Math.GroupDigits(PM.facture[i].amount).."$~s~ "..Emoticon.Utilliser},true, {
            onSelected = function()
              ESX.TriggerServerCallback('esx_billing:payBill', function()
                ESX.TriggerServerCallback('nth_f5:billing', function(bills)
                  PM.facture = bills
                end)
              end, PM.facture[i].id)
            end
          });
        end
      end)
    end
    --Menu facture fin

    --Menu identity début
    if RageUI.Visible(identityMenu) then
      identityMenu:SetSpriteBanner("banner", "jungle_header")
      attente = 6
      RageUI.IsVisible(identityMenu, function()
        if ItemHave.Identity > 0 then
          RageUI.List('Carte d\'identité', {
            { Name = "Montrer", Value = 1 },
            { Name = "Regarder", Value = 2 }
          }, PM.identityCard, nil, {}, true, {
          onListChange = function(Index, Item)
            PM.identityCard = Index;
          end,
          onSelected = function(Index, Item)
            PM.identityCard = Index;
            if Index == 1 then
              print("Montrer")
              local player, distance = ESX.Game.GetClosestPlayer()
              if distance ~= -1 and distance <= 3.0 then
                TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player))
              else
                ESX.ShowNotification('Aucun joueur a proximiter')
              end
            elseif Index == 2 then
              print("Regarder")
              TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()))
            end
          end,
          })
        else
          RageUI.Button('Carte d\'identité', nil, {RightLabel = "🔒"},true, {onSelected = function() ESX.ShowNotification("Vous ne posséder pas de carte d'identité sur vous !") end });
        end
        if ItemHave.Driver > 0 then
          RageUI.List('Permis de conduire', {
            { Name = "Montrer", Value = 1 },
            { Name = "Regarder", Value = 2 }
          }, PM.driverCard, nil, {}, true, {
          onListChange = function(Index, Item)
            PM.driverCard = Index;
          end,
          onSelected = function(Index, Item)
            PM.driverCard = Index;
            if Index == 1 then
              print("Montrer")
              local player, distance = ESX.Game.GetClosestPlayer()
              if distance ~= -1 and distance <= 3.0 then
                TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'driver')
              else
                ESX.ShowNotification('Aucun joueur a proximiter')
              end
            elseif Index == 2 then
              print("Regarder")
              TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'driver')
            end
          end,
          })        
        else
          RageUI.Button('Permis de conduire', nil, {RightLabel = "🔒"},true, {onSelected = function() ESX.ShowNotification("Vous ne posséder pas de permis de conduire sur vous !") end });
        end
        if ItemHave.PPA > 0 then
          RageUI.List('Permis Port d\'arme', {
            { Name = "Montrer", Value = 1 },
            { Name = "Regarder", Value = 2 }
          }, PM.weaponCard, nil, {}, true, {
          onListChange = function(Index, Item)
            PM.weaponCard = Index;
          end,
          onSelected = function(Index, Item)
            PM.weaponCard = Index;
            if Index == 1 then
              print("Montrer")
              local player, distance = ESX.Game.GetClosestPlayer()
              if distance ~= -1 and distance <= 3.0 then
                TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'weapon')
              else
                ESX.ShowNotification('Aucun joueur a proximiter')
              end
            elseif Index == 2 then
              print("Regarder")
              TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'weapon')
            end
          end,
        })
        else
          RageUI.Button('Permis Port d\'arme', nil, {RightLabel = "🔒"},true, {onSelected = function() ESX.ShowNotification("Vous ne posséder pas de permis de port d'arme sur vous !") end });
        end
      end)
    end
    --Menu identity fin

    --Menu action rapide début
    if RageUI.Visible(actionMenu) then
      actionMenu:SetSpriteBanner("banner", "jungle_header")
      attente = 6
      RageUI.IsVisible(actionMenu, function()
        RageUI.Button("Porter sur son dos", nil, {RightLabel = Emoticon.Cheval},true, {onSelected = function()ExecuteCommand("piggyback")end});
        RageUI.Button("Porter sur son épaule", nil, {RightLabel = Emoticon.Cheval},true, {onSelected = function()ExecuteCommand("carry")end});
        RageUI.Button('Rapporter un incident', nil, {RightLabel = "→"}, true, {onSelected = function() end}, incidentMenu);
      end)
    end
    --Menu action rapide fin

    --Menu incident début
    if RageUI.Visible(incidentMenu) then
      incidentMenu:SetSpriteBanner("banner", "jungle_header")
      attente = 6
      RageUI.IsVisible(incidentMenu, function()
        RageUI.Button("Rapporter un incident", nil, {},true, {
          onSelected = function()
            local bug = KeyboardInput("Decrivez-nous votre problème", '', 450)
            ExecuteCommand("help "..bug)
          end
        });
        RageUI.Button("Rapporter un bug", nil, {},true, {
          onSelected = function()
            local bug = KeyboardInput("Decrivez-nous le bug rencontré", '', 450)
            TriggerServerEvent("BUG_REPORT", bug)
          end
        });
      end)
    end
    --Menu incident fin

    
    --Menu incident début
    if RageUI.Visible(optionMenu) then
      optionMenu:SetSpriteBanner("banner", "jungle_header")
      attente = 6
      RageUI.IsVisible(optionMenu, function()
        RageUI.Button('Filtres', nil, {RightLabel = "→"}, true, {onSelected = function() end}, filtreMenu);
        RageUI.Checkbox('Minimap', nil, PM.minimap, {}, {
          onChecked = function()
            PM.minimap = true
          end,
          onUnChecked = function()
            PM.minimap = false
          end,
          onSelected = function(Index)
            PM.minimap = Index
          end
        });
        RageUI.Checkbox('HUD', nil, PM.hud, {RightLabel = ""}, {
          onChecked = function()
            TriggerEvent("nth:hud")
          end,
          onUnChecked = function()
            TriggerEvent("nth:hud")
          end,
          onSelected = function(Index)
            PM.hud = Index
          end
        });
        RageUI.Button('Optimiser', nil, {RightLabel = Emoticon.Reciclage, Color = { HightLightColor = { 0, 155, 0, 150 }, BackgroundColor = { 0, 155, 0, 150 } }}, true, {onSelected = function() Optimisation() end});
      end)
    end
    --Menu incident fin

    --Menu incident début
    if RageUI.Visible(filtreMenu) then
      filtreMenu:SetSpriteBanner("banner", "jungle_header")
      attente = 6
      RageUI.IsVisible(filtreMenu, function()
        RageUI.Checkbox('Couleur modifieur', nil, PM.amplifierlight, {RightLabel = ""}, {
          onChecked = function()
            SetTimecycleModifier('tunnel')
            PM.amplifiercolor = false
            PM.blackandwhite = false
          end,
          onUnChecked = function()
            SetTimecycleModifier('')
          end,
          onSelected = function(Index)
            PM.amplifierlight = Index
          end
        });
        RageUI.Checkbox('Couleur amplifiées', nil, PM.amplifiercolor, {RightLabel = ""}, {
          onChecked = function()
            SetTimecycleModifier('rply_saturation')
            PM.amplifierlight = false
            PM.blackandwhite = false
          end,
          onUnChecked = function()
            SetTimecycleModifier('')
          end,
          onSelected = function(Index)
            PM.amplifiercolor = Index
          end
        });
        RageUI.Checkbox('Noir & Blanc', nil, PM.blackandwhite, {RightLabel = ""}, {
          onChecked = function()
            SetTimecycleModifier('rply_saturation_neg')
            PM.amplifierlight = false
            PM.amplifiercolor = false
          end,
          onUnChecked = function()
            SetTimecycleModifier('')
          end,
          onSelected = function(Index)
            PM.blackandwhite = Index
          end
        });
      end)
    end
    --Menu incident fin
    Citizen.Wait(attente)
  end
end)

Citizen.CreateThread(function()
  while true do
    local attente = 500
    if not PM.minimap then
      attente = 5 
      DisplayRadar(false)
    end
    Citizen.Wait(attente)
  end
end)

--Ouverture du menu
Keys.Register('F5', 'F5', 'Menu personnel.', function()
  if not RageUI.Visible() then
    ESX.TriggerServerCallback('nth_f5:billing', function(bills)
      PM.facture = bills
      ESX.TriggerServerCallback('nth:itemCheck', function(itemCheck)
        ItemHave = itemCheck
        ESX.PlayerData = ESX.GetPlayerData()
        RageUI.Visible(personalMenu, not RageUI.Visible(personalMenu))
      end)
    end)
  end
end)

AddEventHandler("playerSpawned", function(spawn)
	local ped = PlayerPedId()
	SetCanAttackFriendly(ped, true, true)
	NetworkSetFriendlyFireOption(true)
end)