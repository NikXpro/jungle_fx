data = {}

data.positions = {
    {{-1337.45, -1161.55, 3.51, 265.02}, {20.09, 114.39, 82.27, 248.5}, {36,237,157}, "Appuyer sur ~INPUT_CONTEXT~ pour ~g~Entrer~s~/~r~Sortir~s~ de chez ~b~D.K~s~"}, -- 410th appartement chef
	{{-12.93, 89.05, 39.54, 1.02}, {92.72, 49.26, 72.52, 62.96}, {255, 157, 0}, "Appuyer sur ~INPUT_CONTEXT~ pour ~g~Entrer~s~/~r~Sortir~s~ de chez les ~b~Yute~s~"},
	{{-1382.26, -609.86, 29.82, 206.75}, {-1385.02, -606.47, 29.32, 116.22}, {255, 157, 0}, "Appuyer sur ~INPUT_CONTEXT~ pour ~g~Entrer~s~/~r~Sortir~s~ du comptoir avant."},
	{{-1386.25, -627.48, 29.82, 295.72}, {-1371.33, -625.97, 29.82, 121.9}, {255, 157, 0}, "Appuyer sur ~INPUT_CONTEXT~ pour ~g~Entrer~s~/~r~Sortir~s~ du comptoir arriére."}
}


data.keylist = {
  {Action = "Téléphone", Key = "F1"},
  {Action = "Menu personnel", Key = "F5"},
  {Action = "Menu entreprise", Key = "F6"},
  {Action = "Menu organisation", Key = "F7"},
  {Action = "Vérouiller/Dévérouiller vehicule", Key = "MAJUSCULE"},
  {Action = "Pointer du doight", Key = "B"}
}

data.sounds = {
  {Name = "LSPD! Stop...", Sound = "stop_vehicle", Distance = 100, Volume = 0.6},
  {Name = "Driver! Stop...", Sound = "stop_vehicle-2", Distance = 100, Volume = 0.6},
  {Name = "Stop the fucking car...", Sound = "stop_the_f_car", Distance = 100, Volume = 0.6},
  {Name = "Stop or executed...", Sound = "stop_or_executed", Distance = 100, Volume = 0.6},
  {Name = "Stop or I kill ya...", Sound = "stop_or_i_kill", Distance = 100, Volume = 0.6},

  {Name = "Dont make me...", Sound = "dont_make_me", Distance = 100, Volume = 0.6},
  {Name = "Dont move a muscle...", Sound = "stop_dont_move", Distance = 100, Volume = 0.6},
  {Name = "Give yourself up...", Sound = "give_yourself_up", Distance = 100, Volume = 0.6},
  {Name = "Stay right there...", Sound = "stay_right_there", Distance = 100, Volume = 0.6},
  {Name = "Freeze...", Sound = "freeze_lspd", Distance = 100, Volume = 0.6},

  {Name = "Clear the area...", Sound = "clear_the_area", Distance = 100, Volume = 0.6},
  {Name = "Go away now...", Sound = "this_is_the_lspd", Distance = 100, Volume = 0.6},
  {Name = "Move along people...", Sound = "move_along_people", Distance = 100, Volume = 0.6},
  {Name = "Get out of here...", Sound = "get_out_of_here_now", Distance = 100, Volume = 0.6},
  {Name = "Disperse now...", Sound = "disperse_now", Distance = 100, Volume = 0.6},

  {Name = "It's over...", Sound = "its_over_for_you", Distance = 100, Volume = 0.6},
  {Name = "You are finished..", Sound = "you_are_finished_dhead", Distance = 100, Volume = 0.6},
  {Name = "You can't hide boy..", Sound = "cant_hide_boi", Distance = 100, Volume = 0.6},
  {Name = "Drop a missile..", Sound = "drop_a_missile", Distance = 100, Volume = 0.6},
  {Name = "Shoot to kill..", Sound = "shoot_to_kill", Distance = 100, Volume = 0.6}
}

data.menu = {
	police = {
		MenuId = "police",
		MenuType = "service",
		ServiceOff = "policeoff", --nom du garage hors service
		ServiceOn = "police", --nom du garage en service
		TitreMenu = "Service police",
		DescriptionMenu = "Prendre/quitter son service~",

		MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler a Bob.",

		ped = "s_m_y_cop_01",
		TailleZone = 2.5,
		zone = vector3(443.5, -986.5, 29.69),
    	heading = 95.9,
	},
	ambulance = {
		MenuId = "ambulance",
		MenuType = "service",
		ServiceOff = "ambulanceoff", --nom du garage hors service
		ServiceOn = "ambulance", --nom du garage en service
		TitreMenu = "Service médical",
		DescriptionMenu = "Prendre/quitter son service~",

		MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler a Jacqueline.",

		ped = "ig_jewelass",
		TailleZone = 2.5,
		zone = vector3(312.35, -594.19, 42.28),
    	heading = 357.99,
	},
	cardealer = {
		MenuId = "cardealer",
		MenuType = "service",
		ServiceOff = "cardealeroff", --nom du garage hors service
		ServiceOn = "cardealer", --nom du garage en service
		TitreMenu = "Service vendeur",
		DescriptionMenu = "Prendre/quitter son service~",

		MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler a Simeon.",

		ped = "ig_siemonyetarian",
		TailleZone = 2,
		zone = vector3(-55.58, -1098.03, 25.42),
    	heading = 333.21,
	},
}
