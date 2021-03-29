data = {}

data.jobMenu = {

    UNICONRfrigo = {
        MenuId = "UNICONRfrigo",
        MenuType = "coffre",
        Settings = {
            JobRequired = { Activate = true, jobName = {"Unicorn"} },
            TitreMenu = "",
            DescriptionMenu = "Frigo unicorn",
            DescriptionPrendre = "Prendre dans le frigo",
            DescriptionDeposer = "Deposer dans le frigo",
            Filtre = true,
            DataName = "society_unicorn_frigo",
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "jungle_header" },
            MenuPosition = vector3(129.57067871094, -1284.1968994141, 28.269393920898),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour ouvrir le frigo",
            TailleZone = 1.5,
            blip = { Activate = true, property = false, BlipId = 52, BlipScale = 0.8, BlipColor = 1, BlipName = "Unicorn" },
            ped = { Activate = false, PedHash = "csb_trafficwarden", Heanding = 39.84715270996094 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 1.5, y = 1.5, z = 0.5}, ViewDistance = 3.0 },
        },
        
    },

    UNICONRcoffre = {
        MenuId = "UNICONRcoffre",
        MenuType = "coffre",
        Settings = {
            JobRequired = { Activate = true, jobName = {"Unicorn"} },
            TitreMenu = "",
            DescriptionMenu = "Coffre unicorn",
            DescriptionPrendre = "Prendre dans le Coffre",
            DescriptionDeposer = "Deposer dans le Coffre",
            Filtre = true,
            DataName = "society_unicorn",
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "jungle_header" },
            MenuPosition = vector3(93.714965820312, -1291.1306152344, 29.263589859009),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour ouvrir le Coffre",
            TailleZone = 1.5,
            blip = { Activate = true, property = false, BlipId = 52, BlipScale = 0.8, BlipColor = 1, BlipName = "Unicorn" },
            ped = { Activate = false, PedHash = "csb_trafficwarden", Heanding = 39.84715270996094 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 1.5, y = 1.5, z = 0.5}, ViewDistance = 3.0 },
        },
        
    },

    UNICONRgarage = {
        MenuId = "UNICONRgarage",
        MenuType = "garage",
        Settings = {
            JobRequired = { Activate = true, jobName = {"Unicorn"} },
            TitreMenu = "",
            DescriptionMenu = "Garage unicorn",
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "jungle_header" },
            MenuPosition = vector3(135.8239440918, -1279.14453125, 28.369115829468),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour ouvrir le garage",
            TailleZone = 1.5,
            blip = { Activate = false, property = false, BlipId = 410, BlipScale = 0.8, BlipColor = 52, BlipName = "Location Bateau" },
            ped = { Activate = false, PedHash = "a_m_m_mlcrisis_01", Heanding = 292.5040283203125 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 2.0, y = 2.0, z = 0.5}, ViewDistance = 10 }
        },
        
        DeleterPoint = {
            Coords = vector3(-852.74603271484, -1335.9423828125, 0.78264832496643),
            TailleZone = 2.5,
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour rendre le vehicule"
        },
        SpawnPoints = {
            { pos = vector3(137.54885864258, -1270.8289794922, 29.069229125977), heading = 100.84298706054688},
            { pos = vector3(129.23895263672, -1272.9135742188, 29.077905654907), heading = 107.13339996338}
        },

        VehiculeList = {
            baller4 = { vehiculeName = "baller4", vehiculeLabel = "Baller", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = false, price = 250}},
            pbus2 = { vehiculeName = "pbus2", vehiculeLabel = "Bus de festival", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = false, price = 250}},
            tourbus = { vehiculeName = "tourbus", vehiculeLabel = "Mini Bus", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = false, price = 250}}
        }
        
    },

    LSPDarmurerie = {
        MenuId = "policeArmurerie",
        MenuType = "armurerie",
        Settings = {
            JobRequired = { Activate = true, jobName = {"police"} },
            TitreMenu = "",
            ActiveMenu = {
                WeaponMenu = {
                    Activate = true,
                    MenuName = "Armes"
                },
                ItemMenu = {
                    Activate = true,
                    MenuName = "Autres"
                }
            },
            DescriptionMenu = "Armurerie LSPD",
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "jungle_header" },
            MenuPosition = vector3(480.37353515625, -996.71826171875, 29.689744949341),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler a kuklinski",
            TailleZone = 2.5,
            blip = { Activate = false, property = false, BlipId = 52, BlipScale = 0.8, BlipColor = 1, BlipName = "LTD Sud" },
            ped = { Activate = true, PedHash = "csb_trafficwarden", Heanding = 86.09723663330078 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 2.0, y = 2.0, z = 0.5}, ViewDistance = 10 }
        },

        items = {
			fireextinguisher = {
                Type = "weapon",
                GradeRequired = { Activate = false, GradeNumber = {10} },
				Label = "Extincteur",
                Name = "weapon_fireextinguisher",
                Count = 1000,
				Price = {
                    MoneyType = "money",
                    Prix = 15
                }
            },
            flashlight = {
                Type = "weapon",
                GradeRequired = { Activate = false, GradeNumber = {10} },
				Label = "Lampe torche",
                Name = "weapon_flashlight",
                Count = 1,
				Price = {
                    MoneyType = "money",
                    Prix = 15
                }
            },
            stungun = {
                Type = "weapon",
                GradeRequired = { Activate = false, GradeNumber = {10} },
				Label = "Tazer",
                Name = "weapon_stungun",
                Count = 1,
				Price = {
                    MoneyType = "money",
                    Prix = 15
                }
            },
            nightstick = {
                Type = "weapon",
                GradeRequired = { Activate = false, GradeNumber = {10} },
				Label = "Mattraque",
                Name = "weapon_nightstick",
                Count = 1,
				Price = {
                    MoneyType = "money",
                    Prix = 15
                }
            },
            pistol_mk2 = {
                Type = "weapon",
                GradeRequired = { Activate = false, GradeNumber = {10} },
				Label = "Pistolet MK2",
                Name = "weapon_pistol_mk2",
                Count = 1000,
				Price = {
                    MoneyType = "money",
                    Prix = 15
                }
            },
            combatpistol = {
                Type = "weapon",
                GradeRequired = { Activate = false, GradeNumber = {10} },
				Label = "Pistolet de combat",
                Name = "weapon_combatpistol",
                Count = 1000,
				Price = {
                    MoneyType = "money",
                    Prix = 15
                }
            },
            pumpshotgun_mk2 = {
                Type = "weapon",
                GradeRequired = { Activate = false, GradeNumber = {10} },
				Label = "Fusil a pompe MK2",
                Name = "weapon_pumpshotgun_mk2",
                Count = 1000,
				Price = {
                    MoneyType = "money",
                    Prix = 15
                }
            },
            pumpshotgun = {
                Type = "weapon",
                GradeRequired = { Activate = false, GradeNumber = {10} },
				Label = "Fusil a pompe",
                Name = "weapon_pumpshotgun",
                Count = 1000,
				Price = {
                    MoneyType = "money",
                    Prix = 15
                }
            },
            carbinerifle_mk2 = {
                Type = "weapon",
                GradeRequired = { Activate = false, GradeNumber = {10} },
				Label = "Carabine MK2",
                Name = "weapon_carbinerifle_mk2",
                Count = 1000,
				Price = {
                    MoneyType = "money",
                    Prix = 15
                }
            },
            carbinerifle = {
                Type = "weapon",
                GradeRequired = { Activate = false, GradeNumber = {10} },
				Label = "Carabine",
                Name = "weapon_carbinerifle",
                Count = 1000,
				Price = {
                    MoneyType = "money",
                    Prix = 15
                }
            },
            specialcarbine = {
                Type = "weapon",
                GradeRequired = { Activate = false, GradeNumber = {10} },
				Label = "Carabine spécial",
                Name = "weapon_specialcarbine",
                Count = 1000,
				Price = {
                    MoneyType = "money",
                    Prix = 15
                }
            },
            heavysniper_mk2 = {
                Type = "weapon",
                GradeRequired = { Activate = false, GradeNumber = {10} },
				Label = "Sniper lourd MK2",
                Name = "weapon_heavysniper_mk2",
                Count = 1000,
				Price = {
                    MoneyType = "money",
                    Prix = 15
                }
            },
            sniperrifle = {
                Type = "weapon",
                GradeRequired = { Activate = false, GradeNumber = {10} },
				Label = "Sniper",
                Name = "weapon_sniperrifle",
                Count = 1000,
				Price = {
                    MoneyType = "money",
                    Prix = 15
                }
			},
			gasmask = {
                Type = "item",
                GradeRequired = { Activate = false, GradeNumber = {5} },
				Label = "Masque a gaz",
				Name = "gasmask",
                Count = 1,
                Price = {
                    MoneyType = "society",
                    Prix = 186
                }
				
			},
            ammo_9mm = {
                Type = "item",
                GradeRequired = { Activate = false, GradeNumber = {5} },
				Label = "Boite de 9mm",
				Name = "ammo_9mm",
                Count = 1,
                Price = {
                    MoneyType = "society",
                    Prix = 254
                }
				
			},
            ammo_cal12 = {
                Type = "item",
                GradeRequired = { Activate = false, GradeNumber = {5} },
				Label = "Boite de cal .12",
				Name = "ammo_cal12",
                Count = 1,
                Price = {
                    MoneyType = "society",
                    Prix = 231
                }
				
			},
            ammo_5_56mm = {
                Type = "item",
                GradeRequired = { Activate = false, GradeNumber = {5} },
				Label = "Boite de cal .12",
				Name = "ammo_5.56mm",
                Count = 1,
                Price = {
                    MoneyType = "society",
                    Prix = 268
                }
				
			},
            ammo_7_62mm = {
                Type = "item",
                GradeRequired = { Activate = false, GradeNumber = {5} },
				Label = "Boite de 7.62mm",
				Name = "ammo_7.62mm",
                Count = 1,
                Price = {
                    MoneyType = "society",
                    Prix = 272
                }
				
			}
		}
        
    },

    MECHANICvestiaire = {
        MenuId = "MECHANICvestiaire",
        MenuType = "vestiaire",
        Settings = {
            JobRequired = { Activate = true, jobName = {"mechanic"} },
            TitreMenu = "",
            DescriptionMenu = "Vestiaire Mécano",
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "jungle_header" },
            MenuPosition = vector3(549.92681884766, -182.72499084473, 53.493244171143),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour ouvrir le vestiaire",
            TailleZone = 3.5,
            blip = { Activate = false, property = false, BlipId = 52, BlipScale = 0.8, BlipColor = 1, BlipName = "LTD Sud" },
            ped = { Activate = false, PedHash = "csb_trafficwarden", Heanding = 39.84715270996094 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 3.5, y = 3.5, z = 1.0}, ViewDistance = 5 },
            TenueRemove = {
                Activate = true,
                KevlarRemover = false,
                ButtonName= "Tenue Civil",
                RightLabel = "👔"
            }
        },

        TenueList = {
            mecano = {
                tenuLabel = "Tenue Mécano",
                RightLabel = "🦺",
                GradeRequired = { Activate = true, GradeNumber = {0} },
                Kevlar = { Activate = false, KevlarSize = 0 },
                Tenue =  {
                    male = {
                        ['tshirt_1'] = 15,      ['tshirt_2'] = 0,
                        ['torso_1'] = 66,      ['torso_2'] = 1,
                        ['decals_1'] = 0,       ['decals_2'] = 0,
                        ['arms'] = 12,
                        ['pants_1'] = 39,       ['pants_2'] = 1,
                        ['shoes_1'] = 24,       ['shoes_2'] = 0,
                    },
                    female = {
                        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                        ['torso_1'] = 60,   ['torso_2'] = -1,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 9,
                        ['pants_1'] = 39,   ['pants_2'] = 1,
                        ['shoes_1'] = 25,   ['shoes_2'] = 0,
                    }
                }
                
            },
            mecano_intermediaire = {
                tenuLabel = "Tenue Mécano intermédiaire",
                RightLabel = "🦺",
                GradeRequired = {Activate = true,GradeNumber = {1}},
                Kevlar = {Activate = false,KevlarSize = 0},
                Tenue =  {
                    male = {
                        ['tshirt_1'] = 90,  ['tshirt_2'] = 0,
                        ['torso_1'] = 66,   ['torso_2'] = 2,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 12,
                        ['pants_1'] = 39,   ['pants_2'] = 2,
                        ['shoes_1'] = 24,   ['shoes_2'] = 0,
                    },
                    female = {
                        ['tshirt_1'] = 54,  ['tshirt_2'] = 0,
                        ['torso_1'] = 60,   ['torso_2'] = 2,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 9,
                        ['pants_1'] = 39,   ['pants_2'] = 2,
                        ['shoes_1'] = 25,   ['shoes_2'] = 0,
                    }
                }
                
            },
            mecano_experimente = {
                tenuLabel = "Tenue Mécano expérimenté",
                RightLabel = "🦺",
                GradeRequired = {Activate = true,GradeNumber = {2}},
                Kevlar = {Activate = false,KevlarSize = 0},
                Tenue =  {
                    male = {
                        ['tshirt_1'] = 89,  ['tshirt_2'] = 0,
                        ['torso_1'] = 66,   ['torso_2'] = 0,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 12,
                        ['pants_1'] = 39,   ['pants_2'] = 0,
                        ['shoes_1'] = 24,   ['shoes_2'] = 0,
                    },
                    female = {
                        ['tshirt_1'] = 56,  ['tshirt_2'] = 0,
                        ['torso_1'] = 60,   ['torso_2'] = 0,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 9,
                        ['pants_1'] = 39,   ['pants_2'] = 0,
                        ['shoes_1'] = 25,   ['shoes_2'] = 0,
                    }
                }
            },
            mecano_chef = {
                tenuLabel = "Tenue Chef d'équipe",
                RightLabel = "🦺",
                GradeRequired = {Activate = true,GradeNumber = {3}},
                Kevlar = {Activate = false,KevlarSize = 0},
                Tenue =  {
                    male = {
                        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                        ['torso_1'] = 66,   ['torso_2'] = 0,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 12,
                        ['pants_1'] = 39,   ['pants_2'] = 0,
                        ['shoes_1'] = 24,   ['shoes_2'] = 0,
                    },
                    female = {
                        ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
                        ['torso_1'] = 60,   ['torso_2'] = 0,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 9,
                        ['pants_1'] = 39,   ['pants_2'] = 0,
                        ['shoes_1'] = 25,   ['shoes_2'] = 0,
                    }
                }
            },
        }
    },

    EMSvestiaire = {
        MenuId = "EMSvestiaire",
        MenuType = "vestiaire",
        Settings = {
            JobRequired = { Activate = true, jobName = {"ambulance"} },
            TitreMenu = "",
            DescriptionMenu = "Vestiaire LSMS",
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "jungle_header" },
            MenuPosition = vector3(300.36486816406, -598.44525146484, 42.284084320068),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour ouvrir le vestiaire",
            TailleZone = 2.5,
            blip = { Activate = false, property = false, BlipId = 52, BlipScale = 0.8, BlipColor = 1, BlipName = "LTD Sud" },
            ped = { Activate = false, PedHash = "csb_trafficwarden", Heanding = 39.84715270996094 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 4.0, y = 4.0, z = 1.0}, ViewDistance = 5 },
            TenueRemove = {
                Activate = true,
                KevlarRemover = false,
                ButtonName= "Tenue Civil",
                RightLabel = "👔"
            }
        },

        TenueList = {
            manche_longue = {
                tenuLabel = "Tenue Manche longue",
                RightLabel = "🥼",
                GradeRequired = { Activate = false, GradeNumber = {0} },
                Kevlar = { Activate = false, KevlarSize = 0 },
                Tenue =  {
                    male = {
                        ['tshirt_1'] = 15,      ['tshirt_2'] = 0,
                        ['torso_1'] = 75,      ['torso_2'] = 3,
                        ['decals_1'] = 0,       ['decals_2'] = 0,
                        ['arms'] = 88,
                        ['pants_1'] = 24,       ['pants_2'] = 2,
                        ['shoes_1'] = 97,       ['shoes_2'] = 0,
                        ['helmet_1'] = 122,      ['helmet_2'] = 30,
                        ['chain_1'] = 0,        ['chain_2'] = 0,
                        ['mask_1'] = -1,        ['mask_2'] = 0,
                        ['bproof_1'] = 0,      ['bproof_2'] = 0,
                        ['ears_1'] = 2,         ['ears_2'] = 0,
                        ['bags_1'] = 0,         ['bags_2'] = 0,
                    },
                    female = {
                        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                        ['torso_1'] = 26,   ['torso_2'] = 2,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 101,
                        ['pants_1'] = 6,   ['pants_2'] = 0,
                        ['shoes_1'] = 101,   ['shoes_2'] = 0,
                        ['helmet_1'] = 121,  ['helmet_2'] = 14,
                        ['chain_1'] = 0,    ['chain_2'] = 0,
                        ['mask_1'] = -1,  ['mask_2'] = 0,
                        ['bproof_1'] = 0,  ['bproof_2'] = 0,
                        ['ears_1'] = 2,     ['ears_2'] = 0,
                        ['bags_1'] = 0,    ['bags_2'] = 0,
                    }
                }
                
            },
            manche_courte = {
                tenuLabel = "Tenue Manche courte",
                RightLabel = "🥼",
                GradeRequired = {Activate = false,GradeNumber = {5}},
                Kevlar = {Activate = false,KevlarSize = 0},
                Tenue =  {
                    male = {
                        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                        ['torso_1'] = 74,   ['torso_2'] = 3,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 85,
                        ['pants_1'] = 24,   ['pants_2'] = 2,
                        ['shoes_1'] = 97,   ['shoes_2'] = 0,
                        ['helmet_1'] = 122,  ['helmet_2'] = 30,
                        ['chain_1'] = -1,    ['chain_2'] = 0,
                        ['mask_1'] = -1,  ['mask_2'] = 0,
                        ['bproof_1'] = 0,  ['bproof_2'] = 0,
                        ['ears_1'] = 5,     ['ears_2'] = 4,
                        ['bags_1'] = 0,    ['bags_2'] = 0
                    },
                    female = {
                        ['tshirt_1'] = 15,      ['tshirt_2'] = 0,
                        ['torso_1'] =25,       ['torso_2'] = 2,
                        ['decals_1'] = 0,       ['decals_2'] = 0,
                        ['arms'] = 109,
                        ['pants_1'] = 6,       ['pants_2'] = 0,
                        ['shoes_1'] = 101,       ['shoes_2'] = 0,
                        ['helmet_1'] = 121,      ['helmet_2'] = 14,
                        ['chain_1'] = 0,        ['chain_2'] = 0,
                        ['mask_1'] = -1,        ['mask_2'] = 0,
                        ['bproof_1'] = 0,      ['bproof_2'] = 0,
                        ['ears_1'] = 2,         ['ears_2'] = 0,
                        ['bags_1'] = 0,         ['bags_2'] = 0,
                    }
                }
                
            },
            chirurgie = {
                tenuLabel = "Tenue de chirurgie",
                RightLabel = "🥼",
                GradeRequired = {Activate = false,GradeNumber = {5}},
                Kevlar = {Activate = false,KevlarSize = 0},
                Tenue =  {
                    male = {
                        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                        ['torso_1'] = 86,   ['torso_2'] = 2,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 85,
                        ['pants_1'] = 45,   ['pants_2'] = 2,
                        ['shoes_1'] = 42,   ['shoes_2'] = 2,
                        ['helmet_1'] = -1,  ['helmet_2'] = 0,
                        ['chain_1'] = 30,    ['chain_2'] = 0,
                        ['mask_1'] = 56,  ['mask_2'] = 0,
                        ['bproof_1'] = 0,  ['bproof_2'] = 0,
                        ['ears_1'] = 5,     ['ears_2'] = 4,
                        ['bags_1'] = 0,    ['bags_2'] = 0
                    },
                    female = {
                        ['tshirt_1'] = 15,      ['tshirt_2'] = 0,
                        ['torso_1'] =26,       ['torso_2'] = 6,
                        ['decals_1'] = 0,       ['decals_2'] = 0,
                        ['arms'] = 101,
                        ['pants_1'] = 37,       ['pants_2'] = 5,
                        ['shoes_1'] = 10,       ['shoes_2'] = 1,
                        ['helmet_1'] = -1,      ['helmet_2'] = 0,
                        ['chain_1'] = 14,        ['chain_2'] = 0,
                        ['mask_1'] = 56,        ['mask_2'] = 0,
                        ['bproof_1'] = 0,      ['bproof_2'] = 0,
                        ['ears_1'] = 2,         ['ears_2'] = 0,
                        ['bags_1'] = 0,         ['bags_2'] = 0,
                    }
                }  
            },
            chef = {
                tenuLabel = "Tenue Médecin chef",
                RightLabel = "🥼",
                GradeRequired = {Activate = false,GradeNumber = {5}},
                Kevlar = {Activate = false,KevlarSize = 0},
                Tenue =  {
                    male = {
                        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
                        ['torso_1'] = 75,   ['torso_2'] = 3,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 88,
                        ['pants_1'] = 24,   ['pants_2'] = 2,
                        ['shoes_1'] = 97,   ['shoes_2'] = 0,
                        ['helmet_1'] = 122,  ['helmet_2'] = 0,
                        ['chain_1'] = 30,    ['chain_2'] = 0,
                        ['mask_1'] = 0,  ['mask_2'] = 0,
                        ['bproof_1'] = 34,  ['bproof_2'] = 0,
                        ['ears_1'] = 5,     ['ears_2'] = 4,
                        ['bags_1'] = 0,    ['bags_2'] = 0
                    },
                    female = {
                        ['tshirt_1'] = 15,      ['tshirt_2'] = 0,
                        ['torso_1'] =26,       ['torso_2'] = 6,
                        ['decals_1'] = 0,       ['decals_2'] = 0,
                        ['arms'] = 101,
                        ['pants_1'] = 37,       ['pants_2'] = 5,
                        ['shoes_1'] = 10,       ['shoes_2'] = 1,
                        ['helmet_1'] = -1,      ['helmet_2'] = 0,
                        ['chain_1'] = 14,        ['chain_2'] = 0,
                        ['mask_1'] = 56,        ['mask_2'] = 0,
                        ['bproof_1'] = 0,      ['bproof_2'] = 0,
                        ['ears_1'] = 2,         ['ears_2'] = 0,
                        ['bags_1'] = 0,         ['bags_2'] = 0,
                    }
                }
                
            }
        }
        
    },
    
    TABACvestiaire = {
        MenuId = "TABACvestiaire",
        MenuType = "vestiaire",
        Settings = {
            JobRequired = { Activate = true, jobName = {"tabac"} },
            TitreMenu = "",
            DescriptionMenu = "Vestiaire Tabac",
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "jungle_header" },
            MenuPosition = vector3(2355.9509277344, 3144.3442382812, 47.208740234375),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour ouvrir le vestiaire",
            TailleZone = 2.5,
            blip = { Activate = false, property = false, BlipId = 52, BlipScale = 0.8, BlipColor = 1, BlipName = "LTD Sud" },
            ped = { Activate = false, PedHash = "csb_trafficwarden", Heanding = 39.84715270996094 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 4.0, y = 4.0, z = 1.0}, ViewDistance = 5 },
            TenueRemove = {
                Activate = true,
                KevlarRemover = false,
                ButtonName= "Tenue Civil",
                RightLabel = "👔"
            }
        },

        TenueList = {
            travail = {
                tenuLabel = "Tenue de travail",
                RightLabel = "👕",
                GradeRequired = { Activate = false, GradeNumber = {0} },
                Kevlar = { Activate = false, KevlarSize = 0 },
                Tenue =  {
                    male = {
                        ['tshirt_1'] = 15,      ['tshirt_2'] = 0,
                        ['torso_1'] = 95,      ['torso_2'] = 2,
                        ['decals_1'] = 0,       ['decals_2'] = 0,
                        ['arms'] = 26,
                        ['pants_1'] = 49,       ['pants_2'] = 1,
                        ['shoes_1'] = 12,       ['shoes_2'] = 0
                    },
                    female = {
                        ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
                        ['torso_1'] = 86,   ['torso_2'] = 1,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 9,
                        ['pants_1'] = 51,   ['pants_2'] = 4,
                        ['shoes_1'] = 25,   ['shoes_2'] = 0
                    }
                }
                
            }
        }
    },

    TAXIvestiaire = {
        MenuId = "TAXIvestiaire",
        MenuType = "vestiaire",
        Settings = {
            JobRequired = { Activate = true, jobName = {"taxi"} },
            TitreMenu = "",
            DescriptionMenu = "Vestiaire Taxi",
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "jungle_header" },
            MenuPosition = vector3(888.22088623047, -153.97038269043, 76.891059875488),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour ouvrir le vestiaire",
            TailleZone = 1.5,
            blip = { Activate = false, property = false, BlipId = 52, BlipScale = 0.8, BlipColor = 1, BlipName = "LTD Sud" },
            ped = { Activate = false, PedHash = "csb_trafficwarden", Heanding = 39.84715270996094 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 1.5, y = 1.5, z = 1.0}, ViewDistance = 5 },
            TenueRemove = {
                Activate = true,
                KevlarRemover = false,
                ButtonName= "Tenue Civil",
                RightLabel = "👔"
            }
        },

        TenueList = {
            travail = {
                tenuLabel = "Tenue de travail",
                RightLabel = "👕",
                GradeRequired = { Activate = false, GradeNumber = {0} },
                Kevlar = { Activate = false, KevlarSize = 0 },
                Tenue =  {
                    male = {
                        ['tshirt_1'] = 15,      ['tshirt_2'] = 0,
                        ['torso_1'] = 14,      ['torso_2'] = 1,
                        ['decals_1'] = 0,       ['decals_2'] = 0,
                        ['arms'] = 19,
                        ['pants_1'] = 28,       ['pants_2'] = 1,
                        ['shoes_1'] = 9,       ['shoes_2'] = 12,
                        ['helmet_1'] = 76,      ['helmet_2'] = 4,
                    },
                    female = {
                        ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
                        ['torso_1'] = 14,   ['torso_2'] = 11,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 31,
                        ['pants_1'] = 133,   ['pants_2'] = 0,
                        ['shoes_1'] = 42,   ['shoes_2'] = 2,
                        ['helmet_1'] = 75,      ['helmet_2'] = 4,
                    }
                }
                
            }
        }
    },

    LocationBateauPort = {
        MenuId = "LocationBateauPort",
        MenuType = "garage",
        Settings = {
            JobRequired = { Activate = false, jobName = {} },
            TitreMenu = "",
            DescriptionMenu = "Location Bateau sud",
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "jungle_header" },
            MenuPosition = vector3(-858.16070556641, -1342.5528564453, 0.6051691770554),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler a paul",
            TailleZone = 1.5,
            blip = { Activate = true, property = false, BlipId = 410, BlipScale = 0.8, BlipColor = 52, BlipName = "Location Bateau" },
            ped = { Activate = true, PedHash = "a_m_m_mlcrisis_01", Heanding = 292.5040283203125 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 2.0, y = 2.0, z = 0.5}, ViewDistance = 10 }
        },
        
        DeleterPoint = {
            Coords = vector3(-852.74603271484, -1335.9423828125, 0.78264832496643),
            TailleZone = 2.5,
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour rendre le vehicule"
        },
        SpawnPoints = {
            { pos = vector3(-849.79968261719,-1344.1215820312,0.78264832496643), heading = 109.05434417725},
            { pos = vector3(-852.74603271484,-1335.9423828125,0.78264832496643), heading = 107.13339996338}
        },

        VehiculeList = {
            dinghy = { vehiculeName = "dinghy", vehiculeLabel = "Dinghy", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 250 } },
            jetmax = { vehiculeName = "jetmax", vehiculeLabel = "Jetmax", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 250 } },
            marquis = { vehiculeName = "marquis", vehiculeLabel = "Marquis(voilier)", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 1000 } },
            speeder = { vehiculeName = "speeder", vehiculeLabel = "Speeder", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 250 } },
            squalo = { vehiculeName = "squalo", vehiculeLabel = "Squalo", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 250 } },
            toro = { vehiculeName = "toro", vehiculeLabel = "Toro", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 250 } },
            suntrap = { vehiculeName = "suntrap", vehiculeLabel = "Suntrap", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 250 } },
            tropic = { vehiculeName = "tropic", vehiculeLabel = "Tropic", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 250 } },
            longfin = { vehiculeName = "longfin", vehiculeLabel = "longfin", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 1258 } }
        }
        
    },

    LocationBateauLac = {
        MenuId = "LocationBateauLac",
        MenuType = "garage",
        Settings = {
            JobRequired = { Activate = false, jobName = {} },
            TitreMenu = "",
            DescriptionMenu = "Location Bateau sud",
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "jungle_header" },
            MenuPosition = vector3(1440.7885742188, 3753.3828125, 30.986442565918),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler a Rebecca",
            TailleZone = 1.5,
            blip = { Activate = true, property = false, BlipId = 410, BlipScale = 0.8, BlipColor = 52, BlipName = "Location Bateau" },
            ped = { Activate = true, PedHash = "a_f_y_juggalo_01", Heanding = 19.0543041229248 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 2.0, y = 2.0, z = 0.5}, ViewDistance = 10 }
        },
        
        DeleterPoint = {
            Coords = vector3(1457.4848632812, 3792.5363769531, 30.948211669922),
            TailleZone = 4.5,
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour rendre le vehicule"
        },
        SpawnPoints = {
            { pos = vector3(1469.9578857422, 3787.5505371094, 30.003215789795), heading = 9.30932426452636},
            { pos = vector3(1442.4632568359, 3793.5329589844, 30.507213592529), heading = 317.2590942382813}
        },

        VehiculeList = {
            dinghy = { vehiculeName = "dinghy", vehiculeLabel = "Dinghy", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 250 } },
            jetmax = { vehiculeName = "jetmax", vehiculeLabel = "Jetmax", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 250 } },
            marquis = { vehiculeName = "marquis", vehiculeLabel = "Marquis(voilier)", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 1000 } },
            speeder = { vehiculeName = "speeder", vehiculeLabel = "Speeder", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 250 } },
            squalo = { vehiculeName = "squalo", vehiculeLabel = "Squalo", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 250 } },
            toro = { vehiculeName = "toro", vehiculeLabel = "Toro", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 250 } },
            suntrap = { vehiculeName = "suntrap", vehiculeLabel = "Suntrap", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 250 } },
            tropic = { vehiculeName = "tropic", vehiculeLabel = "Tropic", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 250 } },
            longfin = { vehiculeName = "longfin", vehiculeLabel = "longfin", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 1258 } }
        }
        
    },

    LocationJetski = {
        MenuId = "LocationJetski",
        MenuType = "garage",
        Settings = {
            JobRequired = { Activate = false, jobName = {} },
            TitreMenu = "",
            DescriptionMenu = "Location Jet ski",
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "jungle_header" },
            MenuPosition = vector3(-1799.6520996094, -1223.4990234375, 0.6016956567764),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler a pierre",
            TailleZone = 1.5,
            blip = { Activate = true, property = false, BlipId = 471, BlipScale = 0.8, BlipColor = 52, BlipName = "Location Jet ski" },
            ped = { Activate = true, PedHash = "s_m_y_baywatch_01", Heanding = 156.94375610351565 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 2.0, y = 2.0, z = 0.5}, ViewDistance = 10 }
        },
        
        DeleterPoint = {
            Coords = vector3(-1797.7150878906, -1233.8288574219, 0.43580636382103),
            TailleZone = 2.5,
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour rendre le vehicule"
        },
        SpawnPoints = {
            { pos = vector3(-1794.7724609375, -1227.7983398438, 0.11282226443291), heading = 207.638916015625},
            { pos = vector3(-1799.5052490234, -1232.42578125, 0.11282226443291), heading = 229.55694580078128}
        },

        VehiculeList = {
            dinghy = { vehiculeName = "seashark", vehiculeLabel = "Jet ski", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 152 } },
            jetmax = { vehiculeName = "seashark3", vehiculeLabel = "Jet ski de luxe", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 184 } },
        }
        
    },
    LocationSpawn = {
        MenuId = "LocationSpawn",
        MenuType = "garage",
        Settings = {
            JobRequired = { Activate = false, jobName = {} },
            TitreMenu = "",
            DescriptionMenu = "Location Touristique",
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "jungle_header" },
            MenuPosition = vector3(-765.04125976562, -1316.2799072266, 4.1502728462219),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler a Jack",
            TailleZone = 1.5,
            blip = { Activate = true, property = false, BlipId = 669, BlipScale = 0.8, BlipColor = 52, BlipName = "Location Touristique" },
            ped = { Activate = true, PedHash = "ig_money", Heanding = 226.68185424804688 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 2.0, y = 2.0, z = 0.5}, ViewDistance = 10 }
        },
        
        DeleterPoint = {
            Coords = vector3(-761.33508300781, -1320.1007080078, 5.000382900238),
            TailleZone = 5.0,
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour rendre le vehicule"
        },
        SpawnPoints = {
            { pos = vector3(-760.55096435547, -1319.6809082031, 5.0003795623779), heading = 324.5992126464844},
            { pos = vector3(-764.60791015625, -1324.7984619141, 5.0003805160522), heading = 324.5992126464844}
        },

        VehiculeList = {
            dinghy = { vehiculeName = "bifta", vehiculeLabel = "Bifta", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 98 } },
            jetmax = { vehiculeName = "enduro", vehiculeLabel = "Enduro", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 94 } },
        }
        
    },
    LocationVelo = {
        MenuId = "LocationVelo",
        MenuType = "garage",
        Settings = {
            JobRequired = { Activate = false, jobName = {} },
            TitreMenu = "",
            DescriptionMenu = "Location Velo",
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "jungle_header" },
            MenuPosition = vector3(-425.32171630859, 1209.6101074219, 324.75830078125),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler a marine",
            TailleZone = 1.5,
            blip = { Activate = true, property = false, BlipId = 559, BlipScale = 0.8, BlipColor = 52, BlipName = "Location Velo" },
            ped = { Activate = true, PedHash = "ig_maryann", Heanding = 257.871826171875 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 2.0, y = 2.0, z = 0.5}, ViewDistance = 10 }
        },
        
        DeleterPoint = {
            Coords = vector3(-418.84539794922, 1206.2735595703, 325.64169311523),
            TailleZone = 5.0,
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour rendre le velo"
        },
        SpawnPoints = {
            { pos = vector3(-428.95590209961, 1200.8121337891, 325.75830078125), heading = 226.28628540039065},
            { pos = vector3(-427.55117797852, 1203.3428955078, 325.75830078125), heading = 226.28628540039065},
            { pos = vector3(-422.70227050781, 1215.5922851562, 325.75830078125), heading = 230.61981201171875}
        },

        VehiculeList = {
            fixter = { vehiculeName = "fixter", vehiculeLabel = "Fixter", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 20 } },
            scorcher = { vehiculeName = "scorcher", vehiculeLabel = "Scorcher", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 28 } },
            tribike = { vehiculeName = "tribike", vehiculeLabel = "Tribike", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 34 } },
            tribike2 = { vehiculeName = "tribike2", vehiculeLabel = "Tribike 2", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 39 } },
            tribike3 = { vehiculeName = "tribike3", vehiculeLabel = "Tribike 3", disponible = true, GradeRequired = { Activate = false, GradeNumber = {} }, price = { Activate = true, price = 43 } }
        }
        
    },
}   
