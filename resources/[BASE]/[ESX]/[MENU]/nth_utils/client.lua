local Keys = {
	['ESC'] = 322, ['F1'] = 288, ['F2'] = 289, ['F3'] = 170, ['F5'] = 166, ['F6'] = 167, ['F7'] = 168, ['F8'] = 169, ['F9'] = 56, ['F10'] = 57, 
	['~'] = 243, ['1'] = 157, ['2'] = 158, ['3'] = 160, ['4'] = 164, ['5'] = 165, ['6'] = 159, ['7'] = 161, ['8'] = 162, ['9'] = 163, ['-'] = 84, ['='] = 83, ['BACKSPACE'] = 177, 
	['TAB'] = 37, ['Q'] = 44, ['W'] = 32, ['E'] = 38, ['R'] = 45, ['T'] = 245, ['Y'] = 246, ['U'] = 303, ['P'] = 199, ['['] = 39, [']'] = 40, ['ENTER'] = 18,
	['CAPS'] = 137, ['A'] = 34, ['S'] = 8, ['D'] = 9, ['F'] = 23, ['G'] = 47, ['H'] = 74, ['K'] = 311, ['L'] = 182,
	['LEFTSHIFT'] = 21, ['Z'] = 20, ['X'] = 73, ['C'] = 26, ['V'] = 0, ['B'] = 29, ['N'] = 249, ['M'] = 244, [','] = 82, ['.'] = 81,
	['LEFTCTRL'] = 36, ['LEFTALT'] = 19, ['SPACE'] = 22, ['RIGHTCTRL'] = 70, 
	['HOME'] = 213, ['PAGEUP'] = 10, ['PAGEDOWN'] = 11, ['DELETE'] = 178,
	['LEFT'] = 174, ['RIGHT'] = 175, ['TOP'] = 27, ['DOWN'] = 173,
	['NENTER'] = 201, ['N4'] = 108, ['N5'] = 60, ['N6'] = 107, ['N+'] = 96, ['N-'] = 97, ['N7'] = 117, ['N8'] = 61, ['N9'] = 118
}

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
end)

Player = {
    crouched = false,
    handsUp = false,
}

Controls = {
	Crouch = {keyboard = Keys['LEFTCTRL']}
}

RegisterKeyMapping('binoculars', 'Utilliser le télémétre', 'keyboard', "")
RegisterKeyMapping('siren', 'Activer/Désactiver les sirens', 'keyboard', "")
RegisterKeyMapping('vehicule_place_1', 'Aller en conducteur', 'keyboard', "1")
RegisterKeyMapping('vehicule_place_2', 'Aller en passager', 'keyboard', "2")
RegisterKeyMapping('vehicule_place_3', 'Aller en passager arriére gauche', 'keyboard', "3")
RegisterKeyMapping('vehicule_place_4', 'Aller en passager arriére droite', 'keyboard', "4")
RegisterKeyMapping('lever_main', 'Mettre les main en l\'air', 'keyboard', "OEM_3")


Citizen.CreateThread(function()
	while true do 
		SetDiscordAppId(817415420431958076)
		SetDiscordRichPresenceAsset('jungle_life')
		SetDiscordRichPresenceAssetText('Jungle Life | FiveM | WL')
		local playerCount = 0
		for _, player in ipairs(GetActivePlayers()) do
			if GetPlayerPed(player) then
                playerCount = playerCount+1
            end
		end
		SetRichPresence(GetPlayerName(PlayerId()) .. " - ".. playerCount .. "/64")
        SetDiscordRichPresenceAction(0, 'Discord', 'https://discord.gg/ywu488e5Hk')
        SetDiscordRichPresenceAction(1, 'Top Serveur', 'https://top-serveurs.net/gta/jungle-life-rp-wl')
		Citizen.Wait(60000)
	end
end)

RegisterCommand('lever_main', function()
	local plyPed = PlayerPedId()
	if (DoesEntityExist(plyPed)) and not (IsEntityDead(plyPed)) and (IsPedOnFoot(plyPed)) then
		Player.handsUp = not Player.handsUp
		if Player.handsUp then
			ESX.Streaming.RequestAnimDict('random@mugging3', function()
				TaskPlayAnim(plyPed, 'random@mugging3', 'handsup_standing_base', 8.0, -8, -1, 49, 0, 0, 0, 0)
				RemoveAnimDict('random@mugging3')
			end)
		else
			ClearPedSecondaryTask(plyPed)
		end
	end
end)

positions = { --tp
    --{{-1337.45, -1161.55, 3.51, 265.02}, {20.09, 114.39, 82.27, 248.5}, {36,237,157}, "Appuyer sur ~INPUT_CONTEXT~ pour ~g~Entrer~s~/~r~Sortir~s~ de chez ~b~D.K~s~"}, -- 410th appartement chef
	--{{-12.93, 89.05, 39.54, 1.02}, {92.72, 49.26, 72.52, 62.96}, {255, 157, 0}, "Appuyer sur ~INPUT_CONTEXT~ pour ~g~Entrer~s~/~r~Sortir~s~ de chez les ~b~Yute~s~"},
	--{{-1382.26, -609.86, 29.82, 206.75}, {-1385.02, -606.47, 29.32, 116.22}, {255, 157, 0}, "Appuyer sur ~INPUT_CONTEXT~ pour ~g~Entrer~s~/~r~Sortir~s~ du comptoir avant."},
	--{{-1386.25, -627.48, 29.82, 295.72}, {-1371.33, -625.97, 29.82, 121.9}, {255, 157, 0}, "Appuyer sur ~INPUT_CONTEXT~ pour ~g~Entrer~s~/~r~Sortir~s~ du comptoir arriére."}
}

