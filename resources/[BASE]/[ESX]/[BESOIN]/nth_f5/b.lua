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