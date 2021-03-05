Config = {}
Config.Locale = 'fr'


Config.NourritureList = {
	frite = {
		itemType = { AnimeType = "Eat", Message = "" },
		GiveEat = { Activate = true, AddNumber = 200000 },
		GiveDrink = { Activate = false, AddNumber = 200000 }
	},
	donuts = {
		itemType = { AnimeType = "Eat", Message = "Vous avez manger un donuts" },
		GiveEat = { Activate = true, AddNumber = 200000 },
		GiveDrink = { Activate = false, AddNumber = 200000 }
	},
	bread = {
		itemType = { AnimeType = "Eat", Message = "Vous avez manger du pain"}, --Eat, Drink
		GiveEat = { Activate = true, AddNumber = 200000 },
		GiveDrink = { Activate = true, AddNumber = 200000}
	}
}