ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)
local pedId = PlayerPedId()
local ShowName = false
local gamerTags = {}
local AM = {
    personnalOption = {
        godmode = false,
        ghostmode = false,
        speedrun = false,
        speedswim = false,
        noclip = false,
        playername = false
    },
}

--==--==--==--
-- Noclip
--==--==--==--
function DrawPlayerInfo(target)
	drawTarget = target
	drawInfo = true
end
function StopDrawPlayerInfo()
	drawInfo = false
	drawTarget = 0
end
--Citizen.CreateThread( function()
--	while true do
--		Citizen.Wait(0)
--		if drawInfo then
--			local text = {}
--			local targetPed = GetPlayerPed(drawTarget)
--			table.insert(text,"E pour stop spectate")
--			for i,theText in pairs(text) do
--				SetTextFont(0)
--				SetTextProportional(1)
--				SetTextScale(0.0, 0.30)
--				SetTextDropshadow(0, 0, 0, 0, 255)
--				SetTextEdge(1, 0, 0, 0, 255)
--				SetTextDropShadow()
--				SetTextOutline()
--				SetTextEntry("STRING")
--				AddTextComponentString(theText)
--				EndTextCommandDisplayText(0.3, 0.7+(i/30))
--			end
--			if IsControlJustPressed(0,103) then
--				local targetPed = PlayerPedId()
--				local targetx,targety,targetz = table.unpack(GetEntityCoords(targetPed, false))
--				RequestCollisionAtCoord(targetx,targety,targetz)
--				NetworkSetInSpectatorMode(false, targetPed)
--				StopDrawPlayerInfo()
--			end
--		end
--	end
--end)
function SpectatePlayer(targetPed,target,name)
    local playerPed = PlayerPedId() -- yourself
	enable = true
	if targetPed == playerPed then enable = false end
    if(enable)then
        local targetx,targety,targetz = table.unpack(GetEntityCoords(targetPed, false))
        RequestCollisionAtCoord(targetx,targety,targetz)
        NetworkSetInSpectatorMode(true, targetPed)
		DrawPlayerInfo(target)
        ESX.ShowNotification('~g~Mode spectateur en cours')
    else
        local targetx,targety,targetz = table.unpack(GetEntityCoords(targetPed, false))
        RequestCollisionAtCoord(targetx,targety,targetz)
        NetworkSetInSpectatorMode(false, targetPed)
		StopDrawPlayerInfo()
        ESX.ShowNotification('~b~Mode spectateur arrêtée')
    end
end
function ButtonMessage(text)
    BeginTextCommandScaleformString("STRING")
    AddTextComponentScaleform(text)
    EndTextCommandScaleformString()
end
function Button(ControlButton)
    N_0xe83a3e3557a56640(ControlButton)
