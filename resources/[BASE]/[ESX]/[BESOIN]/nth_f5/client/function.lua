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

function LoadingPrompt(loadingText, spinnerType)

	if IsLoadingPromptBeingDisplayed() then
		RemoveLoadingPrompt()
	end

	if (loadingText == nil) then
		BeginTextCommandBusyString(nil)
	else
		BeginTextCommandBusyString("STRING");
		AddTextComponentSubstringPlayerName(loadingText);
	end

	EndTextCommandBusyString(spinnerType)
end

function Optimisation()
	DoScreenFadeIn(2000) -- Ecran Noir
	LoadingPrompt("Optimisation ...", 3)
	DoScreenFadeOut(2000)  -- Ecran Noir
	Citizen.Wait(2000)
	DoScreenFadeIn(1500) -- Ecran Noir
	ClearAllBrokenGlass()
	ClearAllHelpMessages()
	LeaderboardsReadClearAll()
	ClearBrief()
	ClearGpsFlags()
	ClearPrints()
	ClearSmallPrints()
	ClearReplayStats()
	LeaderboardsClearCacheData()
	ClearFocus()
	ClearHdArea()
	ClearHelp()
	ClearNotificationsPos()
	ClearPedInPauseMenu()
	ClearFloatingHelp()
	ClearGpsPlayerWaypoint()
	ClearGpsRaceTrack()
	ClearReminderMessage()
	ClearThisPrint()

	Citizen.Wait(2090)
	RemoveLoadingPrompt()
	Citizen.Wait(100)
	PlaySoundFrontend(-1, "Hack_Success", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS", true)
end