--local enableWeatherControl = false
--Citizen.CreateThread(function()
--    
--    local showHelp = true
--    local loaded = false
--    
--    while true do
--        if enableWeatherControl then
--            SetWeatherTypePersist("XMAS")
--            SetWeatherTypeNowPersist("XMAS")
--            SetWeatherTypeNow("XMAS")
--            SetOverrideWeather("XMAS")
--            SetForcePedFootstepsTracks(true)
--            SetForceVehicleTrails(true)
--        end
--        Citizen.Wait(0)
--        if IsNextWeatherType('XMAS') then
--            N_0xc54a08c85ae4d410(3.0)
--            
--            SetForceVehicleTrails(true)
--            SetForcePedFootstepsTracks(true)
--            
--            if not loaded then
--                RequestScriptAudioBank("ICE_FOOTSTEPS", false)
--                RequestScriptAudioBank("SNOW_FOOTSTEPS", false)
--                RequestNamedPtfxAsset("core_snow")
--                while not HasNamedPtfxAssetLoaded("core_snow") do
--                    Citizen.Wait(0)
--                end
--                UseParticleFxAssetNextCall("core_snow")
--                loaded = true
--            end
--            RequestAnimDict('anim@mp_snowball')
--            if IsControlJustReleased(0, 119) and not IsPedInAnyVehicle(GetPlayerPed(-1), true) and not IsPlayerFreeAiming(PlayerId()) and not IsPedSwimming(PlayerPedId()) and not IsPedSwimmingUnderWater(PlayerPedId()) and not IsPedRagdoll(PlayerPedId()) and not IsPedFalling(PlayerPedId()) and not IsPedRunning(PlayerPedId()) and not IsPedSprinting(PlayerPedId()) and GetInteriorFromEntity(PlayerPedId()) == 0 and not IsPedShooting(PlayerPedId()) and not IsPedUsingAnyScenario(PlayerPedId()) and not IsPedInCover(PlayerPedId(), 0) then -- check if the snowball should be picked up
--                TaskPlayAnim(PlayerPedId(), 'anim@mp_snowball', 'pickup_snowball', 8.0, -1, -1, 0, 1, 0, 0, 0)
--                Citizen.Wait(1950) 
--                GiveWeaponToPed(GetPlayerPed(-1), GetHashKey('WEAPON_SNOWBALL'), 2, false, true)
--            end
--            if not IsPedInAnyVehicle(GetPlayerPed(-1), true) then
--                if showHelp then
--                    showHelpNotification()
--                end
--                showHelp = false
--            else
--                showHelp = true
--            end
--        else
--            if loaded then N_0xc54a08c85ae4d410(0.0) end
--            loaded = false
--            RemoveNamedPtfxAsset("core_snow")
--            ReleaseNamedScriptAudioBank("ICE_FOOTSTEPS")
--            ReleaseNamedScriptAudioBank("SNOW_FOOTSTEPS")
--            SetForceVehicleTrails(false)
--            SetForcePedFootstepsTracks(false)
--        end
--        if GetSelectedPedWeapon(PlayerPedId()) == GetHashKey('WEAPON_SNOWBALL') then
--            SetPlayerWeaponDamageModifier(PlayerId(), 0.0)
--        end
--    end
--end)
--
--function showHelpNotification()
--    BeginTextCommandDisplayHelp("STRING")
--    AddTextComponentSubstringPlayerName("Appuyer sur ~INPUT_CONTEXT~ pour ramasser 2 boules de neige!")
--    EndTextCommandDisplayHelp(0, 0, 1, -1)
--end
--
--AddEventHandler('playerSpawned', function()
--    showHelpNotification()
--end)

-- MONTER A L'ARRIERE DU VEHICULE

local doors = {
	{"seat_dside_f", -1},
	{"seat_pside_f", 0},
	{"seat_dside_r", 1},
	{"seat_pside_r", 2}
}

local function VehicleInFront(ped)
    local pos = GetEntityCoords(ped)
    local entityWorld = GetOffsetFromEntityInWorldCoords(ped, 0.0, 5.0, 0.0)
    local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, ped, 0)
    local _, _, _, _, result = GetRaycastResult(rayHandle)
	
    return result
end

Citizen.CreateThread(function()
	while true do
    	Citizen.Wait(6)
			
		local ped = PlayerPedId()
			
   		if IsControlJustReleased(0, 23) and running ~= true and GetVehiclePedIsIn(ped, false) == 0 then
      		local vehicle = VehicleInFront(ped)
				
      		running = true
				
      		if vehicle ~= nil then
				local plyCoords = GetEntityCoords(ped, false)
        		local doorDistances = {}
					
        		for k, door in pairs(doors) do
          			local doorBone = GetEntityBoneIndexByName(vehicle, door[1])
          			local doorPos = GetWorldPositionOfEntityBone(vehicle, doorBone)
          			local distance = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, doorPos.x, doorPos.y, doorPos.z)
						
          			table.insert(doorDistances, distance)
        		end
					
        		local key, min = 1, doorDistances[1]
					
        		for k, v in ipairs(doorDistances) do
          			if doorDistances[k] < min then
           				key, min = k, v
          			end
        		end
					
        		TaskEnterVehicle(ped, vehicle, -1, doors[key][2], 1.5, 1, 0)
     		end
				
      		running = false
    	end
  	end
end)

RegisterCommand('vehicule_place_1', function()
	local plyPed = PlayerPedId()
	if IsPedSittingInAnyVehicle(plyPed) then
		local plyVehicle = GetVehiclePedIsIn(plyPed, false)
		CarSpeed = GetEntitySpeed(plyVehicle) * 3.6 -- On définit la vitesse du véhicule en km/h
		if CarSpeed <= 40.0 then -- On ne peux pas changer de place si la vitesse du véhicule est au dessus ou égale à 60 km/h
			SetPedIntoVehicle(plyPed, plyVehicle, -1)
		end
	end
end)

RegisterCommand('vehicule_place_2', function()
	local plyPed = PlayerPedId()
	if IsPedSittingInAnyVehicle(plyPed) then
		local plyVehicle = GetVehiclePedIsIn(plyPed, false)
		CarSpeed = GetEntitySpeed(plyVehicle) * 3.6 -- On définit la vitesse du véhicule en km/h
		if CarSpeed <= 40.0 then -- On ne peux pas changer de place si la vitesse du véhicule est au dessus ou égale à 60 km/h
				SetPedIntoVehicle(plyPed, plyVehicle, 0)
		end
	end
end)

RegisterCommand('vehicule_place_3', function()
	local plyPed = PlayerPedId()
	if IsPedSittingInAnyVehicle(plyPed) then
		local plyVehicle = GetVehiclePedIsIn(plyPed, false)
		CarSpeed = GetEntitySpeed(plyVehicle) * 3.6 -- On définit la vitesse du véhicule en km/h
		if CarSpeed <= 40.0 then -- On ne peux pas changer de place si la vitesse du véhicule est au dessus ou égale à 60 km/h
			SetPedIntoVehicle(plyPed, plyVehicle, 1)
		end
	end
end)

