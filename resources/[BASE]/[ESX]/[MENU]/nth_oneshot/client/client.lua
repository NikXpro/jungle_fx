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
	Droite = "→",
	Annonce = "📢",
	Pied = "👣",
	Feuille = "📃",
	Permis = "📇",
	Dossier = "📁",
  Save = "💾",
  Tourne = "♻️"
}

local pedslist = {
  {
    name = "Femme ambiente",
    list = {
      {hash = "a_f_m_beach_01"},
      {hash = "a_f_m_bevhills_01"},
      {hash = "a_f_m_bevhills_02"},
      {hash = "a_f_m_bodybuild_0"},
      {hash = "a_f_m_business_02"},
      {hash = "a_f_m_downtown_01"},
      {hash = "a_f_m_eastsa_01"},
      {hash = "a_f_m_eastsa_02"},
      {hash = "a_f_m_fatbla_01"},
      {hash = "a_f_m_fatcult_01"},
      {hash = "a_f_m_fatwhite_01"},
      {hash = "a_f_m_ktown_01"},
      {hash = "a_f_m_ktown_02"},
      {hash = "a_f_m_prolhost_01"},
      {hash = "a_f_m_salton_01"},
      {hash = "a_f_m_skidrow_01"},
      {hash = "a_f_m_soucent_01"},
      {hash = "a_f_m_soucent_02"},
      {hash = "a_f_m_soucentmc_01"},
      {hash = "a_f_m_tourist_01"},
      {hash = "a_f_m_tramp_01"},
      {hash = "a_f_m_trampbeac_01"},
      {hash = "a_f_o_genstreet_01"},
      {hash = "a_f_o_indian_01"},
      {hash = "a_f_o_ktown_01"},
      {hash = "a_f_o_salton_01"},
      {hash = "a_f_o_soucent_01"},
      {hash = "a_f_o_soucent_02"},
      {hash = "a_f_y_beach_01"},
      {hash = "a_f_y_bevhills_01"},
      {hash = "a_f_y_bevhills_02"},
      {hash = "a_f_y_bevhills_03"},
      {hash = "a_f_y_bevhills_04"},
      {hash = "a_f_y_business_01"},
      {hash = "a_f_y_business_02"},
      {hash = "a_f_y_business_03"},
      {hash = "a_f_y_business_04"},
      {hash = "a_f_y_clubcust_01"},
      {hash = "a_f_y_clubcust_02"},
      {hash = "a_f_y_clubcust_03"},
      {hash = "a_f_y_eastsa_01"},
      {hash = "a_f_y_eastsa_02"},
      {hash = "a_f_y_eastsa_03"},
      {hash = "a_f_y_epsilon_01"},
      {hash = "a_f_y_femaleagent"},
      {hash = "a_f_y_fitness_01"},
      {hash = "a_f_y_fitness_02"},
      {hash = "a_f_y_genhot_01"},
      {hash = "a_f_y_golfer_01"},
      {hash = "a_f_y_hiker_01"},
      {hash = "a_f_y_hippie_01"},
      {hash = "a_f_y_hipster_01"},
      {hash = "a_f_y_hipster_02"},
      {hash = "a_f_y_hipster_03"},
      {hash = "a_f_y_hipster_04"},
      {hash = "a_f_y_indian_01"},
      {hash = "a_f_y_juggalo_01"},
      {hash = "a_f_y_runner_01"},
      {hash = "a_f_y_rurmeth_01"},
      {hash = "a_f_y_scdressy_01"},
      {hash = "a_f_y_skater_01"},
      {hash = "a_f_y_soucent_01"},
      {hash = "a_f_y_soucent_02"},
      {hash = "a_f_y_soucent_03"},
      {hash = "a_f_y_tennis_01"},
      {hash = "a_f_y_topless_01"},
      {hash = "a_f_y_tourist_01"},
      {hash = "a_f_y_tourist_02"},
      {hash = "a_f_y_vinewood_01"},
      {hash = "a_f_y_vinewood_02"},
      {hash = "a_f_y_vinewood_03"},
      {hash = "a_f_y_vinewood_04"},
      {hash = "a_f_y_yoga_01"},
      {hash = "a_f_y_gencaspat_01"},
      {hash = "a_f_y_smartcaspat_01"}
    }
  },
  {
    name = "Homme ambiente",
    list = {
      {hash = "a_m_m_acult_01"},
      {hash = "a_m_m_afriamer_01"},
      {hash = "a_m_m_beach_01"},
      {hash = "a_m_m_beach_02"},
      {hash = "a_m_m_bevhills_01"},
      {hash = "a_m_m_bevhills_02"},
      {hash = "a_m_m_business_01"},
      {hash = "a_m_m_eastsa_01"},
      {hash = "a_m_m_eastsa_02"},
      {hash = "a_m_m_farmer_01"},
      {hash = "a_m_m_fatlatin_01"},
      {hash = "a_m_m_genfat_01"},
      {hash = "a_m_m_genfat_02"},
      {hash = "a_m_m_golfer_01"},
      {hash = "a_m_m_hasjew_01"},
      {hash = "a_m_m_hillbilly_01"},
      {hash = "a_m_m_hillbilly_02"},
      {hash = "a_m_m_indian_01"},
      {hash = "a_m_m_ktown_01"},
      {hash = "a_m_m_malibu_01"},
      {hash = "a_m_m_mexcntry_01"},
      {hash = "a_m_m_mexlabor_01"},
      {hash = "a_m_m_og_boss_01"},
      {hash = "a_m_m_paparazzi_01"},
      {hash = "a_m_m_polynesian_01"},
      {hash = "a_m_m_prolhost_01"},
      {hash = "a_m_m_rurmeth_01"},
      {hash = "a_m_m_salton_01"},
      {hash = "a_m_m_salton_02"},
      {hash = "a_m_m_salton_03"},
      {hash = "a_m_m_salton_04"},
      {hash = "a_m_m_skater_01"},
      {hash = "a_m_m_skidrow_01"},
      {hash = "a_m_m_socenlat_01"},
      {hash = "a_m_m_soucent_01"},
      {hash = "a_m_m_soucent_02"},
      {hash = "a_m_m_soucent_03"},
      {hash = "a_m_m_soucent_04"},
      {hash = "a_m_m_stlat_02"},
      {hash = "a_m_m_tennis_01"},
      {hash = "a_m_m_tourist_01"},
      {hash = "a_m_m_tramp_01"},
      {hash = "a_m_m_trampbeac_01"},
      {hash = "a_m_m_tranvest_01"},
      {hash = "a_m_m_tranvest_02"},
      {hash = "a_m_o_acult_01"},
      {hash = "a_m_o_acult_02"},
      {hash = "a_m_o_beach_01"},
      {hash = "a_m_o_genstreet_0"},
      {hash = "a_m_o_ktown_01"},
      {hash = "a_m_o_salton_01"},
      {hash = "a_m_o_soucent_01"},
      {hash = "a_m_o_soucent_02"},
      {hash = "a_m_o_soucent_03"},
      {hash = "a_m_o_tramp_01"},
      {hash = "a_m_y_acult_01"},
      {hash = "a_m_y_acult_02"},
      {hash = "a_m_y_beach_01"},
      {hash = "a_m_y_beach_02"},
      {hash = "a_m_y_beach_03"},
      {hash = "a_m_y_beachvesp_01"},
      {hash = "a_m_y_beachvesp_02"},
      {hash = "a_m_y_bevhills_01"},
      {hash = "a_m_y_bevhills_02"},
      {hash = "a_m_y_breakdance_01"},
      {hash = "a_m_y_busicas_01"},
      {hash = "a_m_y_business_01"},
      {hash = "a_m_y_business_02"},
      {hash = "a_m_y_business_03"},
      {hash = "a_m_y_clubcust_01"},
      {hash = "a_m_y_clubcust_02"},
      {hash = "a_m_y_clubcust_03"},
      {hash = "a_m_y_cyclist_01"},
      {hash = "a_m_y_dhill_01"},
      {hash = "a_m_y_downtown_01"},
      {hash = "a_m_y_eastsa_01"},
      {hash = "a_m_y_eastsa_02"},
      {hash = "a_m_y_epsilon_01"},
      {hash = "a_m_y_epsilon_02"},
      {hash = "a_m_y_gay_01"},
      {hash = "a_m_y_gay_02"},
      {hash = "a_m_y_genstreet_01"},
      {hash = "a_m_y_genstreet_02"},
      {hash = "a_m_y_golfer_01"},
      {hash = "a_m_y_hasjew_01"},
      {hash = "a_m_y_hiker_01"},
      {hash = "a_m_y_hippy_01"},
      {hash = "a_m_y_hipster_01"},
      {hash = "a_m_y_hipster_02"},
      {hash = "a_m_y_hipster_03"},
      {hash = "a_m_y_indian_01"},
      {hash = "a_m_y_jetski_01"},
      {hash = "a_m_y_juggalo_01"},
      {hash = "a_m_y_ktown_01"},
      {hash = "a_m_y_ktown_02"},
      {hash = "a_m_y_latino_01"},
      {hash = "a_m_y_methhead_01"},
      {hash = "a_m_y_mexthug_01"},
      {hash = "a_m_y_motox_01"},
      {hash = "a_m_y_motox_02"},
      {hash = "a_m_y_musclbeac_01"},
      {hash = "a_m_y_musclbeac_02"},
      {hash = "a_m_y_polynesian_01"},
      {hash = "a_m_y_roadcyc_01"},
      {hash = "a_m_y_runner_01"},
      {hash = "a_m_y_runner_02"},
      {hash = "a_m_y_salton_01"},
      {hash = "a_m_y_skater_01"},
      {hash = "a_m_y_skater_02"},
      {hash = "a_m_y_soucent_01"},
      {hash = "a_m_y_soucent_02"},
      {hash = "a_m_y_soucent_03"},
      {hash = "a_m_y_soucent_04"},
      {hash = "a_m_y_stbla_01"},
      {hash = "a_m_y_stbla_02"},
      {hash = "a_m_y_stlat_01"},
      {hash = "a_m_y_stwhi_01"},
      {hash = "a_m_y_stwhi_02"},
      {hash = "a_m_y_sunbathe_01"},
      {hash = "a_m_y_surfer_01"},
      {hash = "a_m_y_vindouche_01"},
      {hash = "a_m_y_vinewood_01"},
      {hash = "a_m_y_vinewood_02"},
      {hash = "a_m_y_vinewood_03"},
      {hash = "a_m_y_vinewood_04"},
      {hash = "a_m_y_yoga_01"},
      {hash = "a_m_m_mlcrisis_01"},
      {hash = "a_m_y_gencaspat_01"},
      {hash = "a_m_y_smartcaspat_01"}
    }
  },
  {
    name = "Animal",
    list = {
      {hash = "a_c_boar"},
      {hash = "a_c_cat_01"},
      {hash = "a_c_chimp"},
      {hash = "a_c_chop"},
      {hash = "a_c_cow"},
      {hash = "a_c_coyote"},
      {hash = "a_c_crow"},
      {hash = "a_c_deer"},
      {hash = "a_c_mtlion"},
      {hash = "a_c_pig"},
      {hash = "a_c_pigeon"},
      {hash = "a_c_poodle"},
      {hash = "a_c_pug"},
      {hash = "a_c_rat"},
      {hash = "a_c_retriever"},
      {hash = "a_c_rottweiler"},
      {hash = "a_c_shepherd"},
      {hash = "a_c_westy"}
    }
  },
  {
    name = "Cutscene",
    list = {
      {hash = "csb_denise_friend"},
      {hash = "csb_sol"},
      {hash = "csb_talmm"}
    }
  },
  {
    name = "Gang femme",
    list = {
      {hash = "g_f_importexport_01"},
      {hash = "g_f_y_ballas_01"},
      {hash = "g_f_y_families_01"},
      {hash = "g_f_y_lost_01"},
      {hash = "g_f_y_vagos_01"}

    }
  },
  {
    name = "Gang Homme",
    list = {
      {hash = "csb_ballasog"},
      {hash = "csb_g"},
      {hash = "csb_grove_str_dlr"},
      {hash = "csb_ramp_gang"},
      {hash = "g_m_importexport_01"},
      {hash = "g_m_m_chicold_01"},
      {hash = "g_m_y_ballaeast_01"},
      {hash = "g_m_y_ballaorig_01"},
      {hash = "g_m_y_ballasout_01"},
      {hash = "g_m_y_famca_01"},
      {hash = "g_m_y_famdnf_01"},
      {hash = "g_m_y_famfor_01"},
      {hash = "g_m_y_mexgang_02"},
      {hash = "g_m_y_mexgoon_03"},
      {hash = "g_m_y_pologoon_01"}, 
      {hash = "g_m_y_pologoon_02"}, 
      {hash = "g_m_y_salvaboss_01"}, 
      {hash = "g_m_y_salvagoon_01"}, 
      {hash = "g_m_y_salvagoon_02"}, 
      {hash = "g_m_y_salvagoon_03"}, 
      {hash = "g_m_y_strpunk_01"}, 
      {hash = "g_m_y_strpunk_02"}, 
      {hash = "g_m_m_casrn_01"}
    }
  },
  {
    name = "Perso Multijoueur",
    list = {
      {hash = "mp_m_securoguard_01"},
      {hash = "mp_m_waremech_01"},
      {hash = "mp_m_weapexp_01"},
      {hash = "mp_m_weed_01"},
      {hash = "mp_f_weed_01"}
    }
  },
  {
    name = "Sénario Femme",
    list = {
      {hash = "s_f_m_maid_01"},
      {hash = "s_f_y_airhostess_01"},
      {hash = "s_f_y_cop_01"},
      {hash = "s_f_y_factory_01"},
      {hash = "s_f_y_scrubs_01"},
      {hash = "s_f_y_casino_01"}
    }
  },
  {
    name = "Scénario Homme",
    list = {
      {hash = "s_m_m_armoured_01"},
      {hash = "s_m_m_armoured_02"},
      {hash = "s_m_m_bouncer_01"},
      {hash = "s_m_m_chemsec_01"},
      {hash = "s_m_m_dockwork_01"},
      {hash = "s_m_m_fiboffice_01"},
      {hash = "s_m_m_fibsec_01"},
      {hash = "s_m_m_gentransport"},
      {hash = "s_m_m_highsec_01"},
      {hash = "s_m_m_highsec_02"},
      {hash = "s_m_m_janitor"},
      {hash = "s_m_m_lathandy_01"},
      {hash = "s_m_m_lsmetro_01"},
      {hash = "s_m_m_mariachi_01"}, 
      {hash = "s_m_m_marine_01"}, 
      {hash = "s_m_m_marine_02"}, 
      {hash = "s_m_m_pilot_02"}, 
      {hash = "s_m_m_prisguard_01"}, 
      {hash = "s_m_m_security_01"}, 
      {hash = "s_m_m_snowcop_01"}, 
      {hash = "s_m_y_armymech_01"}, 
      {hash = "s_m_y_blackops_01"}, 
      {hash = "s_m_y_chef_01"}, 
      {hash = "s_m_y_busboy_01"}, 
      {hash = "s_m_y_cop_01"}, 
      {hash = "s_m_y_dealer_01"}, 
      {hash = "s_m_y_doorman_01"}, 
      {hash = "s_m_y_marine_02"}, 
      {hash = "s_m_y_prismuscl_01"}, 
      {hash = "s_m_y_ranger_01"}
    }
  },
  {
    name = "Histoire",
    list = {
      {hash = "hc_driver"},
      {hash = "ig_andreas"},
      {hash = "ig_bankman"},
      {hash = "ig_benny"},
      {hash = "ig_casey"},
      {hash = "ig_car3guy1"},
      {hash = "ig_car3guy2"},
      {hash = "ig_claypain"},
      {hash = "ig_devin"},
      {hash = "ig_djblamrupert"},
      {hash = "ig_djgeneric_01"},
      {hash = "ig_djsoljakob"},
      {hash = "ig_djtalignazio"},
      {hash = "ig_fbisuit_01"},
      {hash = "ig_groom"},
      {hash = "ig_jay_norris"},
      {hash = "ig_jewelass"},
      {hash = "g_karen_daniels"},
      {hash = "ig_lifeinvad_01"},
      {hash = "ig_lifeinvad_02"},
      {hash = "ig_mrk"},
      {hash = "ig_mp_agent14"},
      {hash = "ig_ortega"},
      {hash = "ig_ramp_mex"},
      {hash = "ig_stretch"},
      {hash = "ig_talmm"},
      {hash = "ig_trafficwarden"}
    }
  },
  {
    name = "Histoire scénario Femme",
    list = {
      {hash = "u_f_m_miranda_02"},
      {hash = "u_f_m_miranda"},
      {hash = "u_f_o_prolhost_01"},
      {hash = "u_f_y_princess"},
      {hash = "u_f_y_spyactress"},
      {hash = "u_f_m_casinocash_01"},
      {hash = "u_f_m_casinoshop_01"},
      {hash = "u_f_m_debbie_01"},
      {hash = "u_f_y_taylor"}
    }
  },
  {
    name = "Histoire scénario Homme",
    list = {
      {hash = "u_m_m_bankman"},
      {hash = "u_m_m_doa_01"},
      {hash = "u_m_m_jesus_01"},
      {hash = "u_m_m_jewelsec_01"},
      {hash = "u_m_m_jewelthief"},
      {hash = "u_m_m_rivalpap"},
      {hash = "u_m_o_finguru_01"},
      {hash = "u_m_o_taphillbilly"},
      {hash = "u_m_o_tramp_01"},
      {hash = "u_m_y_baygor"},
      {hash = "u_m_y_burgerdrug_01"},
      {hash = "u_m_y_chip"},
      {hash = "u_m_y_fibmugger_01"},
      {hash = "u_m_y_militarybum"},
      {hash = "u_m_y_party_01"},
      {hash = "u_m_y_prisoner_01"},
      {hash = "u_m_y_proldriver_01"},
      {hash = "u_m_y_sbike"},
      {hash = "u_m_y_smugmech_01"},
      {hash = "u_m_y_tattoo_01"},
      {hash = "u_m_m_curtis"},
      {hash = "u_m_y_croupthief_01"}
    }
  }
}

