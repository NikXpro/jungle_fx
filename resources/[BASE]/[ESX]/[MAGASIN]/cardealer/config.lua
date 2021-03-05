Config                            = {}
Config.DrawDistance               = 10.0
Config.MarkerColor                = {r = 120, g = 120, b = 240}
Config.Debug = false

Config.LicenseEnable = false -- require people to own drivers license when buying vehicles? Only applies if EnablePlayerManagement is disabled. Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = false

Config.Zones = {
	ShopEntering = {
		Pos   = {x = 1224.1412353516, y = 2733.7104492188, z = 37.029273986816},
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = -1
	},
	ShopOutside = {
		Pos     = vector3(1248.2830810547, 2714.1098632812, 37.005912780762),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 180.89549255371097,
		Type    = -1
	}
}