RegisterCommand('vehicule_place_4', function()
	local plyPed = PlayerPedId()
	if IsPedSittingInAnyVehicle(plyPed) then
		local plyVehicle = GetVehiclePedIsIn(plyPed, false)
		CarSpeed = GetEntitySpeed(plyVehicle) * 3.6 -- On définit la vitesse du véhicule en km/h
		if CarSpeed <= 40.0 then -- On ne peux pas changer de place si la vitesse du véhicule est au dessus ou égale à 60 km/h
			SetPedIntoVehicle(plyPed, plyVehicle, 2)
		end
	end
end)

-- NO DROP PNJ 

local function SetWeaponDrops()
    local handle, ped = FindFirstPed()
    local finished = false

    repeat
        if not IsEntityDead(ped) then
            SetPedDropsWeaponsWhenDead(ped, false)
        end
        finished, ped = FindNextPed(handle)
    until not finished

    EndFindPed(handle)
end

Citizen.CreateThread(function()
    while true do
        SetWeaponDrops()
        Citizen.Wait(500)
    end
end)

AddEventHandler("playerSpawned", function()
    NetworkSetFriendlyFireOption(true)
    SetCanAttackFriendly(PlayerPedId(), true, true)
end)


-- Disable dispatch & Weapon POLICE
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(3000)
       
        if GetPlayerWantedLevel(PlayerId()) ~= 0 then
            SetPlayerWantedLevel(PlayerId(), 0, false)
            SetPlayerWantedLevelNow(PlayerId(), false)
        end
    end
end)

Citizen.CreateThread(function()
	for i = 1, 12 do
		Citizen.InvokeNative(0xDC0F817884CDD856, i, false)
	end
    while true do
        Citizen.Wait(500)
        local myCoords = GetEntityCoords(GetPlayerPed(-1))
		ClearAreaOfCops(myCoords.x, myCoords.y, myCoords.z, 100.0, 0)
		DisablePlayerVehicleRewards(PlayerId())
    end
end)

--------------- KNOCKOUT

local knockedOut = false
local wait = 15
local count = 60

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5)
		local myPed = GetPlayerPed(-1)
		if IsPedInMeleeCombat(myPed) then
			if GetEntityHealth(myPed) < 115 then
				SetPlayerInvincible(PlayerId(), true)
				SetPedToRagdoll(myPed, 1000, 1000, 0, 0, 0, 0)
				ESX.ShowNotification("~r~Vous êtes KO!")
				wait = 15
				knockedOut = true
				SetEntityHealth(myPed, 116)
			end
		end
		if knockedOut == true then
			SetPlayerInvincible(PlayerId(), true)
			DisablePlayerFiring(PlayerId(), true)
			SetPedToRagdoll(myPed, 1000, 1000, 0, 0, 0, 0)
			ResetPedRagdollTimer(myPed)
			
			if wait >= 0 then
				count = count - 1
				if count == 0 then
					count = 60
					wait = wait - 1
					SetEntityHealth(myPed, GetEntityHealth(myPed)+4)
				end
			else
				SetPlayerInvincible(PlayerId(), false)
				knockedOut = false
			end
		end
	end
end)

if Config.Drag then
	local Drag = {
		Distance = 3,
		Dragging = false,
		Dragger = -1,
		Dragged = false,
	}

	function Drag:GetPlayers()
		local Players = {}
	
		for Index = 0, 255 do
			if NetworkIsPlayerActive(Index) then
				table.insert(Players, Index)
			end
		end

	    return Players
	end

	function Drag:GetClosestPlayer()
	    local Players = self:GetPlayers()
	    local ClosestDistance = -1
	    local ClosestPlayer = -1
	    local PlayerPed = PlayerPedId()
	    local PlayerPosition = GetEntityCoords(PlayerPed, false)
	
	    for Index = 1, #Players do
	    	local TargetPed = GetPlayerPed(Players[Index])
	    	if PlayerPed ~= TargetPed then
	    		local TargetCoords = GetEntityCoords(TargetPed, false)
	    		local Distance = #(PlayerPosition - TargetCoords)

	    		if ClosestDistance == -1 or ClosestDistance > Distance then
	    			ClosestPlayer = Players[Index]
	    			ClosestDistance = Distance
	    		end
	    	end
	    end
	
	    return ClosestPlayer, ClosestDistance
	end

	RegisterNetEvent("RPCore:drag")
	AddEventHandler("RPCore:drag", function(Dragger)
		Drag.Dragging = not Drag.Dragging
		Drag.Dragger = Dragger
	end)

	RegisterCommand("drag", function(source, args, fullCommand)
		local Player, Distance = Drag:GetClosestPlayer()

		if Distance ~= -1 and Distance < Drag.Distance then
			TriggerServerEvent("RPCore:drag", GetPlayerServerId(Player))
		else
			TriggerEvent("chat:addMessage", {
				color = {255, 0, 0},
				multiline = true,
				args = {"Government", "Please get closer to the target!"},
			})
		end
	end, false)

	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(0)

			if NetworkIsSessionStarted() then
				TriggerEvent("chat:addSuggestion", "/drag", "Drag the closest player")
				return
			end
		end
	end)

	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(0)
			if Drag.Dragging then
				local PlayerPed = PlayerPedId()

				Drag.Dragged = true
				AttachEntityToEntity(PlayerPed, GetPlayerPed(GetPlayerFromServerId(Drag.Dragger)), 4103, 11816, 0.48, 0.00, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
			else
				if Drag.Dragged then
					local PlayerPed = PlayerPedId()

					if not IsPedInParachuteFreeFall(PlayerPed) then
						Drag.Dragged = false
						DetachEntity(PlayerPed, true, false)    
					end
				end
			end
		end
	end)
end


local mp_pointing = false
local keyPressed = false
    
local function startPointing()
    local ped = PlayerPedId()
    RequestAnimDict("anim@mp_point")
    while not HasAnimDictLoaded("anim@mp_point") do
        Wait(0)
    end
    SetPedCurrentWeaponVisible(ped, 0, 1, 1, 1)
    SetPedConfigFlag(ped, 36, 1)
    Citizen.InvokeNative(0x2D537BA194896636, ped, "task_mp_pointing", 0.5, 0, "anim@mp_point", 24)
    RemoveAnimDict("anim@mp_point")
