ESX = nil
Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(5)
    end
    
end)

Emoticon = { Couleur = { Rouge = "🔴", Bleu = "🔵", Blanc = "⚪", Noir = "⚫",  Orange = "🟠", Jaune = "🟡", Vert = "🟢", Violet = "🟣", Maron = "🟤", }, Poubelle = "🗑️", Donner = "📤", Recevoir = "📥", Utilliser = "✅", Loupe = "🔎", Cheval = "🐎", Menotte = "🔗", Dollard = "💲", Objet = "🧊", Reparer = "🔧", Netoyer = "🧼", Sang = "🩸", Droite = "→", Annonce = "📢", Pied = "👣", Feuille = "📃", Permis = "📇", Dossier = "📁", Parametre = "⚙️", Lettre = "📩", Attention = "⚠️", Interdit = "⛔", Cloche = "🔔" }

local coffre = {
    filtre = 1
}

Menugarage = ""
function CreategarageMenu()
  garageActif = true
    for k, v in pairs(data.jobMenu) do
        if v.MenuType == "garage" then
            local garageMenu = RageUI.CreateMenu(v.Settings.TitreMenu, v.Settings.TitreMenu)
            if v.Settings.CustomBanner.Activate == true then
                garageMenu:SetSpriteBanner(v.Settings.CustomBanner.BannerDic, v.Settings.CustomBanner.BannerName)
            else
                garageMenu:SetRectangleBanner(2, 140, 4, 1.00)
            end
            garageMenu:SetSubtitle(v.Settings.DescriptionMenu)
            garageMenu.Closed = function()
              garageActif = false
            end
            if Menugarage == v.MenuId then
                RageUI.Visible(garageMenu, not RageUI.Visible(garageMenu))
                while garageActif do
                    Citizen.Wait(6)
                    RageUI.IsVisible(garageMenu, function()
                        for a, b in pairs(v.VehiculeList) do
                            local grade = ESX.PlayerData.job.grade
                            if b.GradeRequired.Activate == true then
                                if GradeList(b.GradeRequired.GradeNumber) then
                                    GarageBouton(b, v)
                                end
                            else
                                GarageBouton(b, v)
                            end
                        end
                    end, function()
                      --Panels
                    end)
                end
            end
        end
    end
end


MenuVestiaire = ""
function CreateVestiaireMenu()
  vestiairectif = true
    for k, v in pairs(data.jobMenu) do
        if v.MenuType == "vestiaire" then
            local vestiaireMenu = RageUI.CreateMenu(v.Settings.TitreMenu, v.Settings.TitreMenu)
            if v.Settings.CustomBanner.Activate == true then
                vestiaireMenu:SetSpriteBanner(v.Settings.CustomBanner.BannerDic, v.Settings.CustomBanner.BannerName)
            else
                vestiaireMenu:SetRectangleBanner(2, 140, 4, 1.00)
            end

            vestiaireMenu:SetSubtitle(v.Settings.DescriptionMenu)
            vestiaireMenu.Closed = function()
            vestiairectif = false
            end
            if MenuVestiaire == v.MenuId then
                RageUI.Visible(vestiaireMenu, not RageUI.Visible(vestiaireMenu))
                while vestiairectif do
                    Citizen.Wait(6)
                    RageUI.IsVisible(vestiaireMenu, function()
                        if v.Settings.TenueRemove.Activate == true then
                            RageUI.Button(v.Settings.TenueRemove.ButtonName, nil, {RightLabel = v.Settings.TenueRemove.RightLabel}, true, {
                                onSelected = function()

                                    local playerPed = PlayerPedId()
                                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
                                        TriggerEvent('skinchanger:loadSkin', skin)
                                    end)
                                    if v.Settings.TenueRemove.KevlarRemover == true then 
                                        SetPedArmour(playerPed, 0)
                                    end
                                end
                            });
                        end
                        for a, b in pairs(v.TenueList) do
                            local grade = ESX.PlayerData.job.grade
                            if b.GradeRequired.Activate == true then
                                if GradeList(b.GradeRequired.GradeNumber, grade) then
                                    TenueBouton(b)
                                end
                            else
                                TenueBouton(b)
                            end
                        end
                    end, function()
                      --Panels
                    end)
                end
            end
        end
    end
end


