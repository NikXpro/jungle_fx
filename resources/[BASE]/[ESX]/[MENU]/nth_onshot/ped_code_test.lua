ESX = nil

local Emoticon = {
	Couleur = {
		Rouge = "🔴",
		Bleu = "🔵",
		Blanc = "⚪",
		Noir = "⚫", 
		Orange = "🟠",
		Jaune = "🟡",
		Vert = "🟢",
		Violet = "🟣",
		Maron = "🟤",
	},
	Poubelle = "🗑️",
	Donner = "📤",
	Recevoir = "📥",
	Utilliser = "✅",
	Loupe = "🔎",
	Cheval = "🐎",
	Menotte = "🔗",
	Dollard = "💲",
	Objet = "🧊",
	Reparer = "🔧",
	Netoyer = "🧼",
	Sang = "🩸",
	Droite = ">",
	Annonce = "📢",
	Pied = "👣",
	Feuille = "📃",
	Permis = "📇",
	Dossier = "📁"
}
local tatooList = {
  {
      name = "Téte",
      tatoo = {
        {name = 'MP_Buis_M_Neck_000',     nameHash = 'MP_Buis_M_Neck_000',      addedX = 0.3,     addedY=0.2,     addedZ=0.5,     rotZ = 119.4,   price = 500},
        {name = 'MP_Buis_M_Neck_001',     nameHash = 'MP_Buis_M_Neck_001',      addedX = 0.3,     addedY=-0.2,    addedZ=0.7,     rotZ = 56.9,    price = 500},
        {name = 'MP_Buis_M_Neck_002',     nameHash = 'MP_Buis_M_Neck_002',      addedX = 0.0,     addedY=0.3,     addedZ=0.6,     rotZ = 164.8,   price = 500},
        {name = 'MP_Buis_M_Neck_003',     nameHash = 'MP_Buis_M_Neck_003',      addedX = -0.3,    addedY=-0.2,    addedZ=0.6,     rotZ = -54.1,   price = 500},
        {name = 'MP_Buis_M_LeftArm_000',  nameHash = 'MP_Buis_M_LeftArm_000',   addedX = 0.3,     addedY=0.2,     addedZ=0.0,     rotZ = 115.5,   price = 500},
        {name = 'MP_Buis_M_LeftArm_001',  nameHash = 'MP_Buis_M_LeftArm_001',   addedX = -0.7,    addedY=0.1,     addedZ=0.0,     rotZ = -68.4,   price = 500},
        {name = 'MP_Buis_M_RightArm_000', nameHash = 'MP_Buis_M_RightArm_000',  addedX = 0.3,     addedY=-0.7,    addedZ=0.5,     rotZ = 17.7,    price = 500},
        {name = 'MP_Buis_M_RightArm_001', nameHash = 'MP_Buis_M_RightArm_001',  addedX = 0.3,     addedY=0.3,     addedZ=0.0,     rotZ = 145.4,   price = 500},
        {name = 'MP_Buis_M_Stomach_000',  nameHash = 'MP_Buis_M_Stomach_000',   addedX = 0.7,     addedY=0.4,     addedZ=0.3,     rotZ = 117.3,   price = 500},
        {name = 'MP_Buis_M_Chest_000',    nameHash = 'MP_Buis_M_Chest_000',     addedX = 0.7,     addedY=0.4,     addedZ=0.3,     rotZ = 117.3,   price = 500},
        {name = 'MP_Buis_M_Chest_001',    nameHash = 'MP_Buis_M_Chest_001',     addedX = 0.7,     addedY=0.4,     addedZ=0.3,     rotZ = 117.3,   price = 500},
        {name = 'MP_Buis_M_Back_000',     nameHash = 'MP_Buis_M_Back_000',      addedX = -0.7,    addedY=-0.3,    addedZ=0.3,     rotZ = -53.6,   price = 500},
        {name = 'MP_Buis_F_Chest_000',    nameHash = 'MP_Buis_F_Chest_000',     addedX = 0.5,     addedY=0.3,     addedZ=0.5,     rotZ = 124.9,   price = 500},
        {name = 'MP_Buis_F_Chest_001',    nameHash = 'MP_Buis_F_Chest_001',     addedX = 0.7,     addedY=0.4,     addedZ=0.3,     rotZ = 117.3,   price = 500},
        {name = 'MP_Buis_F_Chest_002',    nameHash = 'MP_Buis_F_Chest_002',     addedX = 0.7,     addedY=0.4,     addedZ=0.3,     rotZ = 117.3,   price = 500},
        {name = 'MP_Buis_F_Stom_000',     nameHash = 'MP_Buis_F_Stom_000',      addedX = 0.7,     addedY=0.4,     addedZ=0.2,     rotZ = 117.3,   price = 500},
        {name = 'MP_Buis_F_Stom_001',     nameHash = 'MP_Buis_F_Stom_001',      addedX = 0.7,     addedY=0.4,     addedZ=0.2,     rotZ = 117.3,   price = 500},
        {name = 'MP_Buis_F_Stom_002',     nameHash = 'MP_Buis_F_Stom_002',      addedX = 0.7,     addedY=0.4,     addedZ=0.2,     rotZ = 117.3,   price = 500},
        {name = 'MP_Buis_F_Back_000',     nameHash = 'MP_Buis_F_Back_000',      addedX = -0.4,    addedY=-0.3,    addedZ=0.2,     rotZ = 299.8,   price = 500},
        {name = 'MP_Buis_F_Back_001',     nameHash = 'MP_Buis_F_Back_001',      addedX = -0.4,    addedY=-0.3,    addedZ=0.2,     rotZ = 299.8,   price = 500},
        {name = 'MP_Buis_F_Neck_000',     nameHash = 'MP_Buis_F_Neck_000',      addedX = 0.3,     addedY=-0.4,    addedZ=0.6,     rotZ = 382.8,   price = 500},
        {name = 'MP_Buis_F_Neck_001',     nameHash = 'MP_Buis_F_Neck_001',      addedX = -0.3,    addedY=0.3,     addedZ=0.7,     rotZ = 214.2,   price = 500},
        {name = 'MP_Buis_F_RArm_000',     nameHash = 'MP_Buis_F_RArm_000',      addedX = 0.5,     addedY=0.0,     addedZ=0.0,     rotZ = 457.5,   price = 500},
        {name = 'MP_Buis_F_LArm_000',     nameHash = 'MP_Buis_F_LArm_000',      addedX = 0.2,     addedY=0.4,     addedZ=0.0,     rotZ = 472.0,   price = 500},
        {name = 'MP_Buis_F_LLeg_000',     nameHash = 'MP_Buis_F_LLeg_000',      addedX = -0.3,    addedY=-0.1,    addedZ=-0.7,    rotZ = 332.0,   price = 500},
        {name = 'MP_Buis_F_RLeg_000',     nameHash = 'MP_Buis_F_RLeg_000',      addedX = -0.4,    addedY=-0.1,    addedZ=-0.7,    rotZ = 278.0,   price = 500}
      }
  },
  {
      name = "Torse",
      tatoo = {
          {name = "coeur"},
          {name = "Fléche"}
      }
  }

}