end

local function stopPointing()
    local ped = PlayerPedId()
    Citizen.InvokeNative(0xD01015C7316AE176, ped, "Stop")
    if not IsPedInjured(ped) then
        ClearPedSecondaryTask(ped)
    end
    if not IsPedInAnyVehicle(ped, 1) then
        SetPedCurrentWeaponVisible(ped, 1, 1, 1, 1)
    end
    SetPedConfigFlag(ped, 36, 0)
    ClearPedSecondaryTask(PlayerPedId())
end

Citizen.CreateThread(function()
local once = true
local oldval = false
local oldvalped = false
    while true do
        Wait(6)

        if once then
            once = false
        end

        if not keyPressed then
            if IsControlPressed(0, 29) and not mp_pointing and IsPedOnFoot(PlayerPedId()) then
                Wait(200)
                if not IsControlPressed(0, 29) then
                    keyPressed = true
                    startPointing()
                    mp_pointing = true
                else
                    keyPressed = true
                    while IsControlPressed(0, 29) do
                        Wait(50)
                    end
                end
            elseif (IsControlPressed(0, 29) and mp_pointing) or (not IsPedOnFoot(PlayerPedId()) and mp_pointing) then
                keyPressed = true
                mp_pointing = false
                stopPointing()
            end
        end

        if keyPressed then
            if not IsControlPressed(0, 29) then
                keyPressed = false
            end
        end
        if Citizen.InvokeNative(0x921CE12C489C4C41, PlayerPedId()) and not mp_pointing then
            stopPointing()
        end
        if Citizen.InvokeNative(0x921CE12C489C4C41, PlayerPedId()) then
            if not IsPedOnFoot(PlayerPedId()) then
                stopPointing()
            else
                local ped = PlayerPedId()
                local camPitch = GetGameplayCamRelativePitch()
                if camPitch < -70.0 then
                    camPitch = -70.0
                elseif camPitch > 42.0 then
                    camPitch = 42.0
                end
                camPitch = (camPitch + 70.0) / 112.0
                local camHeading = GetGameplayCamRelativeHeading()
                local cosCamHeading = Cos(camHeading)
                local sinCamHeading = Sin(camHeading)
                if camHeading < -180.0 then
                    camHeading = -180.0
                elseif camHeading > 180.0 then
                    camHeading = 180.0
                end
                camHeading = (camHeading + 180.0) / 360.0
                local blocked = 0
                local nn = 0
                local coords = GetOffsetFromEntityInWorldCoords(ped, (cosCamHeading * -0.2) - (sinCamHeading * (0.4 * camHeading + 0.3)), (sinCamHeading * -0.2) + (cosCamHeading * (0.4 * camHeading + 0.3)), 0.6)
                local ray = Cast_3dRayPointToPoint(coords.x, coords.y, coords.z - 0.2, coords.x, coords.y, coords.z + 0.2, 0.4, 95, ped, 7);
                nn,blocked,coords,coords = GetRaycastResult(ray)
                Citizen.InvokeNative(0xD5BB4025AE449A4E, ped, "Pitch", camPitch)
                Citizen.InvokeNative(0xD5BB4025AE449A4E, ped, "Heading", camHeading * -1.0 + 1.0)
                Citizen.InvokeNative(0xB0A6CFD2C69C1088, ped, "isBlocked", blocked)
                Citizen.InvokeNative(0xB0A6CFD2C69C1088, ped, "isFirstPerson", Citizen.InvokeNative(0xEE778F8C7E1142E2, Citizen.InvokeNative(0x19CAFA3C87F7C2FF)) == 4)
            end
        end
    end
end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(7)
		DisableControlAction(1, 36, true)
		if IsDisabledControlJustReleased(1, 36) and IsInputDisabled(2) then
			local plyPed = PlayerPedId()

			if (DoesEntityExist(plyPed)) and (not IsEntityDead(plyPed)) and (IsPedOnFoot(plyPed)) then
				Player.crouched = not Player.crouched

				if Player.crouched then 
					ESX.Streaming.RequestAnimSet('move_ped_crouched', function()
						SetPedMovementClipset(plyPed, 'move_ped_crouched', 0.25)
						RemoveAnimSet('move_ped_crouched')
					end)
				else
					ResetPedMovementClipset(plyPed, 0)
				end
			end
		end
		if Player.crouched or Player.handsUp then
			if not IsPedOnFoot(PlayerPedId()) then
				ResetPedMovementClipset(plyPed, 0)
				stopPointing()
				Player.crouched, Player.handsUp, Player.pointing = false, false, false
			end
		end
	end
end)

--Boite quand on et bléser
local hurt = false
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5000)
        if GetEntityHealth(GetPlayerPed(-1)) <= 159 then
            setHurt()
        elseif hurt and GetEntityHealth(GetPlayerPed(-1)) > 160 then
            setNotHurt()
        end
    end
end)

function setHurt()
    hurt = true
    RequestAnimSet("move_m@injured")
    SetPedMovementClipset(GetPlayerPed(-1), "move_m@injured", true)
end

function setNotHurt()
    hurt = false
    ResetPedMovementClipset(GetPlayerPed(-1))
    ResetPedWeaponMovementClipset(GetPlayerPed(-1))
    ResetPedStrafeClipset(GetPlayerPed(-1))
end
--Siren 
local sirene = 1
RegisterCommand('siren', function()
	-- Check si le joueurs est dans un véhicule
	local playerped = GetPlayerPed(-1)		
	if IsPedInAnyVehicle(playerped, false) then	
		-- Check si le joueurs est conducteur
		local veh = GetVehiclePedIsUsing(playerped)	
		local NetId = NetworkGetNetworkIdFromEntity(veh)
		if GetPedInVehicleSeat(veh, -1) == playerped then
			-- Check si il est dans un véhicule de police / EMS
			if GetVehicleClass(veh) == 18 then
				attenteSiren = 11
				--DisableControlAction(0, 34, true)
				if sirene == 0 then
					-- on
					TriggerServerEvent("siren:sync", sirene, NetId)
					sirene = 1
				else
					-- off
					TriggerServerEvent("siren:sync", sirene, NetId)
					sirene = 0
				end
			end
		end
	end
end)

