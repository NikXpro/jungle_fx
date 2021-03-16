data = {}


data.shops = {
    Ltdcentrale = {
		MenuId = "Ltdcentrale", -- Identifiant unique pour chaque shop
        Settings = {
            TitreMenu = "",
            DescriptionMenu = "Choisissez vos articles !",
            MenuPosition = vector3(188.78202819824, -889.08819580078, 29.713069915771),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler au vendeur",
            TailleZone = 2.5,
            CustomBanner = { Activate = true, BannerDic = "root_cause", BannerName = "shopui_title_24-7" },
            JobRequired = { Activate = false, jobName = {} },
            blip = { Activate = true, property = false, BlipId = 52, BlipScale = 0.8, BlipColor = 1, BlipName = "LTD Sud" },
            ped = { Activate = true, PedHash = "u_m_y_baygor", Heanding = 249.01437377929688 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 1.5, y = 1.5, z = 0.5}, ViewDistance = 3.0 },
        },

		items = {
            bourbon = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Bourbon", --Nom item afficher
				Name = "bourbon", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 60 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
            jungledrink = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Jungle Drink", --Nom item afficher
				Name = "jungle-drink", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 40 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			donuts = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Donuts", --Nom item afficher
				Name = "donuts", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 25 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			granola = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Granola", --Nom item afficher
				Name = "granola", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 30 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			icetea = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Ice Tea", --Nom item afficher
				Name = "icetea", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 35 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			cafe = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Café", --Nom item afficher
				Name = "cafe", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 15 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			bouteilledeau = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Bouteille d'eau", --Nom item afficher
				Name = "water", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 30 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			jusdorange = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Jus D'orange", --Nom item afficher
				Name = "jus-orange", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 20 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			}
		}
	},
	Ltdcentrale2 = {
		MenuId = "Ltdcentrale2", -- Identifiant unique pour chaque shop
        Settings = {
            TitreMenu = "",
            DescriptionMenu = "Ai yo , choisis tes articles !",
            MenuPosition = vector3(-46.747253417969, -1757.9035644531, 28.420993804932),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler au vendeur",
            TailleZone = 2.5,
            CustomBanner = { Activate = true, BannerDic = "root_cause", BannerName = "shopui_title_24-7" },
            JobRequired = { Activate = false, jobName = {} },
            blip = { Activate = true, property = false, BlipId = 52, BlipScale = 0.8, BlipColor = 1, BlipName = "LTD Sud" },
            ped = { Activate = true, PedHash = "g_m_y_ballasout_01", Heanding = 50.03255462646484 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 1.5, y = 1.5, z = 0.5}, ViewDistance = 3.0 },
        },

		items = {
            bourbon = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Bourbon", --Nom item afficher
				Name = "bourbon", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 60 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
            jungledrink = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Jungle Drink", --Nom item afficher
				Name = "jungle-drink", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 40 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			fanta = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Fanta", --Nom item afficher
				Name = "fanta", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 20 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			redbull = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Red Bull", --Nom item afficher
				Name = "redbull", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 50 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			icetea = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Ice Tea", --Nom item afficher
				Name = "icetea", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 35 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			flash = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Flash", --Nom item afficher
				Name = "flash", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 40 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			cocacola = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Coca Cola", --Nom item afficher
				Name = "coca", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 28 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			jusdorange = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Jus D'orange", --Nom item afficher
				Name = "jus-orange", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 20 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			}
		}
	},
	Ltdcentrale3 = {
		MenuId = "Ltdcentrale3", -- Identifiant unique pour chaque shop
        Settings = {
            TitreMenu = "",
            DescriptionMenu = "Hello ! Choisissez vos articles !",
            MenuPosition = vector3(-1486.2574462891, -377.9235534668, 39.163433074951),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler au vendeur",
            TailleZone = 2.5,
            CustomBanner = { Activate = true, BannerDic = "root_cause", BannerName = "shopui_title_24-7" },
            JobRequired = { Activate = false, jobName = {} },
            blip = { Activate = true, property = false, BlipId = 52, BlipScale = 0.8, BlipColor = 1, BlipName = "LTD Sud" },
            ped = { Activate = true, PedHash = "csb_anita", Heanding = 128.6772003173828 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 1.5, y = 1.5, z = 0.5}, ViewDistance = 3.0 },
        },

		items = {
            cake = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Cake", --Nom item afficher
				Name = "cake", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 20 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
            jungledrink = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Jungle Drink", --Nom item afficher
				Name = "jungle-drink", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 40 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			fanta = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Fanta", --Nom item afficher
				Name = "fanta", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 20 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			donuts = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Donuts", --Nom item afficher
				Name = "donuts", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 20 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			icetea = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Ice Tea", --Nom item afficher
				Name = "icetea", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 35 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			bouteilledeau = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Bouteille d'eau", --Nom item afficher
				Name = "water", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 18 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			cocacola = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Coca Cola", --Nom item afficher
				Name = "coca", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 28 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			jusdorange = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Jus D'orange", --Nom item afficher
				Name = "jus-orange", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 20 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			sandwitch = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Sandwitch", --Nom item afficher
				Name = "sandwitch", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 30 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			}
		}
	},
	LTDLabo = {
		MenuId = "LTDLabo", -- Identifiant unique pour chaque shop
        Settings = {
            TitreMenu = "",
            DescriptionMenu = "Choisissez vos articles",
            MenuPosition = vector3(549.24560546875, 2669.7041015625, 41.156494140625),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler au vendeur",
            TailleZone = 2.5,
            CustomBanner = { Activate = true, BannerDic = "root_cause", BannerName = "shopui_title_24-7" },
            JobRequired = { Activate = false, jobName = {} },
            blip = { Activate = true, property = false, BlipId = 52, BlipScale = 0.8, BlipColor = 8, BlipName = "LTD Nord" },
            ped = { Activate = true, PedHash = "a_m_m_bevhills_01", Heanding = 39.84715270996094 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 1.5, y = 1.5, z = 0.5}, ViewDistance = 3.0 },
        },

		items = {
			icetea = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Ice Tea", --Nom item afficher
				Name = "icetea", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 30 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			Water = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Bouteille d'eau", --Nom item afficher
				Name = "water", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 25 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
            sandwitch = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Sandwitch", --Nom item afficher
				Name = "sandwitch", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 35 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
            Biere = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Biere", --Nom item afficher
				Name = "biere", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 20 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			Chips = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Paquet de chips", --Nom item afficher
				Name = "chips", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 30 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			Jungle_Drink = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Jungle Drink", --Nom item afficher
				Name = "jungle-drink", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 60 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			}
		}
	},
	LTDNordSandy = {
		MenuId = "LTDNordSandy", -- Identifiant unique pour chaque shop
        Settings = {
            TitreMenu = "",
            DescriptionMenu = "Choisissez vos articles",
            MenuPosition = vector3(1697.5747070312, 4923.2919921875, 41.063674926758),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler au vendeur",
            TailleZone = 2.5,
            CustomBanner = { Activate = true, BannerDic = "root_cause", BannerName = "shopui_title_ltdgasoline" },
            JobRequired = { Activate = false, jobName = {} },
            blip = { Activate = true, property = false, BlipId = 52, BlipScale = 0.8, BlipColor = 8, BlipName = "LTD Nord" },
            ped = { Activate = true, PedHash = "u_f_y_mistress", Heanding = 321.5635986328125 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 1.5, y = 1.5, z = 0.5}, ViewDistance = 3.0 },
        },

		items = {
			coca = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Coca-Cola", --Nom item afficher
				Name = "coca", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 35 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			Water = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Bouteille d'eau", --Nom item afficher
				Name = "water", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 25 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
            cake = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Gateaux", --Nom item afficher
				Name = "cake", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 40 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
            Vodka = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Bouteille de Vodka", --Nom item afficher
				Name = "vodka", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 60 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			Donuts = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Donuts", --Nom item afficher
				Name = "donuts", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 35 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			Jungle_Drink = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Jungle Drink", --Nom item afficher
				Name = "jungle-drink", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 60 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			redbull = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Red-bull", --Nom item afficher
				Name = "redbull", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 40 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			}
		}
	},
	LTDNordPaleto = {
		MenuId = "LTDNordPaleto", -- Identifiant unique pour chaque shop
        Settings = {
            TitreMenu = "",
            DescriptionMenu = "Choisissez vos articles",
            MenuPosition = vector3(1728.5665283203, 6416.865234375, 34.037227630615),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler au vendeur",
            TailleZone = 2.5,
            CustomBanner = { Activate = true, BannerDic = "root_cause", BannerName = "shopui_title_ltdgasoline" },
            JobRequired = { Activate = false, jobName = {} },
            blip = { Activate = true, property = false, BlipId = 52, BlipScale = 0.8, BlipColor = 8, BlipName = "LTD Nord" },
            ped = { Activate = true, PedHash = "s_m_m_cntrybar_01", Heanding = 245.7430419921875 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 1.5, y = 1.5, z = 0.5}, ViewDistance = 3.0 },
        },

		items = {
			Jus_orange = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Jus d'orange", --Nom item afficher
				Name = "jus-orange", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 30 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			Water = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Bouteille d'eau", --Nom item afficher
				Name = "water", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 25 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
            kitkat_ball = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "KitKat Ball", --Nom item afficher
				Name = "kitkat-ball", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 35 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
            Whisky = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Bouteille de Vodka", --Nom item afficher
				Name = "vodka", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 50 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			Chips = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Chips", --Nom item afficher
				Name = "chips", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 35 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			Jungle_Drink = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Jungle Drink", --Nom item afficher
				Name = "jungle-drink", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 60 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			Fanta = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Bouteille de Fanta", --Nom item afficher
				Name = "fanta", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 45},
                GradeRequired = { Activate = false, GradeNumber = {} },
			}
		}
	},
	quincaillerie = {
		MenuId = "quincaillerie", -- Identifiant unique pour chaque shop
        Settings = {
            TitreMenu = "",
            DescriptionMenu = "Hey ! Regarde ce qu'il te plait !",
            MenuPosition = vector3(172.91825866699, -1317.6169433594, 28.347202301025),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler au vendeur",
            TailleZone = 2.5,
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "shopui_title_arenawar" },
            JobRequired = { Activate = false, jobName = {} },
            blip = { Activate = true, property = false, BlipId = 478, BlipScale = 0.8, BlipColor = 69, BlipName = "Quincaillerie" },
            ped = { Activate = true, PedHash = "s_m_m_cntrybar_01", Heanding = 242.79974365234375 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 1.5, y = 1.5, z = 0.5}, ViewDistance = 3.0 },
        },

		items = {
            radio = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Radio", --Nom item afficher
				Name = "radio", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 200 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
            phone = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Téléphone", --Nom item afficher
				Name = "phone", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 150 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			boombox = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Boom Box", --Nom item afficher
				Name = "boombox", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 400 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			batte = {
				licence = "", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Batte De Baseball", --Nom item afficher
				Name = "weapon_bat", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 5000 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			clubdegolf = {
				licence = "", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Club De Golf", --Nom item afficher
				Name = "weapon_golfclub", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 4000 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			tablette = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Tablette", --Nom item afficher
				Name = "tablette", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 100 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			cleanglaise = {
				licence = "", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Clé Anglaise", --Nom item afficher
				Name = "weapon_wrench", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 3500 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			hachette = {
				licence = "", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Hachette", --Nom item afficher
				Name = "weapon_hatchet", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 6000 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			marteau = {
				licence = "", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Marteau", --Nom item afficher
				Name = "weapon_hammer", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 3000 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			jumelle = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Télémétre", --Nom item afficher
				Name = "jumelle", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 250 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			}
		}
	},
	ammunationsud = {
		MenuId = "ammunationsud", -- Identifiant unique pour chaque shop
        Settings = {
            TitreMenu = "",
            DescriptionMenu = "Bien le bonjour, dit moi tout !",
            MenuPosition = vector3(22.787034988403, -1105.5999755859, 28.797029495239),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler au vendeur",
            TailleZone = 2.5,
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "shopui_title_gunclub" },
            JobRequired = { Activate = false, jobName = {} },
            blip = { Activate = true, property = false, BlipId = 76, BlipScale = 0.8, BlipColor = 1, BlipName = "Ammunation Sud" },
            ped = { Activate = true, PedHash = "s_m_y_ammucity_01", Heanding = 158.53558349609375 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 1.5, y = 1.5, z = 0.5}, ViewDistance = 3.0 },
        },

		items = {
            pistolet = {
				licence = "ppa_2", --weapon, drive, dmv, ppa_1, ppa_2, ppa_3
				Type = "weapon", --weapon, item
				Label = "Pistolet", --Nom item afficher
				Name = "weapon_pistol", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 60000 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			pistoletvintage = {
				licence = "ppa_2", --weapon, drive, dmv, ppa_1, ppa_2, ppa_3
				Type = "weapon", --weapon, item
				Label = "Pistolet Vintage", --Nom item afficher
				Name = "weapon_vintagepistol", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 75000 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			tazer = {
				licence = "ppa_2", --weapon, drive, dmv, ppa_1, ppa_2, ppa_3
				Type = "weapon", --weapon, item
				Label = "Tazer", --Nom item afficher
				Name = "weapon_stungun", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 20000 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
            musquet = {
				licence = "ppa_3", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Fusil de chasse", --Nom item afficher
				Name = "weapon_musket", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 40000 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			couteau = {
				licence = "ppa_1", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Couteau", --Nom item afficher
				Name = "weapon_knife", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 5500 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			lampetorche = {
				licence = "ppa_1", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Lampe torche", --Nom item afficher
				Name = "weapon_flashlight", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 1500 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			machette = {
				licence = "ppa_1", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Machette", --Nom item afficher
				Name = "weapon_machete", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 6500 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			poingamericain = {
				licence = "ppa_1", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Poing Américain", --Nom item afficher
				Name = "weapon_knuckle", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 7000 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			crandarret = {
				licence = "ppa_1", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Cran d'arrét", --Nom item afficher
				Name = "weapon_switchblade", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 8000 },  -- money, black_money, bank
                GradeRequired = { Activate = false, GradeNumber = {} },
			}
		}
	},
	AmmunationNord = {
		MenuId = "AmmunationNord", -- Identifiant unique pour chaque shop
        Settings = {
            TitreMenu = "",
            DescriptionMenu = "Choisis ton petit bijoux",
            MenuPosition = vector3(-331.17782592773, 6085.3544921875, 30.454767227173),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler au vendeur",
            TailleZone = 2.5,
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "shopui_title_gunclub" },
            JobRequired = { Activate = false, jobName = {} },
            blip = { Activate = true, property = false, BlipId = 76, BlipScale = 0.8, BlipColor = 8, BlipName = "Ammunation Nord" },
            ped = { Activate = true, PedHash = "s_m_y_ammucity_01", Heanding = 223.4356689453125 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 1.5, y = 1.5, z = 0.5}, ViewDistance = 3.0 },
        },

		items = {
			weapon_knife = {
				licence = "ppa_1", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Couteau", --Nom item afficher
				Name = "weapon_knife", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 5500 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			weapon_flashlight = {
				licence = "ppa_1", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Lampe Torche", --Nom item afficher
				Name = "weapon_flashlight", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 1500 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
           weapon_machete = {
				licence = "ppa_1", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Machette", --Nom item afficher
				Name = "weapon_machete", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 6500 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
            weapon_knuckle = {
				licence = "ppa_1", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Poing americain", --Nom item afficher
				Name = "weapon_knuckle", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 7000 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			weapon_switchblade = {
				licence = "ppa_1", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Cran d'arret", --Nom item afficher
				Name = "weapon_switchblade", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 8000 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			weapon_pistol = {
				licence = "ppa_2", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Pistolet", --Nom item afficher
				Name = "weapon_pistol", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 60000 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			weapon_vintagepistol = {
				licence = "ppa_2", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Pistolet Vintage", --Nom item afficher
				Name = "weapon_vintagepistol", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 75000 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			weapon_musket = {
				licence = "ppa_3", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Fusil de chasse", --Nom item afficher
				Name = "weapon_musket", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 40000 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			}
		}
	},
	Prefecture = {
		MenuId = "Prefecture", -- Identifiant unique pour chaque shop
        Settings = {
            TitreMenu = "",
            DescriptionMenu = "Prefecture de Los Santos",
            MenuPosition = vector3(236.33782958984, -409.3505859375, 46.924308776855),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler a Jackeline",
            TailleZone = 2.5,
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "jungle_header" },
            JobRequired = { Activate = false, jobName = {} },
            blip = { Activate = true, property = false, BlipId = 498, BlipScale = 0.8, BlipColor = 16, BlipName = "Prefecture" },
            ped = { Activate = true, PedHash = "ig_abigail", Heanding = 334.257080078125 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 1.5, y = 1.5, z = 0.5}, ViewDistance = 3.0 },
        },

		items = {
			card_driver = {
				licence = "drive", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Permis de conduire voiture", --Nom item afficher
				Name = "card_driver", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 275 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			card_driver_moto = {
				licence = "drive_bike", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Permis de conduire moto", --Nom item afficher
				Name = "card_driver_moto", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 176 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			card_driver_camion = {
				licence = "drive_truck", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Permis de conduire camion", --Nom item afficher
				Name = "card_driver_camion", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 175 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			card_identity = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Carte d'identité", --Nom item afficher
				Name = "card_identity", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 250 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			card_ppa_1 = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Permis port d'arme blanche", --Nom item afficher
				Name = "card_ppa_1", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 5000 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			card_ppa_2 = {
				licence = "ppa_2", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Permis port d'arme", --Nom item afficher
				Name = "card_ppa_2", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 50000 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			card_ppa_3 = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Permis de chasse", --Nom item afficher
				Name = "card_ppa_3", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 70000 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			}
		}
	},


	ammunationAmmoSud = {
		MenuId = "ammunationAmmoSud", -- Identifiant unique pour chaque shop
        Settings = {
            TitreMenu = "",
            DescriptionMenu = "Objet en tout genre",
            MenuPosition = vector3(17.462205886841, -1108.7879638672, 28.797002792358),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler a robert",
            TailleZone = 2.5,
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "shopui_title_gunclub" },
            JobRequired = { Activate = false, jobName = {} },
            blip = { Activate = false, property = false, BlipId = 498, BlipScale = 0.8, BlipColor = 16, BlipName = "Prefecture" },
            ped = { Activate = true, PedHash = "s_m_y_ammucity_01", Heanding = 244.61495971679688 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 1.5, y = 1.5, z = 0.5}, ViewDistance = 3.0 },
        },

		items = {
			ammo_cal12 = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Boite de Cal .12", --Nom item afficher
				Name = "ammo_cal12", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 1952 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			ammo_9mm = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Boite de 9mm", --Nom item afficher
				Name = "ammo_9mm", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 2053 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			ammo_5_56mm = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Boite de 5.56mm", --Nom item afficher
				Name = "ammo_5.56mm", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 3067 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			},
			ammo_7_62mm = {
				licence = "", --weapon, drive, dmv...
				Type = "item", --weapon, item
				Label = "Boite de 7.62mm", --Nom item afficher
				Name = "ammo_7.62mm", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 4079 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			}
		}
	},
	parachuteNord = {
		MenuId = "parachuteNord", -- Identifiant unique pour chaque shop
        Settings = {
            TitreMenu = "",
            DescriptionMenu = "Equipement de parachutiste",
            MenuPosition = vector3(1702.189453125, 3290.5915527344, 47.921970367432),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler a Sebastien",
            TailleZone = 2.5,
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "casinoui_slots_impotent" },
            JobRequired = { Activate = false, jobName = {} },
            blip = { Activate = true, property = false, BlipId = 377, BlipScale = 1.0, BlipColor = 48, BlipName = "Magasin de parachutisme" },
            ped = { Activate = true, PedHash = "cs_dom", Heanding = 56.37761306762695 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 1.5, y = 1.5, z = 0.5}, ViewDistance = 3.0 },
        },

		items = {
			gadget_parachute = {
				licence = "", --weapon, drive, dmv...
				Type = "weapon", --weapon, item
				Label = "Parachute", --Nom item afficher
				Name = "gadget_parachute", --Nom item serveur
				Count = 1,
                Price = { Activate = true, MoneyType = "money", Amount = 300 },
                GradeRequired = { Activate = false, GradeNumber = {} },
			}
		}
	},

}