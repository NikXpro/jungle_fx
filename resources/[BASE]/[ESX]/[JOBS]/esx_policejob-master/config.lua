Config                            = {}

Config.DrawDistance               = 10.0 -- How close do you need to be for the markers to be drawn (in GTA units).
Config.MarkerType                 = {Cloakrooms = 25, Armories = 25, BossActions = 25, Vehicles = 25, Helicopters = 25}
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.2}
Config.MarkerColor                = {r = 50, g = 50, b = 204}

Config.EnablePlayerManagement     = true -- Enable if you want society managing.
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- Enable if you're using esx_identity.
Config.EnableLicenses             = true -- Enable if you're using esx_license.

Config.EnableHandcuffTimer        = true -- Enable handcuff timer? will unrestrain player after the time ends.
Config.HandcuffTimer              = 10 * 60000 -- 10 minutes.

Config.EnableJobBlip              = true -- Enable blips for cops on duty, requires esx_society.
Config.ItemForJobBlip             = "traqueur_lspd" -- Nom de l'item qui permet d'avoir un blip sur c'est collégue
Config.EnableCustomPeds           = false -- Enable custom peds in cloak room? See Config.CustomPeds below to customize peds.
Config.EnableTenuGrader						= true

Config.EnableESXService           = false -- Enable esx service?
Config.MaxInService               = -1 -- How much people can be in service at once?

Config.Locale                     = 'fr'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(455.57794189453, -986.81707763672, 30.689512252808),
			Sprite  = 60,
			Display = 4,
			Scale   = 0.9,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(461.72885131836, -998.09411621094, 30.169057846069)
		},

		Armories = {
			vector3(474.91864013672, -996.55767822266, 25.273273468018)
		},

		Vehicles = {
			{
				Spawner = vector3(460.04577636719, -986.61883544922, 24.699842453003),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{coords = vector3(424.98403930664, -978.67712402344, 24.699792861938), heading = 92.4781494140625, radius = 3.5},
					{coords = vector3(425.02938842773, -981.47778320312, 24.699796676636), heading = 95.10482025146484, radius = 3.5},
					{coords = vector3(425.71792602539, -984.00567626953, 24.699796676636), heading = 91.11418914794922, radius = 3.5},
					{coords = vector3(425.23782348633, -989.01733398438, 24.699789047241), heading = 92.9343490600586, radius = 3.5},
					{coords = vector3(425.41540527344, -991.62255859375, 24.699798583984), heading = 87.80513763427734, radius = 3.5},
					{coords = vector3(426.09786987305, -994.27111816406, 24.699802398682), heading = 88.28822326660156, radius = 3.5},
					{coords = vector3(425.92349243164, -996.84912109375, 24.69980430603), heading = 88.98794555664062, radius = 3.5},
					{coords = vector3(436.74468994141, -997.13037109375, 24.699794769287), heading = 278.162109375, radius = 3.5},
					{coords = vector3(436.9462890625, -994.2177734375, 24.69979095459), heading = 267.41497802734375, radius = 3.5},
					{coords = vector3(437.03671264648, -991.57995605469, 24.699792861938), heading = 269.2831726074219, radius = 3.5},
					{coords = vector3(436.60668945312, -988.88854980469, 24.699800491333), heading = 271.6640319824219, radius = 3.5},
					{coords = vector3(436.9030456543, -986.33367919922, 24.69980430603), heading = 265.2167663574219, radius = 3.5},
					{coords = vector3(445.85244750977, -986.03900146484, 24.699811935425), heading = 86.5650634765625, radius = 3.5},
					{coords = vector3(446.00555419922, -988.69458007812, 24.699811935425), heading = 90.0737533569336, radius = 3.5},
					{coords = vector3(445.98883056641, -991.41607666016, 24.699798583984), heading = 87.60870361328125, radius = 3.5},
					{coords = vector3(446.27407836914, -994.03491210938, 24.699796676636), heading = 87.8341293334961, radius = 3.5},
					{coords = vector3(446.17449951172, -996.77032470703, 24.699796676636), heading = 93.13860321044922, radius = 3.5}
				}
			},

			{
				Spawner = vector3(473.619140625, -1018.9836425781, 27.095117111206),
				InsideShop = vector3(228.5, -993.5, -99.0),
				SpawnPoints = {
					{coords = vector3(475.53375244141, -1026.8696289062, 27.111345291138), heading = 149.8062744140625, radius = 3.5},
					{coords = vector3(479.140625, -1026.7155761719, 27.040069580078), heading = 160.04010009765625, radius = 3.5},
					{coords = vector3(482.92581176758, -1025.7781982422, 26.998254776001), heading = 146.26605224609375, radius = 3.5}
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(463.91455078125, -982.12615966797, 42.691661834717),
				InsideShop = vector3(476.66613769531, -1105.9794921875, 42.07564163208),
				SpawnPoints = {
					{coords = vector3(449.44891357422, -981.04437255859, 42.691368103027), heading = 86.27619934082031, radius = 10.0},
					{coords = vector3(481.53338623047, -982.30407714844, 40.007141113281), heading = 266.8059692382813, radius = 10.0}
				}
			}
		},

		BossActions = {
			vector3(462.82464599609, -985.58941650391, 29.728076934814)
		}

	}

}