-- Server side sync
RegisterNetEvent("siren:ClientSync")
AddEventHandler("siren:ClientSync", function(sync, NetId)
	local veh = NetworkGetEntityFromNetworkId(NetId)
	if sync == 0 then
		DisableVehicleImpactExplosionActivation(veh, 0)
	elseif sync == 1 then
		DisableVehicleImpactExplosionActivation(veh, 1)
	end
end)


--Debut point tp
key_to_teleport = 38

local function CheckPos(x, y, z, cx, cy, cz, radius)
    local t1 = x - cx
    local t12 = t1^2

    local t2 = y-cy
    local t21 = t2^2

    local t3 = z - cz
    local t31 = t3^2

    return (t12 + t21 + t31) <= radius^2
end

local function alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0,0,1,-1)
end

local player = GetPlayerPed(-1)

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(6)
        local player = GetPlayerPed(-1)
        local playerLoc = GetEntityCoords(player)

        for _,location in ipairs(positions) do
            teleport_text = location[4]
            loc1 = {
                x=location[1][1],
                y=location[1][2],
                z=location[1][3],
                heading=location[1][4]
            }
            loc2 = {
                x=location[2][1],
                y=location[2][2],
                z=location[2][3],
                heading=location[2][4]
            }
            Red = location[3][1]
            Green = location[3][2]
            Blue = location[3][3]

            --DrawMarker(1, loc1.x, loc1.y, loc1.z, 0, 0, 0, 0, 0, 0, 1.501, 1.5001, 0.5001, Red, Green, Blue, 100, 0, 0, 0, 0)
            --DrawMarker(1, loc2.x, loc2.y, loc2.z, 0, 0, 0, 0, 0, 0, 1.501, 1.5001, 0.5001, Red, Green, Blue, 100, 0, 0, 0, 0)

            if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, loc1.x, loc1.y, loc1.z, 2) then 
                alert(teleport_text)
                
                if IsControlJustReleased(1, key_to_teleport) then
                    if IsPedInAnyVehicle(player, true) then
                        SetEntityCoords(GetVehiclePedIsUsing(player), loc2.x, loc2.y, loc2.z)
                        SetEntityHeading(GetVehiclePedIsUsing(player), loc2.heading)
                    else
                        SetEntityCoords(player, loc2.x, loc2.y, loc2.z)
                        SetEntityHeading(player, loc2.heading)
                    end
                end

            elseif CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, loc2.x, loc2.y, loc2.z, 2) then
                alert(teleport_text)

                if IsControlJustReleased(1, key_to_teleport) then
                    if IsPedInAnyVehicle(player, true) then
                        SetEntityCoords(GetVehiclePedIsUsing(player), loc1.x, loc1.y, loc1.z)
                        SetEntityHeading(GetVehiclePedIsUsing(player), loc1.heading)
                    else
                        SetEntityCoords(player, loc1.x, loc1.y, loc1.z)
                        SetEntityHeading(player, loc1.heading)
                    end
                end
            end            
        end
    end
end)


Citizen.CreateThread(function()
    while true do
        local pCoords = GetEntityCoords(GetPlayerPed(-1))        
            local distance1 = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, 4840.571, -5174.425, 2.0, false)
            if distance1 < 2000.0 then
            	Citizen.InvokeNative("0x9A9D1BA639675CF1", "HeistIsland", true)  -- load the map and removes the city
            	Citizen.InvokeNative("0x5E1460624D194A38", true) -- load the minimap/pause map and removes the city minimap/pause map
            else
            	Citizen.InvokeNative("0x9A9D1BA639675CF1", "HeistIsland", false)
            	Citizen.InvokeNative("0x5E1460624D194A38", false)
            end
        Citizen.Wait(5000)
    end
end)

local fov_max = 40.0
local fov_min = 1.5 -- max zoom level (smaller fov is more zoom)
local zoomspeed = 5.0 -- camera zoom speed
local speed_lr = 4.5 -- speed by which the camera pans left-right
local speed_ud = 4.5 -- speed by which the camera pans up-down

local binoculars = false
local fov = (fov_max+fov_min)*0.5
local storeBinoclarKey = Keys["BACKSPACE"]

-- Activate binoculars
RegisterCommand('binoculars', function()
	binoculars = not binoculars
	hasBinocular(function (hasBinocular)
		if hasBinocular == true then
			local lPed = GetPlayerPed(-1)
			local vehicle = GetVehiclePedIsIn(lPed)

			if binoculars then
				binoculars = true
				if not ( IsPedSittingInAnyVehicle( lPed ) ) then
					Citizen.CreateThread(function()
						TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_BINOCULARS", 0, 1)
						PlayAmbientSpeech1(GetPlayerPed(-1), "GENERIC_CURSE_MED", "SPEECH_PARAMS_FORCE")
					end)
				end

				Wait(2000)


				SetTimecycleModifier("heliGunCam")

				SetTimecycleModifierStrength(0.3)

				local scaleform = RequestScaleformMovie("HELI_CAM")

				while not HasScaleformMovieLoaded(scaleform) do
					Citizen.Wait(10)
				end

				local lPed = GetPlayerPed(-1)
				local vehicle = GetVehiclePedIsIn(lPed)
				local cam = CreateCam("DEFAULT_SCRIPTED_FLY_CAMERA", true)

				AttachCamToEntity(cam, lPed, 0.0,0.0,1.0, true)
				SetCamRot(cam, 0.0,0.0,GetEntityHeading(lPed))
				SetCamFov(cam, fov)
				RenderScriptCams(true, false, 0, 1, 0)
				PushScaleformMovieFunction(scaleform, "SET_CAM_LOGO")
				PushScaleformMovieFunctionParameterInt(0) -- 0 for nothing, 1 for LSPD logo
				PopScaleformMovieFunctionVoid()

				while binoculars and not IsEntityDead(lPed) and (GetVehiclePedIsIn(lPed) == vehicle) and true do
					if IsControlJustPressed(0, storeBinoclarKey) then -- Toggle binoculars
						PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
						ClearPedTasks(GetPlayerPed(-1))
						binoculars = false
					end

					local zoomvalue = (1.0/(fov_max-fov_min))*(fov-fov_min)
					CheckInputRotation(cam, zoomvalue)

					HandleZoom(cam)
					HideHUDThisFrame()

					DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
					Citizen.Wait(10)
				end

				binoculars = false
				ClearTimecycleModifier()
				fov = (fov_max+fov_min)*0.5
				RenderScriptCams(false, false, 0, 1, 0)
				SetScaleformMovieAsNoLongerNeeded(scaleform)
				DestroyCam(cam, false)
				SetNightvision(false)
				SetSeethrough(false)
			else
				PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", false)
				ClearPedTasks(GetPlayerPed(-1))
				binoculars = false
			end
		else
			ShowNoBinocularWarning()
		end
	end)
end)

