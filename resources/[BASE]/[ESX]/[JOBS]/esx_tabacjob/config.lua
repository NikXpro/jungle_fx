Config                            = {}
Config.DrawDistance               = 10.0
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.EnableESXIdentity          = true
Config.Locale                     = 'fr'

Config.Cig = {
  'malbora',
  'gitanes'
}

Config.CigResellChances = {
  malbora = 45,
  gitanes = 55,
}

Config.CigResellQuantity= {
  malbora = {min = 5, max = 10},
  gitanes = {min = 5, max = 10},
}

Config.CigPrices = {
  malbora = {min = 35, max = 20},
  gitanes = {min = 25,   max = 25},
}

Config.CigPricesHigh = {
  malbora = {min = 65, max = 30},
  gitanes = {min = 55,   max = 35},
}

Config.Time = {
	malbora = 5 * 60,
	gitanes = 5 * 60,
}

Config.Blip = {
  Pos     = {x = 2351.1613769531, y = 3132.4692382812, z = 48.208744049072},
  Sprite  = 79,
  Display = 4,
  Scale   = 0.8,
  Colour  = 2,
}

Config.Zones = {

  TabacActions = {
    Pos   = {x = 2340.6206054688, y = 3126.4645996094, z = 47.208709716797},
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,
  },

  Garage = { --Récolte
    Pos   = {x = 2859.6765136719, y = 4625.6572265625, z = 46.853759765625},
    Size  = { x = 40.0, y = 40.0, z = 2.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 23,
  },

  Craft = {
    Pos   = {x = 2340.8642578125, y = 3130.5654296875, z = 47.271701812744},
    Size  = { x = 1.5, y = 1.5, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 27,
  },

  Craft2 = {
    Pos   = {x = 2344.951171875, y = 3143.9499511719, z = 47.208690643311},
    Size  = { x = 2.6, y = 2.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Type  = 27,
  },

  VehicleSpawnPoint = {
    Pos   = {x = 2367.5561523438, y = 3121.9279785156, z = 47.499019622803},
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
    Type  = -1,
  },

  VehicleDeleter = {
    Pos   = {x = 2367.4729003906, y = 3121.6450195312, z = 47.503818511963},
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
    Color = { r = 204, g = 204, b = 0 },
    Type  = 1,
  },

  SellFarm = {
    Pos   = {x = 68.924179077148, y = 127.1748046875, z = 78.226},
    Size  = { x = 1.6, y = 1.6, z = 1.0 },
	Color = {r = 136, g = 243, b = 216},
    Name  = "Vente des produits",
    Type  = 1
  },
  
}
