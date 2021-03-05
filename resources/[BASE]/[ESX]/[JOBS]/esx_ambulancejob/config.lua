Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }

Config.ReviveReward               = 800  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = false -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'fr'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 15 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 15 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = false
Config.RemoveItemsAfterRPDeath    = false

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 1000

Config.RespawnPoint = { coords = vector3(315.31, -568.51, 43.28), heading = 163.69 }

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3(302.51, -588.86, 43.28),
			sprite = 61,
			scale  = 0.9,
			color  = 38
		},

		AmbulanceActions = {
			vector3(298.92, -597.74, 42.28)
		},

		Pharmacies = {
			vector3(306.9, -601.88, 42.28)
		},

		Vehicles = {
			{
				Spawner = vector3(333.95, -561.91, 28.74),
				InsideShop = vector3(446.7, -1355.6, 43.5),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(343.03, -558.37, 28.74), heading = 341.95, radius = 4.0 },
					{ coords = vector3(329.41, -554.17, 28.74), heading = 350.79, radius = 4.0 },
					{ coords = vector3(321.61, -545.08, 28.74), heading = 250.93, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(337.66, -588.39, 74.17),
				InsideShop = vector3(305.6, -1419.7, 41.5),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(351.83, -588.64, 74.17), heading = 342.79, radius = 10.0 }
				}
			}
		},

		FastTravels = {
			--helico
			{
				From = vector3(327.23, -603.76, 42.28),
				To = { coords = vector3(340.85, -583.76, 74.17), heading = 246.6 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(338.6, -583.85, 73.17),
				To = { coords = vector3(329.91, -600.93, 43.28), heading = 70.67 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			---garage

			{
				From = vector3(332.2428894043, -595.87603759766, 42.28409576416),
				To = { coords = vector3(340.0998840332, -584.77862548828, 27.796846389771), heading = 58.43624877929687 },
				Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			{
				From = vector3(341.4736328125, -581.00329589844, 27.796846389771),
				To = { coords = vector3(330.40267944336, -601.22473144531, 42.28409576416), heading = 73.10897827148438 },
				Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			},

			--
		},

		FastTravelsPrompt = {
		--	{
		--		From = vector3(237.4, -1373.8, 26.0),
		--		To = { coords = vector3(251.9, -1363.3, 38.5), heading = 0.0 },
		--		Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
		--		Prompt = _U('fast_travel')
		--	},

		--	{
		--		From = vector3(256.5, -1357.7, 36.0),
		--		To = { coords = vector3(235.4, -1372.8, 26.3), heading = 0.0 },
		--		Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
		--		Prompt = _U('fast_travel')
		--	}
		}

	}
}

Config.AuthorizedVehicles = {

	ambulance = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 5000}
	},

	doctor = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 4500}
	},

	chief_doctor = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 3000},
		{ model = 'dodgeEMS', label = 'Ambulance Dodge', price = 3000}
	},

	boss = {
		{ model = 'ambulance', label = 'Ambulance Van', price = 2000},
		{ model = 'dodgeEMS', label = 'Ambulance Dodge', price = 2000}
	}

}

Config.AuthorizedHelicopters = {

	ambulance = {},

	doctor = {
		{ model = 'mh65c', label = 'Ambulance MH65', price = 150000 }
	},

	chief_doctor = {
		{ model = 'mh65c', label = 'Ambulance MH65', price = 150000 },
	},

	boss = {
		{ model = 'mh65c', label = 'Ambulance MH65', price = 10000 },
	}

}