local OM = {
  pedsSection = 1,
  freemodeSection = 1,
  Confimation = 0,
  SaveSection = 1,
  group = "user"
}

Citizen.CreateThread(function()
  while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj)
			ESX = obj
		end)
		Citizen.Wait(10)
	end
end)

RegisterNetEvent('nth_admin:Returngroup')
AddEventHandler('nth_admin:Returngroup', function(group)
  OM.group = group
end)

function GetData()
  ESX.TriggerServerCallback('nth:getSaveList', function(list)
    ListPeds = list
  end)
end

local oneshotMenu = RageUI.CreateMenu("", "Oneshot")
local pedsMenu = RageUI.CreateSubMenu(oneshotMenu, "", "Oneshot")
local freemodeMenu = RageUI.CreateSubMenu(oneshotMenu, "", "Oneshot")
local settingsMenu = RageUI.CreateSubMenu(oneshotMenu, "", "Oneshot")

local categorie = {}

Citizen.CreateThread(function()
  for k,v in pairs(pedslist) do
    RMenu.Add(pedsMenu, v.name, RageUI.CreateSubMenu(pedsMenu, "", v.name))
    table.insert(categorie, v.name)
  end
end)


Citizen.CreateThread(function()
  while (true) do
    local attente = 500
    if RageUI.Visible(oneshotMenu) then 
      attente = 6
      RageUI.IsVisible(oneshotMenu, function()
        RageUI.Button("Peds", nil, {RightLabel = Emoticon.Droite}, true, {onSelected = function() GetData() Wait(100) end}, pedsMenu);
        RageUI.Button("Freemode", nil, {RightLabel = Emoticon.Droite}, true, {onSelected = function()  GetData() Wait(100) end}, freemodeMenu);
        RageUI.Button("Paramétre", nil, {RightLabel = Emoticon.Droite}, true, {onSelected = function() end}, settingsMenu);
      end, function()
      end)
    end

    if RageUI.Visible(settingsMenu) then 
      attente = 6
      RageUI.IsVisible(settingsMenu, function()
        RageUI.Button("Sauvegarder personnage principal", Description, {RightLabel = Emoticon.Save}, true, {
          onSelected = function()
            if Confimation == 1 then
              TriggerEvent('skinchanger:getSkin', function(skin)
                TriggerServerEvent('nth:savePersonnage', "default", skin, "Skin par defaut")
              end) 
              Description = nil
              Confimation = 0
            else
              Description = "                      ~r~⚠️ Attention ⚠️\n    Vous ne pourrez plus récupérer votre\n ancienne apparence apres cette action.~w~\n\n    Appuyer sur ENTRER pour confirmer !\n"
              Confimation = 1
            end
          end
        });
        
      end, function()
      end)
    end

    if RageUI.Visible(freemodeMenu) then 
      attente = 6
      RageUI.IsVisible(freemodeMenu, function()
        RageUI.List('Section', {
          { Name = "Sauvegarde", Value = 1 },
          { Name = "Création", Value = 2 }
        }, OM.freemodeSection, nil, {}, true, {
          onListChange = function(Index, Item)
            OM.freemodeSection = Index;
          end
        })
        if OM.freemodeSection == 1 then
          RageUI.Button("Restorer l'apparence", nil, {RightLabel = Emoticon.Tourne}, true, {
            onSelected = function()
              ESX.TriggerServerCallback('nth:restoreSkin', function(skin)
                local isMale = skin.sex == 0
                TriggerEvent('skinchanger:loadDefaultModel', isMale, function()
                  skin = skin
                  TriggerEvent('skinchanger:loadSkin', skin)
                end)
                Wait(100)
                TriggerEvent('skinchanger:loadDefaultModel', isMale, function()
                  skin = skin
                  TriggerEvent('skinchanger:loadSkin', skin)
                end)
              end)
              ESX.ShowNotification('Apparence restorer !')
            end
          });
          RageUI.Button("Sauvegarder le personnage", nil, {RightLabel = Emoticon.Save}, true, {
            onSelected = function()
              local name = KeyboardInput("Nom du personnage", '', 20)
              if not name ~= nil or "" or "nil" then
                local skin = GetEntityModel(PlayerPedId())
                if skin == 1885233650 or skin == -1667301416 then
                  TriggerEvent('skinchanger:getSkin', function(skin)
                    TriggerServerEvent('nth:savePersonnage', "freemode", skin, name)
                    ESX.ShowNotification('Peds sauvegarder avec succés !')
                    GetData()
                  end)
                else
                  ESX.ShowNotification("~r~Votre personnage n'est pas un peds !")
                end
              else
                ESX.ShowNotification("~r~Vous devez spécifier le nom de votre personnage !")
              end
            end
          });
          RageUI.Separator("   ===========================================")
          for i=1, #ListPeds, 1 do
            if ListPeds[i].type == "freemode" then
              RageUI.List(ListPeds[i].name, {
                  { Name = "Utilliser", Value = 1 },
                  { Name = "Renomer", Value = 2 },
                  { Name = "Supprimer", Value = 3 }
                }, OM.SaveSection, nil, {}, true, {
                onListChange = function(Index, Item)
                  OM.SaveSection = Index;
                end,
                onSelected = function(Index, Item)
                  if OM.SaveSection == 1 then
                    local xPlayer = PlayerId()
                    local skin = json.decode(ListPeds[i].skin)
                    local isMale = skin.sex == 0
                    Wait(100)
                    if skin.sex == 0 then
                      TriggerEvent('skinchanger:loadDefaultModel', isMale, function()
                        skin = skin
                        TriggerEvent('skinchanger:loadSkin', skin)
                      end)
                      Wait(150)
                      TriggerEvent('skinchanger:loadDefaultModel', isMale, function()
                        skin = skin
                        TriggerEvent('skinchanger:loadSkin', skin)
                      end)
                    else
                      TriggerEvent('skinchanger:loadDefaultModel', isMale, function()
                        skin = skin
                        TriggerEvent('skinchanger:loadSkin', skin)
                      end)
                      Wait(150)
                      TriggerEvent('skinchanger:loadDefaultModel', isMale, function()
                        skin = skin
                        TriggerEvent('skinchanger:loadSkin', skin)
                      end)
                    end
   				          ESX.ShowNotification('Skin changer !')
                  elseif OM.SaveSection == 2 then 
                    local newName = KeyboardInput("Nouveau nom", '', 20)
                    TriggerServerEvent("nth:saveRename", ListPeds[i].id, newName)
                    GetData()
                  elseif OM.SaveSection == 3 then 
                    TriggerServerEvent("nth:saveDelete", ListPeds[i].id)
                    GetData()
                  end
                end,
              })
            end
          end
        elseif OM.freemodeSection == 2 then
          RageUI.Button("Créer un personnage", nil, {RightLabel = "✏️"}, true, {
            onSelected = function()
              ExecuteCommand("skin")
              RageUI.CloseAll()
            end
          });
        end  
      end, function()
      end)
    end

    if RageUI.Visible(pedsMenu) then 
      attente = 6
      RageUI.IsVisible(pedsMenu, function()
        RageUI.List('Section', {
            { Name = "Sauvegarde", Value = 1 },
            { Name = "List", Value = 2 }
          }, OM.pedsSection, nil, {}, true, {
          onListChange = function(Index, Item)
            OM.pedsSection = Index;
          end
        })
        if OM.pedsSection == 1 then
          RageUI.Button("Restorer l'apparence", nil, {RightLabel = Emoticon.Tourne}, true, {
            onSelected = function()
              ESX.TriggerServerCallback('nth:restoreSkin', function(skin)
                local isMale = skin.sex == 0
                TriggerEvent('skinchanger:loadDefaultModel', isMale, function()
                  skin = skin
                  TriggerEvent('skinchanger:loadSkin', skin)
                end)
                Wait(100)
                TriggerEvent('skinchanger:loadDefaultModel', isMale, function()
                  skin = skin
                  TriggerEvent('skinchanger:loadSkin', skin)
                end)
              end)
              ESX.ShowNotification('Apparence restorer !')
            end
          });
          RageUI.Button("Sauvegarder un peds", nil, {RightLabel = Emoticon.Save}, true, {
            onSelected = function()
              local name = KeyboardInput("Nom du personnage", '', 20)
              if not name ~= nil or "" or "nil" then
                local skin = GetEntityModel(PlayerPedId())
                if skin == 1885233650 or skin == -1667301416 then
                  ESX.ShowNotification("~r~Votre personnage n'est pas un peds !")
                else
                  TriggerServerEvent('nth:savePersonnage', "ped", skin, name)
                  GetData()
                  ESX.ShowNotification('Peds sauvegarder avec succés !')
                end
              else
                ESX.ShowNotification("~r~Vous devez spécifier le nom de votre personnage !")
              end
            end
          });
          RageUI.Separator("   ===========================================")
          for i=1, #ListPeds, 1 do
            if ListPeds[i].type == "ped" then
              RageUI.List(ListPeds[i].name, {
                  { Name = "Utilliser", Value = 1 },
                  { Name = "Renomer", Value = 2 },
                  { Name = "Supprimer", Value = 3 }
                }, OM.SaveSection, nil, {}, true, {
                onListChange = function(Index, Item)
                  OM.SaveSection = Index;
                end,
                onSelected = function(Index, Item)
                  if OM.SaveSection == 1 then
                    local xPlayer = PlayerId()
                    local xPed = ListPeds[i].skin
                    local Skin = tonumber(xPed)
                    RequestModel(Skin)
                    while not HasModelLoaded(Skin) do
                      Wait(100)
                    end
                    SetPlayerModel(xPlayer, Skin)
                    SetModelAsNoLongerNeeded(Skin)
   				          ESX.ShowNotification('Skin changer !')
                  elseif OM.SaveSection == 2 then 
                    local newName = KeyboardInput("Nouveau nom", '', 20)
                    TriggerServerEvent("nth:saveRename", ListPeds[i].id, newName)
                    GetData()
                  elseif OM.SaveSection == 3 then 
                    TriggerServerEvent("nth:saveDelete", ListPeds[i].id)
                    GetData()
                  end
                end,
              })
            end
          end

        elseif OM.pedsSection == 2 then
          RageUI.Button("Nom custome", nil, {RightLabel = "✏️"}, true, {
            onSelected = function()
              local skinName = KeyboardInput("Ped hash", '', 20)
              local xPlayer = PlayerId()
              local xPeds = GetHashKey(skinName)
              RequestModel(xPeds)
              while not HasModelLoaded(xPeds) do
                Wait(100)
              end
              SetPlayerModel(xPlayer, xPeds)
              SetModelAsNoLongerNeeded(xPeds)
              ESX.ShowNotification('Skin changer en ~r~' .. skinName)
            end
          });
          for _, v in pairs(categorie) do 
            RageUI.Button(v, nil, {RightLabel = Emoticon.Loupe}, true, {onSelected = function() end}, RMenu:Get(pedsMenu, v));     
          end
        end  
      end, function()
      end)
    end

    for _, b in pairs(categorie) do
      if RageUI.Visible(RMenu:Get(pedsMenu, b)) then
        attente = 6
        RageUI.IsVisible(RMenu:Get(pedsMenu, b), function()
          for _, d in pairs(pedslist) do
            if d.name == b then
              for _, f in pairs(d.list) do
                RageUI.Button(f.hash, nil, {RightLabel = "🔄"}, true, {
                  onSelected = function()
                    local xPlayer = PlayerId()
    			          local xPeds = GetHashKey(f.hash)
    			          RequestModel(xPeds)
    			          while not HasModelLoaded(xPeds) do
      		    	      Wait(250)
   				          end
   				          SetPlayerModel(xPlayer, xPeds)
   				          SetModelAsNoLongerNeeded(xPeds)
   				          ESX.ShowNotification('Skin changer en ~r~' .. f.hash)
                  end
                });
              end
            end
          end
        end, function()
        end)
      end
    end
    Citizen.Wait(attente)
  end
end)

