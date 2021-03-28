RegisterNetEvent('nth:ammoClipCal12')
AddEventHandler('nth:ammoClipCal12', function()
    local xPlayer = PlayerPedId()
    local Weapon = GetSelectedPedWeapon(xPlayer)
    for k, pistol in ipairs(Config.weapons.clip_cal_12) do

        if Weapon == GetHashKey(pistol) then     
            TriggerEvent("mythic_progbar:client:progress", {
                name = "call12",
                duration = 2500,
                label = "Utillisation d'une boite de 9mm",
                useWhileDead = false,
                canCancel = true,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                },
                }, function(status)
                if not status then
                    AddAmmoToPed(xPlayer, Weapon, Config.number_cal_12)
                    TriggerServerEvent('nth:ammoClipCal12')
                else
                    ESX.ShowNotification("Vous avez annuler l'action en cour d'execution !")
                end
                ClearPedTasksImmediately(ped)
            end)
        end
    end
    if Weapon == GetHashKey('weapon_unarmed') then
        ESX.ShowNotification("Vous devez avoir une arme utillisant du cal .12 dans vos mains.")
    end
end)

RegisterNetEvent('nth:ammoClip9mm')
AddEventHandler('nth:ammoClip9mm', function()
    local xPlayer = PlayerPedId()
    local Weapon = GetSelectedPedWeapon(xPlayer)
    for k, pistol in ipairs(Config.weapons.clip_9mm) do

        if Weapon == GetHashKey(pistol) then    
            TriggerEvent("mythic_progbar:client:progress", {
                name = "9mm",
                duration = 2500,
                label = "Utillisation d'une boite de 9mm",
                useWhileDead = false,
                canCancel = true,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                },
                }, function(status)
                if not status then
                    AddAmmoToPed(xPlayer, Weapon, Config.number_9mm)
                    TriggerServerEvent('nth:ammoClip9mm')
                else
                    ESX.ShowNotification("Vous avez annuler l'action en cour d'execution !")
                end
                ClearPedTasksImmediately(ped)
            end)
        end
    end
    if Weapon == GetHashKey('weapon_unarmed') then
        ESX.ShowNotification("Vous devez avoir une arme utillisant du 9mm dans vos mains.")
    end
end)

RegisterNetEvent('nth:ammoClip5.56mm')
AddEventHandler('nth:ammoClip5.56mm', function()
    local xPlayer = PlayerPedId()
    local Weapon = GetSelectedPedWeapon(xPlayer)

    for k, pistol in ipairs(Config.weapons.clip_5_56mm) do

        if Weapon == GetHashKey(pistol) then
            TriggerEvent("mythic_progbar:client:progress", {
                name = "5.56mm",
                duration = 2500,
                label = "Utillisation d'une boite de 5.56mm",
                useWhileDead = false,
                canCancel = true,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                },
                }, function(status)
                if not status then
                    AddAmmoToPed(xPlayer, Weapon, Config.number_5_56mm)
                    TriggerServerEvent('nth:ammoClip5.56mm')
                else
                    ESX.ShowNotification("Vous avez annuler l'action en cour d'execution !")
                end
                ClearPedTasksImmediately(ped)
            end)
        end
    end

    if Weapon == GetHashKey('weapon_unarmed') then
        ESX.ShowNotification("Vous devez avoir une arme utillisant du 5.56mm dans vos mains.")
    end
end)

RegisterNetEvent('nth:ammoClip7.62mm')
AddEventHandler('nth:ammoClip7.62mm', function()
    local xPlayer = PlayerPedId()
    local Weapon = GetSelectedPedWeapon(xPlayer)

    for k, pistol in ipairs(Config.weapons.clip_7_62mm) do

        if Weapon == GetHashKey(pistol) then
            TriggerEvent("mythic_progbar:client:progress", {
                name = "7.62mm",
                duration = 2500,
                label = "Utillisation d'une boite de 7.62mm",
                useWhileDead = false,
                canCancel = true,
                controlDisables = {
                    disableMovement = true,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = true,
                },
                }, function(status)
                if not status then
                    AddAmmoToPed(xPlayer, Weapon, Config.number_7_62mm)
                    TriggerServerEvent('nth:ammoClip7.62mm')
                else
                    ESX.ShowNotification("Vous avez annuler l'action en cour d'execution !")
                end
                ClearPedTasksImmediately(ped)
            end)
        end
    end

    if Weapon == GetHashKey('weapon_unarmed') then
        ESX.ShowNotification("Vous devez avoir une arme utillisant du 7.62mm dans vos mains.")
    end
end)