local currentTattoos, cam, CurrentActionData = {}, -1, {}

Citizen.CreateThread(function()
  while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj)
			ESX = obj
		end)
		Citizen.Wait(10)
	end
end)

local tatooMenu = RageUI.CreateMenu("Tatoueur", "Tatoueur")
local categorie = {}
Citizen.CreateThread(function()
  for k,v in pairs(tatooList) do
    RMenu.Add(tatooMenu, v.name, RageUI.CreateSubMenu(tatooMenu, v.name, v.name))
    table.insert(categorie, v.name)
  end
end)


Citizen.CreateThread(function()
  while (true) do
    Citizen.Wait(1.0)
    

    RageUI.IsVisible(tatooMenu, function()
      for _, v in pairs(categorie) do 
        RageUI.Button(v, nil, {}, true, {onSelected = function() end}, RMenu:Get(tatooMenu, v));        
      end
    end, function()
      --Panels
    end)

    for _, b in pairs(categorie) do
      if RageUI.Visible(RMenu:Get(tatooMenu, b)) then 
        RageUI.IsVisible(RMenu:Get(tatooMenu, b), function()
          for _, d in pairs(tatooList) do
            if d.name == b then
              for _, f in pairs(d.tatoo) do
                RageUI.Button(f.name, nil, {RightLabel = ""}, true, {
                  onSelected = function()

                  end
                });
              end
            end
          end
        end, function()
          --Panels
        end)
      end
    end

  end
end)


tatooMenu.Closed = function()
  ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
		TriggerEvent('skinchanger:loadSkin', skin)
	end)
end

--Ouverture du menu
Keys.Register('F9', 'F9', 'Menu personnel.', function()
  if not RageUI.Visible() then
    RageUI.Visible(tatooMenu, not RageUI.Visible(tatooMenu))
      if RageUI.Visible(tatooMenu) then
        TriggerEvent('skinchanger:getSkin', function(skin)
        if skin.sex == 0 then
          TriggerEvent('skinchanger:loadSkin', {
            sex      = 0,
            tshirt_1 = 14,
            tshirt_2 = 0,
            arms     = 15,
            torso_1  = 91,
            torso_2  = 0,
            pants_1  = 61,
            pants_2  = 0,
            bproof_1 = 0,
            bproof_2 = 0,
            shoes_1 = 35,
            shoes_2 = 0,
            helmet_1 = -1,
            helmet_2 = 0,
            bags_1 = 0,
            bags_2 = 0,
            chain_1 = 0,
            chain_2 = 0
          })
        else
          TriggerEvent('skinchanger:loadSkin', {
            sex      = 1,
            tshirt_1 = 14,
            tshirt_2 = 0,
            arms     = 15,
            torso_1  = 101,
            torso_2  = 1,
            pants_1  = 56,
            pants_2  = 1,
            bproof_1 = 0,
            bproof_2 = 0,
            shoes_1 = 35,
            shoes_2 = 0,
            helmet_1 = -1,
            helmet_2 = 0,
            bags_1 = 0,
            bags_2 = 0,
            chain_1 = 0,
            chain_2 = 0
          })
        end
      end)
    end
  end
end)