MenuArmurerie = ""
function CreateArmurerieMenu()
    armurerieactif = true
    for k, v in pairs(data.jobMenu) do
        if v.MenuType == "armurerie" then
            local armurerieMenu = RageUI.CreateMenu(v.Settings.TitreMenu, v.Settings.TitreMenu)
            local weaponMenu = RageUI.CreateSubMenu(armurerieMenu, v.Settings.TitreMenu, v.Settings.TitreMenu)
            local itemMenu = RageUI.CreateSubMenu(armurerieMenu, v.Settings.TitreMenu, v.Settings.TitreMenu)
            if v.Settings.CustomBanner.Activate == true then
                armurerieMenu:SetSpriteBanner(v.Settings.CustomBanner.BannerDic, v.Settings.CustomBanner.BannerName)
                weaponMenu:SetSpriteBanner(v.Settings.CustomBanner.BannerDic, v.Settings.CustomBanner.BannerName)
                itemMenu:SetSpriteBanner(v.Settings.CustomBanner.BannerDic, v.Settings.CustomBanner.BannerName)
            else
                armurerieMenu:SetRectangleBanner(2, 140, 4, 1.00)
                weaponMenu:SetRectangleBanner(2, 140, 4, 1.00)
                itemMenu:SetRectangleBanner(2, 140, 4, 1.00)
            end

            armurerieMenu:SetSubtitle(v.Settings.DescriptionMenu)
            weaponMenu:SetSubtitle(v.Settings.DescriptionMenu)
            itemMenu:SetSubtitle(v.Settings.DescriptionMenu)
            armurerieMenu.Closed = function()
                armurerieactif = false
            end
            if MenuArmurerie == v.MenuId then
                RageUI.Visible(armurerieMenu, not RageUI.Visible(armurerieMenu))
                while armurerieactif do
                    local attente = 500
                    if RageUI.Visible(armurerieMenu) then
                        attente = 6
                        RageUI.IsVisible(armurerieMenu, function()
                            if v.Settings.ActiveMenu.WeaponMenu.Activate == true then
                                RageUI.Button(v.Settings.ActiveMenu.WeaponMenu.MenuName, nil, {RightLabel = Emoticon.Droite}, true, {onSelected = function() end}, weaponMenu);
                            end
                            if v.Settings.ActiveMenu.ItemMenu.Activate == true then
                                RageUI.Button(v.Settings.ActiveMenu.ItemMenu.MenuName, nil, {RightLabel = Emoticon.Droite}, true, {onSelected = function() end}, itemMenu);
                            end
                        end)
                    end
                    if v.Settings.ActiveMenu.WeaponMenu.Activate == true then
                        if RageUI.Visible(weaponMenu) then
                            attente = 6
                            RageUI.IsVisible(weaponMenu, function()
                                for a, b in pairs(v.items) do
                                    if b.Type == "weapon" then
                                        local grade = ESX.PlayerData.job.grade
                                        if b.GradeRequired.Activate == true then
                                            if GradeList(b.GradeRequired.GradeNumber, grade) then
                                                ArmurerieBouton(b, v)
                                            end
                                        else
                                            ArmurerieBouton(b, v)
                                        end
                                    end
                                end
                            end)
                        end
                    end
                    if v.Settings.ActiveMenu.ItemMenu.Activate == true then
                        if RageUI.Visible(itemMenu) then
                            attente = 6
                            RageUI.IsVisible(itemMenu, function()
                                for a, b in pairs(v.items) do

                                    if b.Type == "item" then
                                        local grade = ESX.PlayerData.job.grade
                                        if b.GradeRequired.Activate == true then
                                            if GradeList(b.GradeRequired.GradeNumber, grade) then
                                                ArmurerieBouton(b, v)
                                            end
                                        else
                                            ArmurerieBouton(b, v)
                                        end
                                    end
                                end
                            end)
                        end
                    end
                    Citizen.Wait(attente)
                end
            end
        end
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500) 
        if coffreactif then
            ESX.TriggerServerCallback('nth_jobs:getStockItems', function(items)
                itemList = items
            end)
            ESX.TriggerServerCallback('nth_jobs:getArmoryWeapons', function(weapons)
                weaponList = weapons
            end)
        end
    end
end)

