ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)
local pedId = PlayerPedId()
local AM = {
    personnalOption = {
        godmode = false,
        ghostmode = false,
        speedrun = false,
        speedswim = false,
        noclip = false
    },
}

local adminMenu = RageUI.CreateMenu("", "Menu admin")
local personnalAdminMenu = RageUI.CreateSubMenu(adminMenu, "", "Option personnel")

Citizen.CreateThread(function()
    while true do
        local attente = 500
        if RageUI.Visible(adminMenu) then
            attente = 5
            RageUI.IsVisible(adminMenu, function()
                RageUI.Button('Option personnel', nil, {RightLabel = "→"}, true, {onSelected = function() end}, personnalAdminMenu);

            end)
        end

        if RageUI.Visible(personnalAdminMenu) then
            attente = 5
            RageUI.IsVisible(personnalAdminMenu, function()
                RageUI.Checkbox('Ghostmode', nil, AM.personnalOption.ghostmode, {}, {
                    onChecked = function()
                        SetEntityVisible(pedId, false, false)
                    end,
                    onUnChecked = function()
                        SetEntityVisible(pedId, true, true)
                    end,
                    onSelected = function(Index)
                        AM.personnalOption.ghostmode = Index
                    end
                });
                RageUI.Checkbox('Godmode', nil, AM.personnalOption.godmode, {}, {
                    onChecked = function()
                        SetEntityInvincible(playerped1, true)
			            SetPlayerInvincible(PlayerId(), true)
			            SetPedCanRagdoll(playerped1, false)
			            ClearPedBloodDamage(playerped1)
			            ResetPedVisibleDamage(playerped1)
			            ClearPedLastWeaponDamage(playerped1)
			            SetEntityProofs(playerped1, true, true, true, true, true, true, true, true)
			            SetEntityOnlyDamagedByPlayer(playerped1, false)
			            SetEntityCanBeDamaged(playerped1, false)
                    end,
                    onUnChecked = function()
                        SetEntityInvincible(playerped1, false)
			            SetPlayerInvincible(PlayerId(), false)
			            SetPedCanRagdoll(playerped1, true)
			            ClearPedLastWeaponDamage(playerped1)
			            SetEntityProofs(playerped1, false, false, false, false, false, false, false, false)
			            SetEntityOnlyDamagedByPlayer(playerped1, true)
			            SetEntityCanBeDamaged(playerped1, true)
                    end,
                    onSelected = function(Index)
                        AM.personnalOption.godmode = Index
                    end
                });
            end)
        end
        Citizen.Wait(attente)
    end
end)

--Keys.Register('F10', 'F10', 'Menu admin', function()
--    RageUI.Visible(adminMenu, not RageUI.Visible(adminMenu))
--end)