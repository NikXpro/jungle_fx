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

local FoundObjects = {
	{HashIs = -1267889684, ModNam = '02gate3_l'},
  {HashIs = -832573324, ModNam = 'a_c_boar'},
  {HashIs = 1462895032, ModNam = 'a_c_cat_01'},
  {HashIs = -1430839454, ModNam = 'a_c_chickenhawk'},
  {HashIs = -1469565163, ModNam = 'a_c_chimp'},
  {HashIs = 351016938, ModNam = 'a_c_chop'},
  {HashIs = 1457690978, ModNam = 'a_c_cormorant'},
  {HashIs = -50684386, ModNam = 'a_c_cow'},
  {HashIs = 1682622302, ModNam = 'a_c_coyote'},
  {HashIs = 402729631, ModNam = 'a_c_crow'},
  {HashIs = -664053099, ModNam = 'a_c_deer'},
  {HashIs = -1950698411, ModNam = 'a_c_dolphin'},
  {HashIs = 802685111, ModNam = 'a_c_fish'},
  {HashIs = 1794449327, ModNam = 'a_c_hen'},
  {HashIs = 1193010354, ModNam = 'a_c_humpback'},
  {HashIs = 1318032802, ModNam = 'a_c_husky'},
  {HashIs = -1920284487, ModNam = 'a_c_killerwhale'},
  {HashIs = 307287994, ModNam = 'a_c_mtlion'},
  {HashIs = -1323586730, ModNam = 'a_c_pig'},
  {HashIs = 111281960, ModNam = 'a_c_pigeon'},
  {HashIs = 1125994524, ModNam = 'a_c_poodle'},
  {HashIs = 1832265812, ModNam = 'a_c_pug'},
  {HashIs = -541762431, ModNam = 'a_c_rabbit_01'},
  {HashIs = -1011537562, ModNam = 'a_c_rat'},
  {HashIs = 882848737, ModNam = 'a_c_retriever'},
  {HashIs = -1026527405, ModNam = 'a_c_rhesus'},
  {HashIs = -1788665315, ModNam = 'a_c_rottweiler'},
  {HashIs = -745300483, ModNam = 'a_c_seagull'},
  {HashIs = 1015224100, ModNam = 'a_c_sharkhammer'},
  {HashIs = 113504370, ModNam = 'a_c_sharktiger'},
  {HashIs = 1126154828, ModNam = 'a_c_shepherd'},
  {HashIs = -1589092019, ModNam = 'a_c_stingray'},
  {HashIs = -1384627013, ModNam = 'a_c_westy'},
  {HashIs = 808859815, ModNam = 'a_f_m_beach_01'},
  {HashIs = -1106743555, ModNam = 'a_f_m_bevhills_01'},
  {HashIs = -1606864033, ModNam = 'a_f_m_bevhills_02'},
  {HashIs = 1004114196, ModNam = 'a_f_m_bodybuild_01'},
  {HashIs = 532905404, ModNam = 'a_f_m_business_02'},
  {HashIs = 1699403886, ModNam = 'a_f_m_downtown_01'},
  {HashIs = -1656894598, ModNam = 'a_f_m_eastsa_01'},
  {HashIs = 1674107025, ModNam = 'a_f_m_eastsa_02'},
  {HashIs = -88831029, ModNam = 'a_f_m_fatbla_01'},
  {HashIs = -1244692252, ModNam = 'a_f_m_fatcult_01'},
  {HashIs = 951767867, ModNam = 'a_f_m_fatwhite_01'},
  {HashIs = 1388848350, ModNam = 'a_f_m_ktown_01'},
  {HashIs = 1090617681, ModNam = 'a_f_m_ktown_02'},
  {HashIs = 379310561, ModNam = 'a_f_m_prolhost_01'},
  {HashIs = -569505431, ModNam = 'a_f_m_salton_01'},
  {HashIs = -1332260293, ModNam = 'a_f_m_skidrow_01'},
  {HashIs = 1951946145, ModNam = 'a_f_m_soucent_01'},
  {HashIs = -215821512, ModNam = 'a_f_m_soucent_02'},
  {HashIs = -840346158, ModNam = 'a_f_m_soucentmc_01'},
  {HashIs = 1347814329, ModNam = 'a_f_m_tourist_01'},
  {HashIs = 1224306523, ModNam = 'a_f_m_tramp_01'},
  {HashIs = -1935621530, ModNam = 'a_f_m_trampbeac_01'},
  {HashIs = 1640504453, ModNam = 'a_f_o_genstreet_01'},
  {HashIs = -1160266880, ModNam = 'a_f_o_indian_01'},
  {HashIs = 1204772502, ModNam = 'a_f_o_ktown_01'},
  {HashIs = -855671414, ModNam = 'a_f_o_salton_01'},
  {HashIs = 1039800368, ModNam = 'a_f_o_soucent_01'},
  {HashIs = -1519524074, ModNam = 'a_f_o_soucent_02'},
  {HashIs = -945854168, ModNam = 'a_f_y_beach_01'},
  {HashIs = 1146800212, ModNam = 'a_f_y_bevhills_01'},
  {HashIs = 1546450936, ModNam = 'a_f_y_bevhills_02'},
  {HashIs = 549978415, ModNam = 'a_f_y_bevhills_03'},
  {HashIs = 920595805, ModNam = 'a_f_y_bevhills_04'},
  {HashIs = 664399832, ModNam = 'a_f_y_business_01'},
  {HashIs = 826475330, ModNam = 'a_f_y_business_02'},
  {HashIs = -1366884940, ModNam = 'a_f_y_business_03'},
  {HashIs = -1211756494, ModNam = 'a_f_y_business_04'},
  {HashIs = -173013091, ModNam = 'a_f_y_eastsa_01'},
  {HashIs = 70821038, ModNam = 'a_f_y_eastsa_02'},
  {HashIs = 1371553700, ModNam = 'a_f_y_eastsa_03'},
  {HashIs = 1755064960, ModNam = 'a_f_y_epsilon_01'},
  {HashIs = 1348537411, ModNam = 'a_f_y_femaleagent'},
  {HashIs = 1165780219, ModNam = 'a_f_y_fitness_01'},
  {HashIs = 331645324, ModNam = 'a_f_y_fitness_02'},
  {HashIs = 793439294, ModNam = 'a_f_y_genhot_01'},
  {HashIs = 2111372120, ModNam = 'a_f_y_golfer_01'},
  {HashIs = 813893651, ModNam = 'a_f_y_hiker_01'},
  {HashIs = 343259175, ModNam = 'a_f_y_hippie_01'},
  {HashIs = -2109222095, ModNam = 'a_f_y_hipster_01'},
  {HashIs = -1745486195, ModNam = 'a_f_y_hipster_02'},
  {HashIs = -1514497514, ModNam = 'a_f_y_hipster_03'},
  {HashIs = 429425116, ModNam = 'a_f_y_hipster_04'},
  {HashIs = 153984193, ModNam = 'a_f_y_indian_01'},
  {HashIs = -619494093, ModNam = 'a_f_y_juggalo_01'},
  {HashIs = -951490775, ModNam = 'a_f_y_runner_01'},
  {HashIs = 1064866854, ModNam = 'a_f_y_rurmeth_01'},
  {HashIs = -614546432, ModNam = 'a_f_y_scdressy_01'},
  {HashIs = 1767892582, ModNam = 'a_f_y_skater_01'},
  {HashIs = 744758650, ModNam = 'a_f_y_soucent_01'},
  {HashIs = 1519319503, ModNam = 'a_f_y_soucent_02'},
  {HashIs = -2018356203, ModNam = 'a_f_y_soucent_03'},
  {HashIs = 1426880966, ModNam = 'a_f_y_tennis_01'},
  {HashIs = -1661836925, ModNam = 'a_f_y_topless_01'},
  {HashIs = 1446741360, ModNam = 'a_f_y_tourist_01'},
  {HashIs = -1859912896, ModNam = 'a_f_y_tourist_02'},
  {HashIs = 435429221, ModNam = 'a_f_y_vinewood_01'},
  {HashIs = -625565461, ModNam = 'a_f_y_vinewood_02'},
  {HashIs = 933092024, ModNam = 'a_f_y_vinewood_03'},
  {HashIs = -85696186, ModNam = 'a_f_y_vinewood_04'},
  {HashIs = -1004861906, ModNam = 'a_f_y_yoga_01'},
  {HashIs = 1413662315, ModNam = 'a_m_m_acult_01'},
  {HashIs = -781039234, ModNam = 'a_m_m_afriamer_01'},
  {HashIs = 1077785853, ModNam = 'a_m_m_beach_01'},
  {HashIs = 2021631368, ModNam = 'a_m_m_beach_02'},
  {HashIs = 1423699487, ModNam = 'a_m_m_bevhills_01'},
  {HashIs = 1068876755, ModNam = 'a_m_m_bevhills_02'},
  {HashIs = 2120901815, ModNam = 'a_m_m_business_01'},
  {HashIs = -106498753, ModNam = 'a_m_m_eastsa_01'},
  {HashIs = 131961260, ModNam = 'a_m_m_eastsa_02'},
  {HashIs = -1806291497, ModNam = 'a_m_m_farmer_01'},
  {HashIs = 1641152947, ModNam = 'a_m_m_fatlatin_01'},
  {HashIs = 115168927, ModNam = 'a_m_m_genfat_01'},
  {HashIs = 330231874, ModNam = 'a_m_m_genfat_02'},
  {HashIs = -1444213182, ModNam = 'a_m_m_golfer_01'},
  {HashIs = 1809430156, ModNam = 'a_m_m_hasjew_01'},
  {HashIs = 1822107721, ModNam = 'a_m_m_hillbilly_01'},
  {HashIs = 2064532783, ModNam = 'a_m_m_hillbilly_02'},
  {HashIs = -573920724, ModNam = 'a_m_m_indian_01'},
  {HashIs = -782401935, ModNam = 'a_m_m_ktown_01'},
  {HashIs = 803106487, ModNam = 'a_m_m_malibu_01'},
  {HashIs = -578715987, ModNam = 'a_m_m_mexcntry_01'},
  {HashIs = -1302522190, ModNam = 'a_m_m_mexlabor_01'},
  {HashIs = 1746653202, ModNam = 'a_m_m_og_boss_01'},
  {HashIs = -322270187, ModNam = 'a_m_m_paparazzi_01'},
  {HashIs = -1445349730, ModNam = 'a_m_m_polynesian_01'},
  {HashIs = -1760377969, ModNam = 'a_m_m_prolhost_01'},
  {HashIs = 1001210244, ModNam = 'a_m_m_rurmeth_01'},
  {HashIs = 1328415626, ModNam = 'a_m_m_salton_01'},
  {HashIs = 1626646295, ModNam = 'a_m_m_salton_02'},
  {HashIs = -1299428795, ModNam = 'a_m_m_salton_03'},
  {HashIs = -1773858377, ModNam = 'a_m_m_salton_04'},
  {HashIs = -640198516, ModNam = 'a_m_m_skater_01'},
  {HashIs = 32417469, ModNam = 'a_m_m_skidrow_01'},
  {HashIs = 193817059, ModNam = 'a_m_m_socenlat_01'},
  {HashIs = 1750583735, ModNam = 'a_m_m_soucent_01'},
  {HashIs = -1620232223, ModNam = 'a_m_m_soucent_02'},
  {HashIs = -1948675910, ModNam = 'a_m_m_soucent_03'},
  {HashIs = -1023672578, ModNam = 'a_m_m_soucent_04'},
  {HashIs = -1029146878, ModNam = 'a_m_m_stlat_02'},
  {HashIs = 1416254276, ModNam = 'a_m_m_tennis_01'},
  {HashIs = -929103484, ModNam = 'a_m_m_tourist_01'},
  {HashIs = 516505552, ModNam = 'a_m_m_tramp_01'},
  {HashIs = 1404403376, ModNam = 'a_m_m_trampbeac_01'},
  {HashIs = -521758348, ModNam = 'a_m_m_tranvest_01'},
  {HashIs = -150026812, ModNam = 'a_m_m_tranvest_02'},
  {HashIs = 1430544400, ModNam = 'a_m_o_acult_01'},
  {HashIs = 1268862154, ModNam = 'a_m_o_acult_02'},
  {HashIs = -2077764712, ModNam = 'a_m_o_beach_01'},
  {HashIs = -1386944600, ModNam = 'a_m_o_genstreet_01'},
  {HashIs = 355916122, ModNam = 'a_m_o_ktown_01'},
  {HashIs = 539004493, ModNam = 'a_m_o_salton_01'},
  {HashIs = 718836251, ModNam = 'a_m_o_soucent_01'},
  {HashIs = 1082572151, ModNam = 'a_m_o_soucent_02'},
  {HashIs = 238213328, ModNam = 'a_m_o_soucent_03'},
  {HashIs = 390939205, ModNam = 'a_m_o_tramp_01'},
  {HashIs = -1251702741, ModNam = 'a_m_y_acult_01'},
  {HashIs = -2132435154, ModNam = 'a_m_y_acult_02'},
  {HashIs = -771835772, ModNam = 'a_m_y_beach_01'},
  {HashIs = 600300561, ModNam = 'a_m_y_beach_02'},
  {HashIs = -408329255, ModNam = 'a_m_y_beach_03'},
  {HashIs = 2114544056, ModNam = 'a_m_y_beachvesp_01'},
  {HashIs = -900269486, ModNam = 'a_m_y_beachvesp_02'},
  {HashIs = 1982350912, ModNam = 'a_m_y_bevhills_01'},
  {HashIs = 1720428295, ModNam = 'a_m_y_bevhills_02'},
  {HashIs = 933205398, ModNam = 'a_m_y_breakdance_01'},
  {HashIs = -1697435671, ModNam = 'a_m_y_busicas_01'},
  {HashIs = -912318012, ModNam = 'a_m_y_business_01'},
  {HashIs = -1280051738, ModNam = 'a_m_y_business_02'},
  {HashIs = -1589423867, ModNam = 'a_m_y_business_03'},
  {HashIs = -37334073, ModNam = 'a_m_y_cyclist_01'},
  {HashIs = -12678997, ModNam = 'a_m_y_dhill_01'},
  {HashIs = 766375082, ModNam = 'a_m_y_downtown_01'},
  {HashIs = -1538846349, ModNam = 'a_m_y_eastsa_01'},
  {HashIs = 377976310, ModNam = 'a_m_y_eastsa_02'},
  {HashIs = 2010389054, ModNam = 'a_m_y_epsilon_01'},
  {HashIs = -1434255461, ModNam = 'a_m_y_epsilon_02'},
  {HashIs = -775102410, ModNam = 'a_m_y_gay_01'},
  {HashIs = -1519253631, ModNam = 'a_m_y_gay_02'},
  {HashIs = -1736970383, ModNam = 'a_m_y_genstreet_01'},
  {HashIs = 891398354, ModNam = 'a_m_y_genstreet_02'},
  {HashIs = -685776591, ModNam = 'a_m_y_golfer_01'},
  {HashIs = -512913663, ModNam = 'a_m_y_hasjew_01'},
  {HashIs = 1358380044, ModNam = 'a_m_y_hiker_01'},
  {HashIs = 2097407511, ModNam = 'a_m_y_hippy_01'},
  {HashIs = 587703123, ModNam = 'a_m_y_hipster_01'},
  {HashIs = 349505262, ModNam = 'a_m_y_hipster_02'},
  {HashIs = 1312913862, ModNam = 'a_m_y_hipster_03'},
  {HashIs = 706935758, ModNam = 'a_m_y_indian_01'},
  {HashIs = 767028979, ModNam = 'a_m_y_jetski_01'},
  {HashIs = -1849016788, ModNam = 'a_m_y_juggalo_01'},
  {HashIs = 452351020, ModNam = 'a_m_y_ktown_01'},
  {HashIs = 696250687, ModNam = 'a_m_y_ktown_02'},
  {HashIs = 321657486, ModNam = 'a_m_y_latino_01'},
  {HashIs = 1768677545, ModNam = 'a_m_y_methhead_01'},
  {HashIs = 810804565, ModNam = 'a_m_y_mexthug_01'},
  {HashIs = 1694362237, ModNam = 'a_m_y_motox_01'},
  {HashIs = 2007797722, ModNam = 'a_m_y_motox_02'},
  {HashIs = 1264920838, ModNam = 'a_m_y_musclbeac_01'},
  {HashIs = -920443780, ModNam = 'a_m_y_musclbeac_02'},
  {HashIs = -2088436577, ModNam = 'a_m_y_polynesian_01'},
  {HashIs = -178150202, ModNam = 'a_m_y_roadcyc_01'},
  {HashIs = 623927022, ModNam = 'a_m_y_runner_01'},
  {HashIs = -2076336881, ModNam = 'a_m_y_runner_02'},
  {HashIs = -681546704, ModNam = 'a_m_y_salton_01'},
  {HashIs = -1044093321, ModNam = 'a_m_y_skater_01'},
  {HashIs = -1342520604, ModNam = 'a_m_y_skater_02'},
  {HashIs = -417940021, ModNam = 'a_m_y_soucent_01'},
  {HashIs = -1398552374, ModNam = 'a_m_y_soucent_02'},
  {HashIs = -1007618204, ModNam = 'a_m_y_soucent_03'},
  {HashIs = -1976105999, ModNam = 'a_m_y_soucent_04'},
  {HashIs = -812470807, ModNam = 'a_m_y_stbla_01'},
  {HashIs = -1731772337, ModNam = 'a_m_y_stbla_02'},
  {HashIs = -2039163396, ModNam = 'a_m_y_stlat_01'},
  {HashIs = 605602864, ModNam = 'a_m_y_stwhi_01'},
  {HashIs = 919005580, ModNam = 'a_m_y_stwhi_02'},
  {HashIs = -1222037748, ModNam = 'a_m_y_sunbathe_01'},
  {HashIs = -356333586, ModNam = 'a_m_y_surfer_01'},
  {HashIs = -1047300121, ModNam = 'a_m_y_vindouche_01'},
  {HashIs = 1264851357, ModNam = 'a_m_y_vinewood_01'},
  {HashIs = 1561705728, ModNam = 'a_m_y_vinewood_02'},
  {HashIs = 534725268, ModNam = 'a_m_y_vinewood_03'},
  {HashIs = 835315305, ModNam = 'a_m_y_vinewood_04'},
  {HashIs = -1425378987, ModNam = 'a_m_y_yoga_01'},
}

local OM = {
  pedsSection = 1,
  freemodeSection = 1,
  Confimation = 0,
  SaveSection = 1
}
local OneshotMenu = false

Citizen.CreateThread(function()
  while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj)
			ESX = obj
		end)
		Citizen.Wait(10)
	end
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

oneshotMenu.Closed = function()
  OneshotMenu = false
end

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
                    TriggerEvent('skinchanger:loadDefaultModel', isMale, function()
                      skin = skin
                      TriggerEvent('skinchanger:loadSkin', skin)
                    end)
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
Keys.Register('G', 'G', 'Menu personnage one-shot.', function()
  ESX.TriggerServerCallback('nth:getSaveList', function(list)
    ListPeds = list
  end)
  OneshotMenu = true
  RageUI.Visible(oneshotMenu, not RageUI.Visible(oneshotMenu))
end)

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