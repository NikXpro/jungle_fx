local job = {
    heal = 1
}

function ReviveBouton(titre, rightlabel, activate)
    RageUI.Button(titre, nil, {RightLabel = rightlabel}, activate, {
        onSelected = function()
            local isBusy = false
            local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
            if closestPlayer == -1 or closestDistance > 1.0 then
                ESX.ShowNotification("Aucun joueur a proximité !")
            else
                isBusy = true
                ESX.TriggerServerCallback('esx_ambulancejob:getItemAmount', function(quantity)
                    if quantity > 0 then
                        local closestPlayerPed = GetPlayerPed(closestPlayer)
                        if IsPedDeadOrDying(closestPlayerPed, 1) then
                            local playerPed = PlayerPedId()
                            ESX.ShowNotification("Réanimation en cour")
                            local lib, anim = 'mini@cpr@char_a@cpr_str', 'cpr_pumpchest'
                            for i=1, 15, 1 do
                                Citizen.Wait(900)
                                ESX.Streaming.RequestAnimDict(lib, function()
                                    TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, -8.0, -1, 0, 0, false, false, false)
                                end)
                            end
                            TriggerServerEvent('esx_ambulancejob:removeItem', 'medikit')
                            TriggerServerEvent('esx_ambulancejob:revive', GetPlayerServerId(closestPlayer))
                        else
                            ESX.ShowNotification("Le joueur n'est pas inconscient")
                        end
                    else
                        ESX.ShowNotification("Vous n'avez pas de médikit")
                    end
                    isBusy = false
                end, 'medikit')
            end
        end
    });
end


function SoinBouton(titre, rightlabel, activate)
    RageUI.List(titre, {
        { Name = "Bandage", Value = 1 },
        { Name = "Medikit", Value = 2 },
    }, job.heal, nil, {RightLabel = rightlabel}, activate, {
        onListChange = function(Index, Item)
            job.heal = Index;
        end,
        onSelected = function(Index, Item)
            local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
            if closestPlayer == -1 or closestDistance > 1.0 then
                ESX.ShowNotification("Aucun joueur a proximité !")
            else
                if job.heak == 1 then
                    ESX.TriggerServerCallback('esx_ambulancejob:getItemAmount', function(quantity)
			    		if quantity > 0 then
			    			local closestPlayerPed = GetPlayerPed(closestPlayer)
			    			local health = GetEntityHealth(closestPlayerPed)
			    			if health > 0 then
			    				local playerPed = PlayerPedId()
			    				isBusy = true
			    				ESX.ShowNotification(_U('heal_inprogress'))
			    				TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)
			    				Citizen.Wait(10000)
			    				ClearPedTasks(playerPed)
			    				TriggerServerEvent('esx_ambulancejob:removeItem', 'bandage')
			    				TriggerServerEvent('esx_ambulancejob:heal', GetPlayerServerId(closestPlayer), 'small')
			    				ESX.ShowNotification(_U('heal_complete', GetPlayerName(closestPlayer)))
			    				isBusy = false
			    			else
			    				ESX.ShowNotification(_U('player_not_conscious'))
			    			end
			    		else
			    			ESX.ShowNotification(_U('not_enough_bandage'))
			    		end
			    	end, 'bandage')
                elseif job.heal == 2 then 
                    ESX.TriggerServerCallback('esx_ambulancejob:getItemAmount', function(quantity)
                        if quantity > 0 then
                            local closestPlayerPed = GetPlayerPed(closestPlayer)
                            local health = GetEntityHealth(closestPlayerPed)
                            if health > 0 then
                                local playerPed = PlayerPedId()
                                isBusy = true
                                ESX.ShowNotification(_U('heal_inprogress'))
                                TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TEND_TO_DEAD', 0, true)
                                Citizen.Wait(10000)
                                ClearPedTasks(playerPed)
                                TriggerServerEvent('esx_ambulancejob:removeItem', 'medikit')
                                TriggerServerEvent('esx_ambulancejob:heal', GetPlayerServerId(closestPlayer), 'big')
                                ESX.ShowNotification(_U('heal_complete', GetPlayerName(closestPlayer)))
                                isBusy = false
                            else
                                ESX.ShowNotification(_U('player_not_conscious'))
                            end
                        else
                            ESX.ShowNotification(_U('not_enough_medikit'))
                        end
                    end, 'medikit')
                end
            end
        end
    })
end
