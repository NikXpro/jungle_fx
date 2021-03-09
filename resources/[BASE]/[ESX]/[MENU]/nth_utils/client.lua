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


RegisterKeyMapping('binoculars', 'Utilliser le télémétre', 'keyboard', "")
RegisterKeyMapping('siren', 'Activer/Désactiver les sirens', 'keyboard', "")
RegisterKeyMapping('vehicule_place_1', 'Aller en conducteur', 'keyboard', "1")
RegisterKeyMapping('vehicule_place_2', 'Aller en passager', 'keyboard', "2")
RegisterKeyMapping('vehicule_place_3', 'Aller en passager arriére gauche', 'keyboard', "3")
RegisterKeyMapping('vehicule_place_4', 'Aller en passager arriére droite', 'keyboard', "4")



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
			if IsControlJustReleased(0, 160) then -- arriere gauche
				SetPedIntoVehicle(plyPed, plyVehicle, 1)
			end
			if IsControlJustReleased(0, 164) then -- arriere gauche
				SetPedIntoVehicle(plyPed, plyVehicle, 2)
			end
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
			if IsControlJustReleased(0, 164) then -- arriere gauche
				SetPedIntoVehicle(plyPed, plyVehicle, 2)
			end
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



Player = {
    crouched = false,
    handsUp = false,
}

Controls = {
	HandsUP = {keyboard = 'QUOTE'},
	Crouch = {keyboard = Keys['LEFTCTRL']},
}

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

		if IsControlJustReleased(1, Controls.HandsUP.keyboard) and IsInputDisabled(2) then
			local plyPed = PlayerPedId()

			if (DoesEntityExist(plyPed)) and not (IsEntityDead(plyPed)) and (IsPedOnFoot(plyPed)) then
				if Player.pointing then
					Player.pointing = false
				end

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
