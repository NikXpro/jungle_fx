local emsMenu = RageUI.CreateMenu("Interaction EMS", "Interaction EMS")


Citizen.CreateThread(function()
    while (true) do 
        local attente = 500
        if RageUI.Visible(emsMenu) then
            attente = 5 
            RageUI.IsVisible(emsMenu, function()
                ReviveBouton("Revive", "", true)
                SoinBouton("Soin", "", true)
            end, function()
            end)
        end
        Citizen.Wait(attente)
    end
end)

Keys.Register('F6', 'F6', 'Menu intéraction EMS.', function()
    RageUI.Visible(emsMenu, not RageUI.Visible(emsMenu))
end)
