function JobList(list)
    local JobList = list
    for i=1, #JobList, 1 do
        if ESX.PlayerData.job.name == JobList[i] then
            return true
        end
    end
end
function GradeList(list)
    local GradeList = list
    for i=1, #GradeList, 1 do
        if ESX.PlayerData.job.grade == GradeList[i] then
            return true
        end
    end
end 
  

function CheckSpawnData(data)
    local found = false
    local essaiMax = #data * 2
    local essai = 0
    local pos = vector3(10.0, 10.10, 10.10)
    local heading = 100.0
    while not found do
        Wait(100)
        local r = math.random(1, #data)
        local _pos = data[r]
        if ESX.Game.IsSpawnPointClear(_pos.pos, 2.0) then
            pos = _pos.pos
            heading = _pos.heading
            found = true
        end
        essai = essai + 1
        if essai > essaiMax then
            break
        end
    end
    return found, pos, heading
end

function spawnVeh(model, zone, heading)
    RequestModel(GetHashKey(model))
    while not HasModelLoaded(GetHashKey(model)) do Wait(10) end
    local veh = CreateVehicle(GetHashKey(model), zone, heading, 1, 0)
    for i = 0,14 do
        SetVehicleExtra(veh, i, 0)
    end
    SetVehicleDirtLevel(veh, 0.1)
end

function LoadModel(model)
    while not HasModelLoaded(model) do
         RequestModel(model)
         Wait(100)
    end
end

function setUniform(uniform, playerPed, b)
	TriggerEvent('skinchanger:getSkin', function(skin)
		local uniformObject

		if skin.sex == 0 then
			uniformObject = uniform.male
		else
			uniformObject = uniform.female
		end

		if uniformObject then
			TriggerEvent('skinchanger:loadClothes', skin, uniformObject)

			if job == 'bullet_wear' then
				SetPedArmour(playerPed, 100)
			end
		else
			ESX.ShowNotification(_U('no_outfit'))
		end
	end)
end

function GarageBouton(b, v)
    if b.price.Activate == true then
        RageUI.Button(b.vehiculeLabel, nil, {RightLabel = "~g~"..b.price.price.."$"}, b.disponible, {
            onSelected = function()
                local found, zone, heading = CheckSpawnData(v.SpawnPoints)
                if found then
                    TriggerServerEvent("nth_store:CarBuy", b.price.price, b.vehiculeLabel, b.vehiculeName, zone, heading)
                end
            end
        });
    else
        RageUI.Button(b.vehiculeLabel, nil, {RightLabel = "🔑"}, b.disponible, {
            onSelected = function()
                local found, zone, heading = CheckSpawnData(v.SpawnPoints)
                if found then
                    spawnVeh(b.vehiculeName, zone, heading)
                end
            end
        });
    end
end

function OpenMenu(v)
    attente = 7
    ESX.ShowHelpNotification(string.format(v.Settings.MessageZone))
    if IsControlJustReleased(0, 38) then
        if v.MenuType == "garage" then
            Menugarage = v.MenuId
            CreategarageMenu()
        elseif v.MenuType == "vestiaire" then
            MenuVestiaire = v.MenuId
            CreateVestiaireMenu()
        elseif v.MenuType == "armurerie" then
            MenuArmurerie = v.MenuId
            CreateArmurerieMenu()
        elseif v.MenuType == "coffre" then
            MenuCoffre = v.MenuId
            TriggerServerEvent("nth_jobs:DataUpdate", v.Settings.DataName)
            CreateCoffreMenu()
        end
    end
end

function TenueBouton(b)
    RageUI.Button(b.tenuLabel, nil, {RightLabel = b.RightLabel}, true, {
        onSelected = function()
            local playerPed = PlayerPedId()
            setUniform(b.Tenue, playerPed, b)
            if b.Kevlar.Activate == true then 
                SetPedArmour(playerPed, b.Kevlar.KevlarSize)
            end
        end
    });
end

function ArmurerieBouton(b, v)
    RageUI.Button(b.Label, nil, {RightLabel = "~g~" .. b.Price.Prix .. "$🛒"}, true, {
        onSelected = function()
            TriggerServerEvent("nth_store:ArmurerieBuy", b.Price.MoneyType, b.Price.Prix, b.Name, b.Label, b.Count, b.Type, v)
        end
    })
end

function KeyboardInput(TextEntry, ExampleText, MaxStringLength)

	AddTextEntry('FMMC_KEY_TIP1', TextEntry .. ':')
	DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
	blockinput = true

	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
		Citizen.Wait(0)
	end

	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult()
		Citizen.Wait(500)
		blockinput = false
		return result
	else
		Citizen.Wait(500)
		blockinput = false
		return nil
	end
end

function CheckQuantity(number)
    number = tonumber(number)
  
    if type(number) == 'number' then
      number = ESX.Math.Round(number)
  
      if number > 0 then
        return true, number
      end
    end
  
    return false, number
end

function DeposerItemBouton()
    ESX.PlayerData = ESX.GetPlayerData()
    for i = 1, #ESX.PlayerData.inventory do
        local name = ESX.PlayerData.inventory[i].name
        local label = ESX.PlayerData.inventory[i].label
        local count = ESX.PlayerData.inventory[i].count
        if count > 0 then
            RageUI.Button('~s~' ..label, nil, {RightLabel = '~g~' ..count.."~s~ "..Emoticon.Droite},true, {
                onSelected = function()
                    local sonner,quantity = CheckQuantity(KeyboardInput("Nombres d'objet a déposer ?(max:" ..count..")", "", 100))
                    if sonner then
                        TriggerServerEvent('nth_jobs:putStockItems', name, quantity, label)
                    else
                        ESX.ShowNotification("~r~Vous devez spécifier un nombre !")
                    end
                end
            });
        end
    end
end

function DeposerWeaponBouton()
    local playerPed = PlayerPedId()
    local weaponList = ESX.GetWeaponList()
    for i = 1, #weaponList, 1 do
        local weaponHash = GetHashKey(weaponList[i].name)

        if HasPedGotWeapon(playerPed, weaponHash, false) and weaponList[i].name ~= 'WEAPON_UNARMED' then
            local ammo = GetAmmoInPedWeapon(playerPed, weaponHash)
            local name = weaponList[i].name
            RageUI.Button(ESX.GetWeaponLabel(weaponList[i].name), nil, {RightLabel = "~r~"..ammo.."~s~ "..Emoticon.Droite}, true, {
                onSelected = function()
                    ESX.TriggerServerCallback('nth_jobs:addArmoryWeapon', function()
                    end, name, ammo)
                end
            })
        end
    end
end
function PrendreWeaponBouton(weaponList)
    for i = 1, #weaponList, 1 do
        local name = ESX.GetWeaponLabel(weaponList[i].name)
        local ammo = weaponList[i].ammo
        RageUI.Button(name, nil, {RightLabel = "~r~"..ammo.."~s~ "..Emoticon.Droite}, true, {
            onSelected = function()
                ESX.TriggerServerCallback('nth_jobs:removeArmoryWeapon', function()
                end, weaponList[i].name, ammo)
            end
        })
    end 
end

function PrendreItemBouton(itemList)
    for i = 1, #itemList, 1 do
        RageUI.Button(itemList[i].label, nil, {RightLabel = "~g~"..itemList[i].count.."~s~ "..Emoticon.Droite}, true, {
            onSelected = function()
                local sonner,quantity = CheckQuantity(KeyboardInput("Nombres d'objet a prendre ?(max:" .. itemList[i].count ..")", "", 100))
                if sonner then
                    TriggerServerEvent('nth_jobs:getStockItem', itemList[i].name, quantity, itemList[i].count, itemList[i].label)
                else
                    ESX.ShowNotification("~r~Vous devez spécifier un nombre !")
                end
            end
        })
    end
end