end
function setupScaleform(scaleform)
    local scaleform = RequestScaleformMovie(scaleform)
    while not HasScaleformMovieLoaded(scaleform) do
        Citizen.Wait(1)
    end
    PushScaleformMovieFunction(scaleform, "CLEAR_ALL")
    PopScaleformMovieFunctionVoid()
    PushScaleformMovieFunction(scaleform, "SET_CLEAR_SPACE")
    PushScaleformMovieFunctionParameterInt(200)
    PopScaleformMovieFunctionVoid()
    PushScaleformMovieFunction(scaleform, "SET_DATA_SLOT")
    PushScaleformMovieFunctionParameterInt(5)
    Button(GetControlInstructionalButton(2, config.controls.openKey, true))
    ButtonMessage("Disable Noclip")
    PopScaleformMovieFunctionVoid()
    PushScaleformMovieFunction(scaleform, "SET_DATA_SLOT")
    PushScaleformMovieFunctionParameterInt(4)
    Button(GetControlInstructionalButton(2, config.controls.goUp, true))
    ButtonMessage("Go Up")
    PopScaleformMovieFunctionVoid()
    PushScaleformMovieFunction(scaleform, "SET_DATA_SLOT")
    PushScaleformMovieFunctionParameterInt(3)
    Button(GetControlInstructionalButton(2, config.controls.goDown, true))
    ButtonMessage("Go Down")
    PopScaleformMovieFunctionVoid()
    PushScaleformMovieFunction(scaleform, "SET_DATA_SLOT")
    PushScaleformMovieFunctionParameterInt(2)
    Button(GetControlInstructionalButton(1, config.controls.turnRight, true))
    Button(GetControlInstructionalButton(1, config.controls.turnLeft, true))
    ButtonMessage("Turn Left/Right")
    PopScaleformMovieFunctionVoid()
    PushScaleformMovieFunction(scaleform, "SET_DATA_SLOT")
    PushScaleformMovieFunctionParameterInt(1)
    Button(GetControlInstructionalButton(1, config.controls.goBackward, true))
    Button(GetControlInstructionalButton(1, config.controls.goForward, true))
    ButtonMessage("Go Forwards/Backwards")
    PopScaleformMovieFunctionVoid()
    PushScaleformMovieFunction(scaleform, "SET_DATA_SLOT")
    PushScaleformMovieFunctionParameterInt(0)
    Button(GetControlInstructionalButton(2, config.controls.changeSpeed, true))
    ButtonMessage("Change Speed ("..config.speeds[index].label..")")
    PopScaleformMovieFunctionVoid()
    PushScaleformMovieFunction(scaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
    PopScaleformMovieFunctionVoid()
    PushScaleformMovieFunction(scaleform, "SET_BACKGROUND_COLOUR")
    PushScaleformMovieFunctionParameterInt(config.bgR)
    PushScaleformMovieFunctionParameterInt(config.bgG)
    PushScaleformMovieFunctionParameterInt(config.bgB)
    PushScaleformMovieFunctionParameterInt(config.bgA)
    PopScaleformMovieFunctionVoid()
    return scaleform
end
config = {
    controls = { openKey = 288, goUp = 85, goDown = 48, turnLeft = 34, turnRight = 35, goForward = 32, goBackward = 33, changeSpeed = 21 },
    speeds = {{ label = "Very Slow", speed = 0},{ label = "Slow", speed = 0.5},{ label = "Normal", speed = 2},{ label = "Fast", speed = 4},{ label = "Very Fast", speed = 6},{ label = "Extremely Fast", speed = 10},{ label = "Extremely Fast v2.0", speed = 20},{ label = "Max Speed", speed = 25}},
    offsets = {y = 0.5,z = 0.2,h = 3,},
    bgR = 0, -- [[Red]]
    bgG = 0, -- [[Green]]
    bgB = 0, -- [[Blue]]
    bgA = 80, -- [[Alpha]]
}
noclipActive = false -- [[Wouldn't touch this.]]
index = 1 -- [[Used to determine the index of the speeds table.]]
Citizen.CreateThread(function()
    
    buttons = setupScaleform("instructional_buttons")
    currentSpeed = config.speeds[index].speed
    while true do
        local attente = 500
        if AM.personnalOption.noclip == true then
            attente = 5
            if noclipActive then
                DrawScaleformMovieFullscreen(buttons)
                local yoff = 0.0
                local zoff = 0.0
                if IsControlJustPressed(1, config.controls.changeSpeed) then
                    if index ~= 8 then
                        index = index+1
                        currentSpeed = config.speeds[index].speed
                    else
                        currentSpeed = config.speeds[1].speed
                        index = 1
                    end
                    setupScaleform("instructional_buttons")
                end
		    	if IsControlPressed(0, config.controls.goForward) then yoff = config.offsets.y end
                if IsControlPressed(0, config.controls.goBackward) then yoff = -config.offsets.y end
                if IsControlPressed(0, config.controls.turnLeft) then SetEntityHeading(noclipEntity, GetEntityHeading(noclipEntity)+config.offsets.h) end
                if IsControlPressed(0, config.controls.turnRight) then SetEntityHeading(noclipEntity, GetEntityHeading(noclipEntity)-config.offsets.h) end
                if IsControlPressed(0, config.controls.goUp) then zoff = config.offsets.z end
                if IsControlPressed(0, config.controls.goDown) then zoff = -config.offsets.z end
                local newPos = GetOffsetFromEntityInWorldCoords(noclipEntity, 0.0, yoff * (currentSpeed + 0.3), zoff * (currentSpeed + 0.3))
                local heading = GetEntityHeading(noclipEntity)
                SetEntityVelocity(noclipEntity, 0.0, 0.0, 0.0)
                SetEntityRotation(noclipEntity, 0.0, 0.0, 0.0, 0, false)
                SetEntityHeading(noclipEntity, heading)
                SetEntityCoordsNoOffset(noclipEntity, newPos.x, newPos.y, newPos.z, noclipActive, noclipActive, noclipActive)
            end
        end
        Citizen.Wait(attente)
    end
end)

function noclipActivate()
    noclipActive = not noclipActive
    if IsPedInAnyVehicle(PlayerPedId(), false) then
        noclipEntity = GetVehiclePedIsIn(PlayerPedId(), false)
    else
        noclipEntity = PlayerPedId()
    end
end
--==--==--==--
-- Noclip fin
--==--==--==--

Citizen.CreateThread(function()
    while true do
        local attente = 500
        
        if ShowName then
            attente = 5
            local pCoords = GetEntityCoords(GetPlayerPed(-1), false)
            for _, v in pairs(GetActivePlayers()) do
                local otherPed = GetPlayerPed(v)
            
                if otherPed ~= pPed then
                    if #(pCoords - GetEntityCoords(otherPed, false)) < 250.0 then
                        gamerTags[v] = CreateFakeMpGamerTag(otherPed, ('[%s] %s'):format(GetPlayerServerId(v), GetPlayerName(v)), false, false, '', 0)
                        SetMpGamerTagVisibility(gamerTags[v], 4, 1)
                    else
                        RemoveMpGamerTag(gamerTags[v])
                        gamerTags[v] = nil
                    end
                end
            end
        else
            for _, v in pairs(GetActivePlayers()) do
                RemoveMpGamerTag(gamerTags[v])
            end
        end
        Citizen.Wait(attente)
    end
end)


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
                RageUI.Checkbox('Noclip', nil, AM.personnalOption.noclip, {}, {
                    onChecked = function()
                        noclipActivate()
                        SetEntityVisible(noclipEntity, false, false)
                        AM.personnalOption.ghostmode = true
                    end,
                    onUnChecked = function()
                        noclipActivate()
                        SetEntityVisible(noclipEntity, true, true)
                        AM.personnalOption.ghostmode = false
                    end,
                    onSelected = function(Index)
                        AM.personnalOption.noclip = Index
                    end
                });
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
                RageUI.Checkbox('Player Name', nil, AM.personnalOption.playername, {}, {
                    onChecked = function()
                        ShowName = true
                    end,
                    onUnChecked = function()
                        ShowName = false
                    end,
                    onSelected = function(Index)
                        AM.personnalOption.playername = Index
                    end
                });
                RageUI.Button("Téléporter sur le marqueur", nil, {RightLabel = "📍"}, true, {
                    onSelected = function()
                        local playerPed = GetPlayerPed(-1)
                        local WaypointHandle = GetFirstBlipInfoId(8)
                        if DoesBlipExist(WaypointHandle) then
                            local coord = Citizen.InvokeNative(0xFA7C7F0AADF25D09, WaypointHandle, Citizen.ResultAsVector())
                            SetEntityCoordsNoOffset(playerPed, coord.x, coord.y, -199.5, false, false, false, true)
                        else
                            ESX.ShowNotification("~r~Aucun Marqueur !")
                        end
                    end
                  });
            end)
        end
        Citizen.Wait(attente)
    end
end)

Keys.Register('F10', 'F10', 'Menu admin', function()
    RageUI.Visible(adminMenu, not RageUI.Visible(adminMenu))
end)