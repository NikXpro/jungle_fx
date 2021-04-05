Config = {}
Config.Locale = 'fr'

Config.Marker = {
	r = 250, g = 0, b = 0, a = 100,  -- red color
	x = 1.0, y = 1.0, z = 1.5,       -- tiny, cylinder formed circle
	DrawDistance = 10.0, Type = 1    -- default circle type, low draw distance due to indoors area
}
Config.blipActivate = true

Config.PoliceNumberRequired = 0
Config.TimerBeforeNewRob    = 1800 -- The cooldown timer on a store after robbery was completed / canceled, in seconds

Config.MaxDistance    = 20   -- max distance from the robbary, going any longer away from it will to cancel the robbary
Config.GiveBlackMoney = false-- give black money? If disabled it will give cash instead

Stores = {
	["paleto_twentyfourseven"] = {
		position = { x = 1736.32, y = 6419.47, z = 35.03 },
		reward = math.random(150, 500),
		nameOfStore = "24/7. (Paleto Bay)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["sandyshores_twentyfoursever"] = {
		position = { x = 1961.24, y = 3749.46, z = 32.34 },
		reward = math.random(150, 500),
		nameOfStore = "24/7. (Sandy Shores)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["littleseoul_twentyfourseven"] = {
		position = { x = -709.17, y = -904.21, z = 19.21 },
		reward = math.random(150, 500),
		nameOfStore = "24/7. (Little Seoul)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["bar_one"] = {
		position = { x = 1990.57, y = 3044.95, z = 47.21 },
		reward = math.random(150, 500),
		nameOfStore = "Yellow Jack. (Sandy Shores)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["ocean_liquor"] = {
		position = { x = -2959.33, y = 388.21, z = 14.00 },
		reward = math.random(150, 500),
		nameOfStore = "Robs Liquor. (Great Ocean Highway)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["rancho_liquor"] = {
		position = { x = 1126.80, y = -980.40, z = 45.41 },
		reward = math.random(150, 500),
		nameOfStore = "Robs Liquor. (El Rancho Blvd)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["sanandreas_liquor"] = {
		position = { x = -1219.85, y = -916.27, z = 11.32 },
		reward = math.random(150, 500),
		nameOfStore = "Robs Liquor. (San Andreas Avenue)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["grove_ltd"] = {
		position = { x = -43.40, y = -1749.20, z = 29.42 },
		reward = math.random(150, 500),
		nameOfStore = "LTD Gasoline. (Grove Street)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["mirror_ltd"] = {
		position = { x = 1160.67, y = -314.40, z = 69.20 },
		reward = math.random(150, 500),
		nameOfStore = "LTD Gasoline. (Mirror Park Boulevard)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["banque_ltd"] = {
		position = {x = 378.33135986328, y = 333.24432373047, z = 102.56636047363},
		reward = math.random(3000, 15000),
		nameOfStore = "247 Supermarket. (Centre de vinewood)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["nord_ltd"] = {
		position = {x = 1169.2318115234, y = 2717.677734375, z = 36.157676696777},
		reward = math.random(150, 500),
		nameOfStore = "247 Supermarket. (Grand senora desert)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["grapseed_ltd"] = {
		position = {x = 1707.8630371094, y = 4920.3994140625, z = 41.063682556152},
		reward = math.random(150, 500),
		nameOfStore = "247 Supermarket. (Grapeseed)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["autoroute_ltd"] = {
		position = {x = 2672.6804199219, y = 3286.6015625, z = 55.241130828857},
		reward = math.random(150, 500),
		nameOfStore = "247 Supermarket. (Grand senora desert)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["autoroute_ouest_ltd"] = {
		position = {x = -3249.9233398438, y = 1004.2106323242, z = 12.5},
		reward = math.random(150, 500),
		nameOfStore = "247 Supermarket. (Chumash)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["Robs_liquor"] = {
		position = { x = -1479.0982666016, y = -375.54049682617, z = 38.163394927979},
		reward = math.random(150, 500),
		nameOfStore = "Robs Liquor. (MorNinGwoon)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["unicorn_ltd"] = {
		position = {x = 28.065910339355, y = -1339.2490234375, z = 29.1},
		reward = math.random(150, 500),
		nameOfStore = "247 Supermarket. (Strawberry / Innocence boulevard)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	},
	["unicorn_ltd"] = {
		position = {x = 546.28796386719, y = 2662.748046875, z = 41.156497955322},
		reward = math.random(150, 500),
		nameOfStore = "247 Supermarket. (Harmony)",
		secondsRemaining = 300, -- seconds
		lastRobbed = 0
	}
}
