Config                            = {}
Config.DrawDistance               = 10.0
Config.MarkerColor                = {r = 120, g = 120, b = 240}
Config.EnablePlayerManagement     = true -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.ResellPercentage           = 50

Config.Locale                     = 'fr'

Config.LicenseEnable = false -- require people to own drivers license when buying vehicles? Only applies if EnablePlayerManagement is disabled. Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = false

Config.Zones = {

	ShopEntering = {
		Pos   = vector3(297.05032348633, -1169.1060791016, 28.671487808228),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = 1
	},

	ShopInside = {
		Pos     = vector3(277.15475463867, -1166.4177246094, 28.870407104492),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 93.50630950927736,
		Type    = -1
	},

	ShopOutside = {
		Pos     = vector3(277.15475463867, -1166.4177246094, 28.870407104492),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 93.50630950927736,
		Type    = -1
	},

	BossActions = {
		Pos   = vector3(273.91400146484, -1153.7635498047, 32.267105102539),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = -1
	},

	GiveBackVehicle = {
		Pos   = vector3(265.6383972168, -1172.8560791016, 28.358335494995),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = (Config.EnablePlayerManagement and 1 or -1)
	},

	ResellVehicle = {
		Pos   = vector3(259.06335449219, -1171.8657226562, 0.0),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = 1
	}

}