MenuCoffre = ""
function CreateCoffreMenu()
    coffreactif = true
    for k, v in pairs(data.jobMenu) do
        if v.MenuType == "coffre" then
            local coffreMenu = RageUI.CreateMenu(v.Settings.TitreMenu, v.Settings.TitreMenu)
            local depotMenu = RageUI.CreateSubMenu(coffreMenu, v.Settings.TitreMenu, v.Settings.TitreMenu)
            local prendreMenu = RageUI.CreateSubMenu(coffreMenu, v.Settings.TitreMenu, v.Settings.TitreMenu)
            if v.Settings.CustomBanner.Activate == true then
                coffreMenu:SetSpriteBanner(v.Settings.CustomBanner.BannerDic, v.Settings.CustomBanner.BannerName)
                depotMenu:SetSpriteBanner(v.Settings.CustomBanner.BannerDic, v.Settings.CustomBanner.BannerName)
                prendreMenu:SetSpriteBanner(v.Settings.CustomBanner.BannerDic, v.Settings.CustomBanner.BannerName)
            else
                coffreMenu:SetRectangleBanner(2, 140, 4, 1.00)
                depotMenu:SetRectangleBanner(2, 140, 4, 1.00)
                prendreMenu:SetRectangleBanner(2, 140, 4, 1.00)
            end

            coffreMenu:SetSubtitle(v.Settings.DescriptionMenu)
            depotMenu:SetSubtitle(v.Settings.DescriptionDeposer)
            prendreMenu:SetSubtitle(v.Settings.DescriptionPrendre)
            coffreMenu.Closed = function()
                coffreactif = false
            end
            if MenuCoffre == v.MenuId then
                RageUI.Visible(coffreMenu, not RageUI.Visible(coffreMenu))
                while coffreactif do
                    local attente = 500
                    if RageUI.Visible(coffreMenu) then
                        attente = 6
                        RageUI.IsVisible(coffreMenu, function()
                            RageUI.Button("Déposer", nil, {RightLabel = Emoticon.Droite}, true, {onSelected = function() end}, depotMenu);
                            RageUI.Button("Prendre", nil, {RightLabel = Emoticon.Droite}, true, {onSelected = function() end}, prendreMenu);
                        
                        end, function()
                            --Panels
                        end)
                    end
                    if RageUI.Visible(depotMenu) then
                        attente = 6
                        RageUI.IsVisible(depotMenu, function()
                            if v.Settings.Filtre == true then
                                RageUI.List('Filtre', {{ Name = "Tous", Value = 1 },{ Name = "Objets", Value = 2 },{ Name = "Armes", Value = 3 }}, coffre.filtre, nil, {Color = { HightLightColor = { 0, 155, 0, 150 }, BackgroundColor = { 0, 155, 0, 150 } }}, true, {
                                    onListChange = function(Index, Item)
                                        coffre.filtre = Index;
                                    end,
                                })
                                if coffre.filtre == 1 then
                                    DeposerItemBouton()
                                    DeposerWeaponBouton()
                                elseif coffre.filtre == 2 then
                                    DeposerItemBouton()
                                elseif coffre.filtre == 3 then 
                                    DeposerWeaponBouton()
                                end
                            elseif v.Settings.Filtre == false then
                                DeposerItemBouton()
                                DeposerWeaponBouton()
                            else
                                print("Filtre non définit")
                            end
                        end)
                    end
                    if RageUI.Visible(prendreMenu) then
                        attente = 6
                        RageUI.IsVisible(prendreMenu, function()
                            if v.Settings.Filtre == true then
                                RageUI.List('Filtre', {{ Name = "Tous", Value = 1 },{ Name = "Objets", Value = 2 },{ Name = "Armes", Value = 3 }}, coffre.filtre, nil, {Color = { HightLightColor = { 0, 155, 0, 150 }, BackgroundColor = { 0, 155, 0, 150 } }}, true, {
                                    onListChange = function(Index, Item)
                                        coffre.filtre = Index;
                                    end,
                                })
                                if coffre.filtre == 1 then
                                    PrendreItemBouton(itemList)
                                    PrendreWeaponBouton(weaponList)
                                elseif coffre.filtre == 2 then
                                    PrendreItemBouton(itemList)
                                elseif coffre.filtre == 3 then 
                                    PrendreWeaponBouton(weaponList)
                                end
                            elseif v.Settings.Filtre == false then
                                PrendreItemBouton(itemList)
                                PrendreWeaponBouton(weaponList)
                            else
                                print("Filtre non définit")
                            end
                        end)
                    end
                    Citizen.Wait(attente)
                end
            end
        end
    end
end



RegisterNetEvent("nth_jobs:CarBuyS")
AddEventHandler("nth_jobs:CarBuyS", function(name, coords, rotate)
    spawnVeh(name, coords, rotate)
end)