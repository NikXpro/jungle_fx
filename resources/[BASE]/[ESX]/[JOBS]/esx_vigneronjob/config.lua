Config                            = {}

Config.DrawDistance               = 10.0 -- How close do you need to be for the markers to be drawn (in GTA units).
Config.MarkerType                 = {Cloakrooms = 20, Coffre = 21, BossActions = 22, Vehicles = 36}
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 50, g = 50, b = 204}

Config.EnablePlayerManagement     = true -- Enable if you want society managing.

Config.Locale                     = 'fr'

Config.vigneStations = {

	VIGNOBLE = {

		Blip = {
			Coords  = vector3(-1883.95, 2061.97, 141.35),
			Sprite  = 85,
			Display = 4,
			Scale   = 0.9,
			Colour  = 83
		},

		Cloakrooms = {
			vector3(-1875.82, 2053.78, 141.07)
		},

		Coffre = {
			vector3(-1882.79, 2070.9, 141.01)
		},

		Vehicles = {
			{
				Spawner = vector3(-1928.61, 2038.37, 140.82),
				InsideShop = vector3(-2147.08, 1875.07, 237.91),
				SpawnPoints = {
					{coords = vector3(-1923.27, 2036.29, 140.74), heading = 348, radius = 4.5},
					{coords = vector3(-1905.49, 2021.25, 140.79), heading = 270.22, radius = 4.5}
				}
			}
		},

		BossActions = {
			vector3(-1899.43, 2068.71, 141.02)
		}

	}

}

Config.VehiclesList = {
	{model = 'bobcatxl', price = 7000},
	{model = 'bison3', price = 9000}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
Config.Uniforms = {
	tenu_vigne = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 44,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 11,
			['pants_1'] = 9,   ['pants_2'] = 7,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
		},
		female = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 27,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 31,
			['pants_1'] = 51,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
		}
	}
}
