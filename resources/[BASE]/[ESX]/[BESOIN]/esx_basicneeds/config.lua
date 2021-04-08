Config = {}
Config.Locale = 'fr'

Config.TickTime         = 100
Config.UpdateClientTime = 5000



Config.NourritureList = {
	icetea = {
		itemType = { AnimeType = "Drink", Message = "Vous avez bu un ice tea" },
		GiveEat = { Activate = false, AddNumber = 200000 },
		GiveDrink = { Activate = true, AddNumber = 200000 },
		GiveDrunk = { Activate = false, AddNumber = 200000 }
	},
	water = {
		itemType = { AnimeType = "Drink", Message = "Vous avez bu une bouteille d'eau" },
		GiveEat = { Activate = false, AddNumber = 200000 },
		GiveDrink = { Activate = true, AddNumber = 200000 },
		GiveDrunk = { Activate = false, AddNumber = 200000 }
	},
	coca = {
		itemType = { AnimeType = "Drink", Message = "Vous avez bu un Coca" },
		GiveEat = { Activate = false, AddNumber = 200000 },
		GiveDrink = { Activate = true, AddNumber = 200000 },
		GiveDrunk = { Activate = false, AddNumber = 200000 }
	},
	fanta = {
		itemType = { AnimeType = "Drink", Message = "Vous avez bu un Fanta" },
		GiveEat = { Activate = false, AddNumber = 200000 },
		GiveDrink = { Activate = true, AddNumber = 200000 },
		GiveDrunk = { Activate = false, AddNumber = 200000 }
	},
	redbull = {
		itemType = { AnimeType = "Drink", Message = "Vous avez bu un Redbull" },
		GiveEat = { Activate = true, AddNumber = 20000 },
		GiveDrink = { Activate = true, AddNumber = 200000 },
		GiveDrunk = { Activate = false, AddNumber = 200000 }
	},
	jus_orange = {
		itemType = { AnimeType = "Drink", Message = "Vous avez bu un Jus d'orange" },
		GiveEat = { Activate = false, AddNumber = 200000 },
		GiveDrink = { Activate = true, AddNumber = 200000 },
		GiveDrunk = { Activate = false, AddNumber = 200000 }
	},
	jungle_drink = {
		itemType = { AnimeType = "Drink", Message = "Vous avez bu un Jungle Drink" },
		GiveEat = { Activate = true, AddNumber = 200000 },
		GiveDrink = { Activate = true, AddNumber = 200000 },
		GiveDrunk = { Activate = false, AddNumber = 200000 }
	},
	cafe = {
		itemType = { AnimeType = "Drink", Message = "Vous avez bu un Café" },
		GiveEat = { Activate = true, AddNumber = 29000 },
		GiveDrink = { Activate = true, AddNumber = 200000 },
		GiveDrunk = { Activate = false, AddNumber = 200000 }
	},
	

	chips = {
		itemType = { AnimeType = "Eat", Message = "Vous avez manger un paquet de chips" },
		GiveEat = { Activate = true, AddNumber = 200000 },
		GiveDrink = { Activate = false, AddNumber = 200000 },
		GiveDrunk = { Activate = false, AddNumber = 200000 }
	},
	cake = {
		itemType = { AnimeType = "Eat", Message = "Vous avez manger un Cake" },
		GiveEat = { Activate = true, AddNumber = 200000 },
		GiveDrink = { Activate = false, AddNumber = 200000 },
		GiveDrunk = { Activate = false, AddNumber = 200000 }
	},
	granola = {
		itemType = { AnimeType = "Eat", Message = "Vous avez manger un paquet de granola" },
		GiveEat = { Activate = true, AddNumber = 200000 },
		GiveDrink = { Activate = false, AddNumber = 200000 },
		GiveDrunk = { Activate = false, AddNumber = 200000 }
	},
	kitkat_ball = {
		itemType = { AnimeType = "Eat", Message = "Vous avez manger un paquet de kitkat-ball" },
		GiveEat = { Activate = true, AddNumber = 200000 },
		GiveDrink = { Activate = false, AddNumber = 200000 },
		GiveDrunk = { Activate = false, AddNumber = 200000 }
	},
	donuts = {
		itemType = { AnimeType = "Eat", Message = "Vous avez manger un donuts" },
		GiveEat = { Activate = true, AddNumber = 200000 },
		GiveDrink = { Activate = false, AddNumber = 200000 },
		GiveDrunk = { Activate = false, AddNumber = 200000 }
	},
	sandwitch = {
		itemType = { AnimeType = "Eat", Message = "Vous avez manger un Sandwitch" },
		GiveEat = { Activate = true, AddNumber = 200000 },
		GiveDrink = { Activate = false, AddNumber = 200000 },
		GiveDrunk = { Activate = false, AddNumber = 200000 }
	},


	bourbon = {
		itemType = { AnimeType = "Drunk", Message = "Vous avez bu un Bourbon" },
		GiveEat = { Activate = false, AddNumber = 200000 },
		GiveDrink = { Activate = true, AddNumber = 10000 },
		GiveDrunk = { Activate = true, AddNumber = 290000 }
	},
	biere = {
		itemType = { AnimeType = "Drunk", Message = "Vous avez bu une Biére" },
		GiveEat = { Activate = false, AddNumber = 200000 },
		GiveDrink = { Activate = true, AddNumber = 12000 },
		GiveDrunk = { Activate = true, AddNumber = 100000 }
	},
	vodka = {
		itemType = { AnimeType = "Drunk", Message = "Vous avez bu une Vodka" },
		GiveEat = { Activate = false, AddNumber = 200000 },
		GiveDrink = { Activate = true, AddNumber = 5000 },
		GiveDrunk = { Activate = true, AddNumber = 250000 }
	},
	flash = {
		itemType = { AnimeType = "Drunk", Message = "Vous avez bu un Flash" },
		GiveEat = { Activate = false, AddNumber = 15000 },
		GiveDrink = { Activate = true, AddNumber = 15000 },
		GiveDrunk = { Activate = true, AddNumber = 85000 }
	},
	whisky = {
		itemType = { AnimeType = "Drunk", Message = "Vous avez bu un Whisky" },
		GiveEat = { Activate = false, AddNumber = 15000 },
		GiveDrink = { Activate = true, AddNumber = 15000 },
		GiveDrunk = { Activate = true, AddNumber = 200000 }
	},
	rose = {
		itemType = { AnimeType = "Drunk", Message = "Vous avez bu un Rose" },
		GiveEat = { Activate = false, AddNumber = 15000 },
		GiveDrink = { Activate = true, AddNumber = 12000 },
		GiveDrunk = { Activate = true, AddNumber = 100000 }
	},
	vin_rouge = {
		itemType = { AnimeType = "Drunk", Message = "Vous avez bu un Rose" },
		GiveEat = { Activate = false, AddNumber = 15000 },
		GiveDrink = { Activate = true, AddNumber = 12000 },
		GiveDrunk = { Activate = true, AddNumber = 160000 }
	},
	vin_blanc = {
		itemType = { AnimeType = "Drunk", Message = "Vous avez bu un Rose" },
		GiveEat = { Activate = false, AddNumber = 15000 },
		GiveDrink = { Activate = true, AddNumber = 12000 },
		GiveDrunk = { Activate = true, AddNumber = 100000 }
	}
}