function hasBinocular (cb)
	if (ESX == nil) then return cb(0) end
	ESX.TriggerServerCallback('gcphone:getItemAmount', function(qtty)
	  cb(qtty > 0)
	end, 'jumelle')
end
function ShowNoBinocularWarning () 
	if (ESX == nil) then return end
	ESX.ShowNotification("Vous n'avez pas de ~r~Télémétre~s~")
end

--FUNCTIONS--
function HideHUDThisFrame()
	HideHelpTextThisFrame()
	HideHudAndRadarThisFrame()
	HideHudComponentThisFrame(1) -- Wanted Stars
	HideHudComponentThisFrame(2) -- Weapon icon
	HideHudComponentThisFrame(3) -- Cash
	HideHudComponentThisFrame(4) -- MP CASH
	HideHudComponentThisFrame(6)
	HideHudComponentThisFrame(7)
	HideHudComponentThisFrame(8)
	HideHudComponentThisFrame(9)
	HideHudComponentThisFrame(13) -- Cash Change
	HideHudComponentThisFrame(11) -- Floating Help Text
	HideHudComponentThisFrame(12) -- more floating help text
	HideHudComponentThisFrame(15) -- Subtitle Text
	HideHudComponentThisFrame(18) -- Game Stream
	HideHudComponentThisFrame(19) -- weapon wheel
end

function CheckInputRotation(cam, zoomvalue)
	local rightAxisX = GetDisabledControlNormal(0, 220)
	local rightAxisY = GetDisabledControlNormal(0, 221)
	local rotation = GetCamRot(cam, 2)
	if rightAxisX ~= 0.0 or rightAxisY ~= 0.0 then
		new_z = rotation.z + rightAxisX*-1.0*(speed_ud)*(zoomvalue+0.1)
		new_x = math.max(math.min(20.0, rotation.x + rightAxisY*-1.0*(speed_lr)*(zoomvalue+0.1)), -89.5)
		SetCamRot(cam, new_x, 0.0, new_z, 2)
	end
end

function HandleZoom(cam)
	local lPed = GetPlayerPed(-1)
	if not ( IsPedSittingInAnyVehicle( lPed ) ) then

		if IsControlJustPressed(0,241) then -- Scrollup
			fov = math.max(fov - zoomspeed, fov_min)
		end
		if IsControlJustPressed(0,242) then
			fov = math.min(fov + zoomspeed, fov_max) -- ScrollDown
		end
		local current_fov = GetCamFov(cam)
		if math.abs(fov-current_fov) < 0.1 then
			fov = current_fov
		end
		SetCamFov(cam, current_fov + (fov - current_fov)*0.05)
	else
		if IsControlJustPressed(0,17) then -- Scrollup
			fov = math.max(fov - zoomspeed, fov_min)
		end
		if IsControlJustPressed(0,16) then
			fov = math.min(fov + zoomspeed, fov_max) -- ScrollDown
		end
		local current_fov = GetCamFov(cam)
		if math.abs(fov-current_fov) < 0.1 then -- the difference is too small, just set the value directly to avoid unneeded updates to FOV of order 10^-5
			fov = current_fov
		end
		SetCamFov(cam, current_fov + (fov - current_fov)*0.05) -- Smoothing of camera zoom
	end
end







local AllowRidingAnimalPlayers = false
IhaveReplacedMyDeerWithModNumber1 = true
local HelperMessageID = 0
AnimalControlStatus =  0.05
XNL_IsRidingAnimal = false
local Animal = {
	Handle = nil,
	Invincible = false,
	Ragdoll = false,
	Marker = false,
	InControl = false,
	IsFleeing = false,
	Speed = {
		Walk = 2.0,
		Run = 3.0,
	},
}

local entityEnumerator = {
	__gc = function(enum)
		if enum.destructor and enum.handle then
			enum.destructor(enum.handle)
		end
		enum.destructor = nil
		enum.handle = nil
	end
}

function EnumerateEntities(initFunc, moveFunc, disposeFunc)
	return coroutine.wrap(function()
		local iter, id = initFunc()
		if not id or id == 0 then
			disposeFunc(iter)
			return
		end
	
		local enum = {handle = iter, destructor = disposeFunc}
		setmetatable(enum, entityEnumerator)
	
		local next = true
		repeat
			coroutine.yield(id)
			next, id = moveFunc(iter)
		until not next
	
		enum.destructor, enum.handle = nil, nil
		disposeFunc(iter)
	end)
end

function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

function GetNearbyPeds(X, Y, Z, Radius)
	local NearbyPeds = {}
	for Ped in EnumeratePeds() do
		if DoesEntityExist(Ped) then
			local PedPosition = GetEntityCoords(Ped, false)
			if Vdist(X, Y, Z, PedPosition.x, PedPosition.y, PedPosition.z) <= Radius then
				table.insert(NearbyPeds, Ped)
			end
		end
	end
	return NearbyPeds
end

function OnPlayerRequestToRideAnimal()
	return true
end

function OnPlayerBoardAnimal()

end

function OnPlayerLeaveAnimal()

end