Config.OnlyPolicemen = true

Config.ReceiveAmmo = 1000

Config.Armory = { ["x"] = 484.30, ["y"] = -1001.72, ["z"] = 25.73, ["h"] = 181.82 }
Config.ArmoryPed = { ["x"] = 484.30, ["y"] = -1003.69, ["z"] = 25.73, ["h"] = 7.76, ["hash"] = "s_m_y_cop_01" }

Config.ArmoryAccesory = {
    { name = 'gasmask',      label = "Masque a gaz",   price = 75 },
    { name = 'traqueur_lspd',      label = "Traqueur LSPD",   price = 100 },
	{ name = 'poignet',      label = "Poignet",   price = 3 },
	{ name = 'silencieux',      label = "Silencieux",   price = 3 },
	{ name = 'flashlight',      label = "Lampe",   price = 3 },
	{ name = 'scope_macro',      label = "Petite lunette",   price = 4 }
}

Config.ArmoryWeapons = {
    { ["hash"] = "weapon_sniperrifle", ["type"] = "rifle" },
    { ["hash"] = "weapon_heavysniper_mk2", ["type"] = "rifle" },
	{ ["hash"] = "weapon_specialcarbine", ["type"] = "rifle" },
	{ ["hash"] = "weapon_carbinerifle", ["type"] = "rifle" },
	{ ["hash"] = "weapon_carbinerifle_mk2", ["type"] = "rifle" },
	{ ["hash"] = "weapon_pumpshotgun", ["type"] = "rifle" },
	{ ["hash"] = "weapon_pumpshotgun_mk2", ["type"] = "rifle" },
	{ ["hash"] = "weapon_combatpistol", ["type"] = "pistol" },
	{ ["hash"] = "weapon_pistol_mk2", ["type"] = "pistol" },
	{ ["hash"] = "weapon_nightstick", ["type"] = "pistol" },
	{ ["hash"] = "weapon_stungun", ["type"] = "pistol" },
	{ ["hash"] = "weapon_flashlight", ["type"] = "pistol" },
	{ ["hash"] = "weapon_fireextinguisher", ["type"] = "pistol" }
	
}

Config.AuthorizedVehicles = {
	car = {
		recruit = {
            {model = 'police', price = 1},
			{model = 'police2', price = 1},
			{model = 'police3', price = 1},
			{model = 'police4', price = 1},
			{model = 'police5', price = 1},
			{model = 'police6', price = 1},
			{model = 'police7', price = 1},
			{model = 'riot', price = 1},
			{model = 'fbi', price = 1},
			{model = 'fbi2', price = 1}
        },

		officer = {
			{model = 'police', price = 1},
			{model = 'police2', price = 1},
			{model = 'police3', price = 1},
			{model = 'police4', price = 1},
			{model = 'police5', price = 1},
			{model = 'police6', price = 1},
			{model = 'police7', price = 1},
			{model = 'riot', price = 1},
			{model = 'fbi', price = 1},
			{model = 'fbi2', price = 1}

		},

		sergeant = {
			{model = 'police', price = 1},
			{model = 'police2', price = 1},
			{model = 'police3', price = 1},
			{model = 'police4', price = 1},
			{model = 'police5', price = 1},
			{model = 'police6', price = 1},
			{model = 'police7', price = 1},
			{model = 'riot', price = 1},
			{model = 'fbi', price = 1},
			{model = 'fbi2', price = 1}
		},

		lieutenant = {
			{model = 'police', price = 1},
			{model = 'police2', price = 1},
			{model = 'police3', price = 1},
			{model = 'police4', price = 1},
			{model = 'police5', price = 1},
			{model = 'police6', price = 1},
			{model = 'police7', price = 1},
			{model = 'riot', price = 1},
			{model = 'fbi', price = 1},
			{model = 'fbi2', price = 1}
		},

		boss = {
			{model = 'police', price = 1},
			{model = 'police2', price = 1},
			{model = 'police3', price = 1},
			{model = 'police4', price = 1},
			{model = 'police5', price = 1},
			{model = 'police6', price = 1},
			{model = 'police7', price = 1},
			{model = 'riot', price = 1},
			{model = 'fbi', price = 1},
			{model = 'fbi2', price = 1}
		}
	},

	helicopter = {
		recruit = {
			{model = 'polmav', props = {modLivery = 0}, price = 10}
		},

		officer = {
			{model = 'polmav', props = {modLivery = 0}, price = 10}
		},

		sergeant = {
			{model = 'polmav', props = {modLivery = 0}, price = 10}
		},

		lieutenant = {
			{model = 'polmav', props = {modLivery = 0}, price = 10}
		},

		boss = {
			{model = 'polmav', props = {modLivery = 0}, price = 100000}
		}
	}
}