--Ouverture du menu
Keys.Register('', '', 'Menu personnage one-shot.', function()
  ESX.TriggerServerCallback('nth:Usergroup', function(plyGroup)
		if plyGroup ~= nil and (plyGroup == 'admin' or plyGroup == 'superadmin' or plyGroup == 'owner' or plyGroup == '_dev') then
			ESX.TriggerServerCallback('nth:getSaveList', function(list)
        ListPeds = list
      end)
      RageUI.Visible(oneshotMenu, not RageUI.Visible(oneshotMenu))
		else
			ESX.ShowNotification('Vous devez être ~r~Admin ~w~pour ouvrir accédées à ce menu.')
		end
	end)
end)

RegisterCommand('oneshot', function(source)
  ESX.TriggerServerCallback('nth:Usergroup', function(plyGroup)
		if plyGroup ~= nil and (plyGroup == 'admin' or plyGroup == 'superadmin' or plyGroup == '_dev') then
			ESX.TriggerServerCallback('nth:getSaveList', function(list)
        ListPeds = list
      end)
      RageUI.Visible(oneshotMenu, not RageUI.Visible(oneshotMenu))
		else
			ESX.ShowNotification('Vous devez être ~r~Admin ~w~pour ouvrir accédées à ce menu.')
		end
	end)
end, false)



RegisterCommand("spawn", function(source, args, rawcommand)
  local ped = PlayerPedId()
  local pos, heading = GetEntityCoords(ped), GetEntityHeading(ped)
  local modelName = args[1]
  RequestModel(modelName)
  CreatePed(9, modelName, pos, heading, false, 1)
end, false)

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