function Animal.Attach()
	local Ped = PlayerPedId()

	FreezeEntityPosition(Animal.Handle, true)
	FreezeEntityPosition(Ped, true)

	local AnimalPosition = GetEntityCoords(Animal.Handle, false)
	SetEntityCoords(Ped, AnimalPosition.x, AnimalPosition.y, AnimalPosition.z)

	AnimalName = "Deer"
	AnimalType = 1
	XAminalOffSet = 0.0 -- Default DEER offset
	AnimalOffSet  = 0.2  -- Default DEER offset
	--if GetEntityModel(Animal.Handle) == GetHashKey('a_c_cow') then AnimalOffSet = 0.2 end

	if GetEntityModel(Animal.Handle) == GetHashKey('a_c_deer') and IhaveReplacedMyDeerWithModNumber1 then 
		AnimalName = "Horse"
		AnimalType = 1
		AnimalOffSet  = 0.12
		XAminalOffSet = -0.2
	end
	
	
	if GetEntityModel(Animal.Handle) == GetHashKey('a_c_cow') then 
		AnimalName = "Cow"
		AnimalType = 2
		AnimalOffSet  = 0.1
		XAminalOffSet = 0.1
	end
		
	if GetEntityModel(Animal.Handle) == GetHashKey('a_c_boar') then 
		AnimalName = "Boar"
		AnimalOffSet = 0.3
		AnimalType = 3
		XAminalOffSet = -0.0
	end

	if NetworkGetPlayerIndexFromPed(Animal.Handle) == -1 then
		if (HelperMessageID > 2 or HelperMessageID < 2) and not Animal.InControl then
			DisplayHelpText('Keep tapping ~INPUT_VEH_ACCELERATE~ to get control of the ' .. AnimalName)
			HelperMessageID = 2
			AnimalControlStatus = 0.05
		end
	end
	
	SetCurrentPedWeapon(Ped, "weapon_unarmed", true)	-- Sets the player to unarmed (no weapons), 
														-- it could "freak out" Peds or Feds, and 'space the weapon' through the animal
	AttachEntityToEntity(Ped, Animal.Handle, GetPedBoneIndex(Animal.Handle, 24816), XAminalOffSet, 0.0, AnimalOffSet, 0.0, 0.0, -90.0, false, false, false, true, 2, true)

	if AnimalType == 1  then
		RequestAnimDict("amb@prop_human_seat_chair@male@generic@base")
		while not HasAnimDictLoaded("amb@prop_human_seat_chair@male@generic@base") do
			Citizen.Wait(250)
		end
		TaskPlayAnim(Ped, "amb@prop_human_seat_chair@male@generic@base", "base", 8.0, 1, -1, 1, 1.0, 0, 0, 0)
	elseif AnimalType == 2 or AnimalType == 3 then
		RequestAnimDict("amb@prop_human_seat_chair@male@elbows_on_knees@idle_a")
		while not HasAnimDictLoaded("amb@prop_human_seat_chair@male@elbows_on_knees@idle_a") do
			Citizen.Wait(250)
		end

		TaskPlayAnim(Ped, "amb@prop_human_seat_chair@male@elbows_on_knees@idle_a", "idle_a", 8.0, 1, -1, 1, 1.0, 0, 0, 0)
	end
	--TaskPlayAnim(Ped, "rcmjosh2", "josh_sitting_loop", 8.0, 1, -1, 2, 1.0, 0, 0, 0)

	
	FreezeEntityPosition(Animal.Handle, false)
	FreezeEntityPosition(Ped, false)
	OnPlayerBoardAnimal() -- Used to do some 'extra stuff' on our server when a player has boarded an animal
						  -- you can also use it to for example save stats like: Ridden Animals: [number of times]
	XNL_IsRidingAnimal = true
end

