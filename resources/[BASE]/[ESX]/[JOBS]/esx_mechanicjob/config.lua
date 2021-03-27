Config                            = {}
Config.Locale                     = 'fr'

Config.DrawDistance               = 10.0 -- How close you need to be in order for the markers to be drawn (in GTA units).
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true -- Enable society managing.
Config.EnableSocietyOwnedVehicles = false

Config.NPCSpawnDistance           = 500.0
Config.NPCNextToDistance          = 25.0
Config.NPCJobEarnings             = { min = 15, max = 40 }

Config.Vehicles = {
	"dilettante",
	"blista",
	"prairie",
	"felon",
	"exemplar",
	"sentinel2",
	"oracle",
	"buccaneer2",
	"buccaneer",
	"dukes3",
	"sabregt2",
	"bifta",
	"bfinjection",
	"baller2",
	"baller",
	"landstalker",
	"radi",
	"rocoto",
	"fq2",
	"habanero",
	"asterope",
	"emperor",
	"emperor2",
	"fugitive",
	"ingot",
	"tailgater",
	"warrener"
}

Config.Zones = {

	MechanicActions = {
		Pos   = {x = 542.49963378906, y = -194.1579284668, z = 53.493194580078},
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = 25
	},

	Garage = {
		Pos   = {x = 547.23760986328, y = -183.1693572998, z = 53.493179321289},
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = 25
	},

	Craft = {
		Pos   = {x = 549.56774902344, y = -168.32124328613, z = 53.49320602417},
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = 25
	},

	VehicleSpawnPoint = {
		Pos   = {x = 542.71313476562, y = -209.79988098145, z = 53.612628936768},
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Type  = -1
	},

	VehicleDeleter = {
		Pos   = {x = 542.71313476562, y = -209.79988098145, z = 52.612628936768},
		Size  = { x = 3.0, y = 3.0, z = 1.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = 25
	},

	VehicleDelivery = {
		Pos   = { x = -382.925, y = -133.748, z = 37.685 },
		Size  = { x = 20.0, y = 20.0, z = 3.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = -1
	}
}

Config.Towables = {
	vector3(532.33947753906, -243.07237243652, 49.063354492188),
	vector3(502.29833984375, -240.23342895508, 48.479122161865)
}

for k,v in ipairs(Config.Towables) do
	Config.Zones['Towable' .. k] = {
		Pos   = v,
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Color = { r = 204, g = 204, b = 0 },
		Type  = -1
	}
end