Config.CustomPeds = {
	shared = {
		{label = 'Sheriff Ped', maleModel = 's_m_y_sheriff_01', femaleModel = 's_f_y_sheriff_01'},
		{label = 'Police Ped', maleModel = 's_m_y_cop_01', femaleModel = 's_f_y_cop_01'}
	},

	recruit = {},

	officer = {},

	sergeant = {},

	lieutenant = {},

	boss = {
		{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
Config.Uniforms = {
	cadet = {
        male = {
            ['tshirt_1'] = 54,  ['tshirt_2'] = 0,
            ['torso_1'] = 190,   ['torso_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 52,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = 46,  ['helmet_2'] = 0,
            ['chain_1'] = 0,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 10,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 0,    ['bags_2'] = 0,
        },
        female = {
            ['tshirt_1'] = 19,  ['tshirt_2'] = 0,
            ['torso_1'] =192,   ['torso_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 14,
            ['pants_1'] = 54,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = 45,  ['helmet_2'] = 0,
            ['chain_1'] = 0,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 19,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 0,    ['bags_2'] = 0,
        }
	},

	officier_1 = {
        male = {
            ['tshirt_1'] = 56,  ['tshirt_2'] = 0,
            ['torso_1'] = 190,   ['torso_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 52,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 13,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 0
        },
        female = {
            ['tshirt_1'] = 27,  ['tshirt_2'] = 0,
            ['torso_1'] = 192,   ['torso_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 14,
            ['pants_1'] = 54,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 14,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 0,
        }
	},

	officier_2 = {
        male = {
            ['tshirt_1'] = 56,  ['tshirt_2'] = 0,
            ['torso_1'] = 190,   ['torso_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 52,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 13,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 0
        },
        female = {
            ['tshirt_1'] = 27,  ['tshirt_2'] = 0,
            ['torso_1'] = 192,   ['torso_2'] = 0,
            ['decals_1'] = 0,   ['decals_2'] = 0,
            ['arms'] = 14,
            ['pants_1'] = 54,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 14,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 0,
        }
	},

	officier_3 = {
        male = {
            ['tshirt_1'] = 57,  ['tshirt_2'] = 0,
            ['torso_1'] = 190,   ['torso_2'] = 0,
            ['decals_1'] = 15,   ['decals_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 52,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 13,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 0
        },
        female = {
            ['tshirt_1'] = 27,  ['tshirt_2'] = 0,
            ['torso_1'] = 192,   ['torso_2'] = 0,
            ['decals_1'] = 14,   ['decals_2'] = 0,
            ['arms'] = 14,
            ['pants_1'] = 54,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 14,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 0,
        }
	},

	officier_3_1 = {
        male = {
            ['tshirt_1'] = 57,  ['tshirt_2'] = 0,
            ['torso_1'] = 190,   ['torso_2'] = 0,
            ['decals_1'] = 15,   ['decals_2'] = 1,
            ['arms'] = 0,
            ['pants_1'] = 52,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 13,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 0
        },
        female = {
            ['tshirt_1'] = 31,  ['tshirt_2'] = 0,
            ['torso_1'] = 192,   ['torso_2'] = 0,
            ['decals_1'] = 14,   ['decals_2'] = 1,
            ['arms'] = 14,
            ['pants_1'] = 54,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 14,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 0,
        }
	},

	sergent_1 = {
        male = {
            ['tshirt_1'] = 58,  ['tshirt_2'] = 0,
            ['torso_1'] = 200,   ['torso_2'] = 0,
            ['decals_1'] = 12,   ['decals_2'] = 2,
            ['arms'] = 1,
            ['pants_1'] = 52,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 13,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 1,
        },
        female = {
            ['tshirt_1'] = 35,  ['tshirt_2'] = 0,
            ['torso_1'] = 202,   ['torso_2'] = 0,
            ['decals_1'] = 11,   ['decals_2'] = 2,
            ['arms'] = 3,
            ['pants_1'] = 54,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 14,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 1,
        }
	},

	sergent_2 = {
        male = {
            ['tshirt_1'] = 58,  ['tshirt_2'] = 0,
            ['torso_1'] = 200,   ['torso_2'] = 0,
            ['decals_1'] = 12,   ['decals_2'] = 3,
            ['arms'] = 1,
            ['pants_1'] = 52,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 13,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 1,
        },
        female = {
            ['tshirt_1'] = 31,  ['tshirt_2'] = 0,
            ['torso_1'] = 202,   ['torso_2'] = 0,
            ['decals_1'] = 11,   ['decals_2'] = 3,
            ['arms'] = 3,
            ['pants_1'] = 54,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 14,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 1,
        }
	},

	lieutenant_1 = {
        male = {
            ['tshirt_1'] = 42,  ['tshirt_2'] = 0,
            ['torso_1'] = 190,   ['torso_2'] = 0,
            ['decals_1'] = 44,   ['decals_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 52,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 13,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 2,
        },
        female = {
            ['tshirt_1'] = 8,  ['tshirt_2'] = 0,
            ['torso_1'] =192,   ['torso_2'] = 0,
            ['decals_1'] = 52,   ['decals_2'] = 0,
            ['arms'] = 14,
            ['pants_1'] = 54,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 14,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 2,
        }
	},

	lieutenant_2 = {
        male = {
            ['tshirt_1'] = 42,  ['tshirt_2'] = 0,
            ['torso_1'] = 190,   ['torso_2'] = 0,
            ['decals_1'] = 44,   ['decals_2'] = 0,
            ['arms'] = 0,
            ['pants_1'] = 52,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 13,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 2,
        },
        female = {
            ['tshirt_1'] = 52,  ['tshirt_2'] = 0,
            ['torso_1'] =192,   ['torso_2'] = 0,
            ['decals_1'] = 52,   ['decals_2'] = 0,
            ['arms'] = 14,
            ['pants_1'] = 54,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 14,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 2,
        }
	},

	capitaine = {
        male = {
            ['tshirt_1'] = 38,  ['tshirt_2'] = 0,
            ['torso_1'] = 200,   ['torso_2'] = 0,
            ['decals_1'] = 44,   ['decals_2'] = 1,
            ['arms'] = 1,
            ['pants_1'] = 52,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 13,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 3,
        },
        female = {
            ['tshirt_1'] = 52,  ['tshirt_2'] = 0,
            ['torso_1'] =202,   ['torso_2'] = 0,
            ['decals_1'] = 53,   ['decals_2'] = 1,
            ['arms'] = 3,
            ['pants_1'] = 54,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 14,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 3,
        }
	},

	commandant = {
        male = {
            ['tshirt_1'] = 38,  ['tshirt_2'] = 0,
            ['torso_1'] = 200,   ['torso_2'] = 0,
            ['decals_1'] = 45,   ['decals_2'] = 5,
            ['arms'] = 4,
            ['pants_1'] = 52,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 13,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 8,
        },
        female = {
            ['tshirt_1'] = 34,  ['tshirt_2'] = 0,
            ['torso_1'] =202,   ['torso_2'] = 0,
            ['decals_1'] = 53,   ['decals_2'] = 5,
            ['arms'] = 3,
            ['pants_1'] = 54,   ['pants_2'] = 1,
            ['shoes_1'] = 24,   ['shoes_2'] = 0,
            ['helmet_1'] = -1,  ['helmet_2'] = 0,
            ['chain_1'] = 8,    ['chain_2'] = 0,
            ['mask_1'] = -1,  ['mask_2'] = 0,
            ['bproof_1'] = 14,  ['bproof_2'] = 0,
            ['ears_1'] = 2,     ['ears_2'] = 0,
            ['bags_1'] = 52,    ['bags_2'] = 8,
        }
	},

	tenu_swatgr = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 53,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 11,
			['pants_1'] = 37,   ['pants_2'] = 0,
			['shoes_1'] = 24,   ['shoes_2'] = 0,
			['helmet_1'] = 75,  ['helmet_2'] = 0,
			['mask_1'] = 52,  ['mask_2'] = 0,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['bags_1'] = 0,    ['bags_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 46,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 18,
			['pants_1'] = 36,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 74,  ['helmet_2'] = 0,
			['mask_1'] = 56,  ['mask_2'] = 1,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['bproof_1'] = 18,  ['bproof_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0,
			['bags_1'] = 0,    ['bags_2'] = 0
		}
	},

	berret_grader = {
		male = {
			['helmet_1'] = 28,  ['helmet_2'] = 1
		},
		female = {
			['helmet_1'] = 28,  ['helmet_2'] = 1
		}
	},
	
	casquette_grader = {
		male = {
			['helmet_1'] = 1,  ['helmet_2'] = 0
		},
		female = {
			['helmet_1'] = 1,  ['helmet_2'] = 0
		}
	},

	bullet_wear = {
		male = {
			['bproof_1'] = 12,  ['bproof_2'] = 3
		},
		female = {
			['bproof_1'] = 11,  ['bproof_2'] = 3
		}
	},

}