function Animal.Ride()
	local Ped = PlayerPedId()
	local PedPosition = GetEntityCoords(Ped, false)
	if IsPedSittingInAnyVehicle(Ped) or IsPedGettingIntoAVehicle(Ped) then
		return
	end

	local AttachedEntity = GetEntityAttachedTo(Ped)

	if (IsEntityAttached(Ped)) and (GetEntityModel(AttachedEntity) == GetHashKey("a_c_deer") or GetEntityModel(AttachedEntity) == GetHashKey("a_c_cow") 
	    or GetEntityModel(AttachedEntity) == GetHashKey("a_c_boar")) then
		local SideCoordinates = GetCoordsInfrontOfEntityWithDistance(AttachedEntity, 1.0, 90.0)
		local SideHeading = GetEntityHeading(AttachedEntity)

		SideCoordinates.z = GetGroundZ(SideCoordinates.x, SideCoordinates.y, SideCoordinates.z)

		Animal.Handle = nil
		Animal.InControl = false
		DetachEntity(Ped, true, false)
		ClearPedSecondaryTask(Ped)
		ClearPedTasksImmediately(Ped)

		AminD2 = "amb@prop_human_seat_chair@male@elbows_on_knees@react_aggressive"
		RequestAnimDict(AminD2)
		while not HasAnimDictLoaded(AminD2) do
			Citizen.Wait(0)
		end
		TaskPlayAnim(Ped, AminD2, "exit_left", 8.0, 1, -1, 0, 1.0, 0, 0, 0)
		Wait(100)
		SetEntityCoords(Ped, SideCoordinates.x, SideCoordinates.y, SideCoordinates.z)
		SetEntityHeading(Ped, SideHeading)
		ClearPedSecondaryTask(Ped)
		ClearPedTasksImmediately(Ped)
		RemoveAnimDict(AminD2)
		OnPlayerLeaveAnimal() -- Used on our server to do 'stuff' when the player got of the animal
		if HelperMessageID > 0 then
			HelperMessageID = 0
			ClearAllHelpMessages()				
		end

	else
		for _, Ped in pairs(GetNearbyPeds(PedPosition.x, PedPosition.y, PedPosition.z, 2.0)) do
			if not IsPedFalling(Ped) and not IsPedFatallyInjured(Ped) and not IsPedDeadOrDying(Ped) 
			   and not IsPedDeadOrDying(Ped) and not IsPedGettingUp(Ped) and not IsPedRagdoll(Ped) then
				if (GetEntityModel(Ped) == GetHashKey("a_c_deer") or GetEntityModel(Ped) == GetHashKey("a_c_cow")
					or GetEntityModel(Ped) == GetHashKey("a_c_boar")) then
					
					if NetworkGetPlayerIndexFromPed(Ped) > -1 and not AllowRidingAnimalPlayers then
						return
					end
					
					
					-- Here we do a simple scan to see if there are other Peds in the radius of the animal
					-- (although for 'all safety' I've made this scan a bit bigger)
					-- If it turns out if there is a player nearby it will then compare if that Entity (The other player)
					-- if attached to the 'just detected entity (the animal)'. If this is the case we will NOT allow the
					-- player to "also" board the animal
					for _, Ped2 in pairs(GetNearbyPeds(PedPosition.x, PedPosition.y, PedPosition.z, 4.0)) do
						if IsEntityAttachedToEntity(Ped2, Ped) then
							return
						end
					end

					-- Check for 'own conditions' on our server if the player is allowed at that time to
					-- even ride/board animals. You could also use that function for example to 'exclude' wanted
					-- players from riding/boarding animals
					if OnPlayerRequestToRideAnimal() then
						Animal.Handle = Ped
						Animal.Attach()
					end
					break
				end
			end
		end
	end
end

function DropPlayerFromAnimal()
	local Ped = PlayerPedId()
	Animal.Handle = nil
	DetachEntity(Ped, true, false)
	ClearPedTasksImmediately(Ped)
	ClearPedSecondaryTask(Ped)
	Animal.InControl = false
	AminD2 = "amb@prop_human_seat_chair@male@elbows_on_knees@react_aggressive"
	RequestAnimDict(AminD2)
	while not HasAnimDictLoaded(AminD2) do
		Citizen.Wait(0)
	end
	TaskPlayAnim(Ped, AminD2, "exit_left", 8.0, 1, -1, 0, 1.0, 0, 0, 0)
	Wait(100)
	ClearPedSecondaryTask(Ped)
	ClearPedTasksImmediately(Ped)
	Wait(100)
	SetPedToRagdoll(Ped, 1500, 1500, 0, 0, 0, 0)
	AnimalControlStatus = 0
	OnPlayerLeaveAnimal() -- Used on our server to do 'stuff' when the player got of the animal
	XNL_IsRidingAnimal = false
end

--===========================================================================================================================
-- Main 'Helper' functions
--===========================================================================================================================
function GetCoordsInfrontOfEntityWithDistance(Entity, Distance, Heading)
	local Coordinates = GetEntityCoords(Entity, false)
	local Head = (GetEntityHeading(Entity) + (Heading or 0.0)) * math.pi / 180.0
	return {x = Coordinates.x + Distance * math.sin(-1.0 * Head), y = Coordinates.y + Distance * math.cos(-1.0 * Head), z = Coordinates.z}
end

function GetGroundZ(X, Y, Z)
	if tonumber(X) and tonumber(Y) and tonumber(Z) then
		local _, GroundZ = GetGroundZFor_3dCoord(X + 0.0, Y + 0.0, Z + 0.0, Citizen.ReturnResultAnyway())
		return GroundZ
	else
		return 0.0
	end
end

function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
	EndTextCommandDisplayHelp(0, 0, true, 8000)
end

--===========================================================================================================================
-- Controling Threads
--===========================================================================================================================
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(50)
		if AnimalControlStatus > 0 then
			AnimalControlStatus = AnimalControlStatus - 0.001
		end
	end

end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(6)

		if IsControlJustPressed(1, 51) then
			Animal.Ride()
		end

		if XNL_IsRidingAnimal then
			local Ped = PlayerPedId()
			local AttachedEntity = GetEntityAttachedTo(Ped)
	
			if (not IsPedSittingInAnyVehicle(Ped) or not IsPedGettingIntoAVehicle(Ped)) and IsEntityAttached(Ped) and AttachedEntity == Animal.Handle then
				if DoesEntityExist(Animal.Handle) then
					AnimalChecksOkay = true 		-- We set the 'animal state' default to true

					-- Here we check if the animal is 'okay' (not dead, tripped, run over etc etc),
					-- if the animal is 'not okay' we'll make the player fall off/ragdoll.
					-- same goes for when the player is 'not okay' anymore 
					if IsPedFalling(AttachedEntity) or IsPedFatallyInjured(AttachedEntity) or IsPedDeadOrDying(AttachedEntity) 
					   or IsPedDeadOrDying(AttachedEntity) or IsPedDeadOrDying(Ped) or IsPedGettingUp(AttachedEntity) or IsPedRagdoll(AttachedEntity) then
						Animal.IsFleeing = false
						Animal.InControl = false
						AnimalChecksOkay = false
						DropPlayerFromAnimal()
					end
				
					-- If the animal checks out all okay, we'll resume riding it
					if AnimalChecksOkay then
						local LeftAxisXNormal, LeftAxisYNormal = GetControlNormal(2, 218), GetControlNormal(2, 219)
						local Speed, Range = Animal.Speed.Walk, 4.0
					
						-- Make the animal 'run', however this is 'kinda buggy' and not totally satisfactory,
						-- so you could disable the following four lines of code to 'disable animal running'
						if IsControlPressed(0, 21) then
							Speed = Animal.Speed.Run
							Range = 8.0
						end
					
						if Animal.InControl then
							Animal.IsFleeing = false
							local GoToOffset = GetOffsetFromEntityInWorldCoords(Animal.Handle, LeftAxisXNormal * Range, LeftAxisYNormal * -1.0 * Range, 0.0)
						
							TaskLookAtCoord(Animal.Handle, GoToOffset.x, GoToOffset.y, GoToOffset.z, 0, 0, 2)
							TaskGoStraightToCoord(Animal.Handle, GoToOffset.x, GoToOffset.y, GoToOffset.z, Speed, 20000, 40000.0, 0.5)
						
							if Animal.Marker then
								DrawMarker(6, GoToOffset.x, GoToOffset.y, GoToOffset.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 255, 255, 255, 255, 0, 0, 2, 0, 0, 0, 0)
							end
						else
							if NetworkGetPlayerIndexFromPed(Animal.Handle) == -1 then
								-- Tapping (Default) the [W] key to gain control of the animal
								if IsControlJustPressed(1, 71) then
									if AnimalControlStatus < 0.1 then
										AnimalControlStatus = AnimalControlStatus + 0.005
										if AnimalControlStatus > 0.1 then 
											AnimalControlStatus = 0.1 
											if HelperMessageID > 4 or HelperMessageID < 4 then
												DisplayHelpText("You've gained control of the animal.")
												HelperMessageID = 4
												AnimalControlStatus = 0
												Animal.InControl = true
											end
										end
									end
								end
							
								if AnimalControlStatus <= 0.000001 and not Animal.InControl then
									if HelperMessageID > 3 or HelperMessageID < 3 then
										DisplayHelpText("You've the lost your grip and fell off.")
										HelperMessageID = 3
									end
									DropPlayerFromAnimal()
								end

								if not Animal.IsFleeing then
									Animal.IsFleeing = true
									TaskSmartFleePed(Animal.Handle, Ped, 9000.0, -1, false, false)
								end
							end
						end
					end
				end
			end
		end
	end
end)