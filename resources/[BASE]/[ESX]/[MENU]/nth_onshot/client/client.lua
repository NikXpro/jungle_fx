ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

local OneMenu = {
    pedsMenu = 1
}

categorie = {
    {name = "Femme", value = "femme"}
}

list = {
    ["femme"] = {
        {name = "test", value = "test 2"},
        {name = "test", value = "test 2"},
        {name = "test", value = "test 2"},
        {name = "test", value = "test 2"}
    }
}

local onshotMenu = RageUI.CreateMenu("Menu Onshot", "Menu Onshot")
local pedsMenu = RageUI.CreateSubMenu(onshotMenu, "Menu Onshot", "Menu Onshot")
local freemodeMenu = RageUI.CreateSubMenu(onshotMenu, "Menu Onshot", "Menu Onshot")

Citizen.CreateThread(function()
    while true do
        local attente = 500
        if RageUI.Visible(onshotMenu) then
            attente = 6
            RageUI.IsVisible(onshotMenu, function()
                RageUI.Button("Peds", nil, {RightLabel = "→"}, true, { onSelected = function() end}, pedsMenu)
                RageUI.Button("Freemode", nil, {RightLabel = "→"}, true, { onSelected = function() end}, freemodeMenu)
            end, function()
            end)
        end
        if RageUI.Visible(pedsMenu) then 
            attente = 6
            RageUI.IsVisible(pedsMenu, function()
                RageUI.List('Menu', {
                    { Name = "List", Value = 1 },
                    { Name = "Sauvegarder", Value = 2 }
                }, OneMenu.pedsMenu, nil, {}, true, {
                    onListChange = function(Index, Item)
                        OneMenu.pedsMenu = Index;
                    end,
                    onSelected = function()
                    
                    end,
                })
                if OneMenu.pedsMenu == 1 then
                    for k,v in pairs(categorie) do
                        menu = RageUI.CreateSubMenu(pedsMenu, v.name, v.name)
                        for a,b in pairs(list[v.value]) do
                            RageUI.Button(v.name, nil, {RightLabel = "→"}, true, { onSelected = function() end}, menu)
                        end
                    end
                elseif OneMenu.pedsMenu == 2 then 

                end
            end, function()
            end)
        end
        if RageUI.Visible(freemodeMenu) then
            attente = 6
            RageUI.IsVisible(freemodeMenu, function()

            end, function()
            end)
        end
        Citizen.Wait(attente)
    end
end)

Keys.Register('G', 'G', 'Menu oneshot.', function()
    RageUI.Visible(onshotMenu, not RageUI.Visible(onshotMenu))
end)