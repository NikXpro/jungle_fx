data = {}

data.jobMenu = {

    --[[LSPDcoffre = {
        MenuId = "policeCoffre",
        MenuType = "coffre",
        Settings = {
            JobRequired = { Activate = true, jobName = {"police"} },
            TitreMenu = "",
            DescriptionMenu = "Saisies BCSO",
            DescriptionPrendre = "Prendre dans les Saisies",
            DescriptionDeposer = "Deposer dans les Saisies",
            Filtre = true,
            DataName = "police",
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "BCSO" },
            MenuPosition = vector3(-437.17590332031, 6012.5166015625, 26.985612869263),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour ouvrir les saisies",
            TailleZone = 1.5,
            blip = { Activate = false, property = false, BlipId = 52, BlipScale = 0.8, BlipColor = 1, BlipName = "LTD Sud" },
            ped = { Activate = false, PedHash = "csb_trafficwarden", Heanding = 39.84715270996094 },
            marker = { Activate = true, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 1.5, y = 1.5, z = 0.5}, ViewDistance = 3.0 },
        },
        
    },]]

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
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "BCSO" },
            MenuPosition = vector3(480.37353515625, -996.71826171875, 29.689744949341),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour parler a kuklinski",
            TailleZone = 2.5,
            blip = { Activate = false, property = false, BlipId = 52, BlipScale = 0.8, BlipColor = 1, BlipName = "LTD Sud" },
            ped = { Activate = true, PedHash = "csb_trafficwarden", Heanding = 39.84715270996094 },
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

    EMSvestiaire = {
        MenuId = "EMSvestiaire",
        MenuType = "vestiaire",
        Settings = {
            JobRequired = { Activate = true, jobName = {"ambulance"} },
            TitreMenu = "",
            DescriptionMenu = "Vestiaire LSMS",
            CustomBanner = { Activate = false, BannerDic = "banner", BannerName = "BCSO" },
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
                        ['shoes_1'] = 97,   ['shoes_2'] = 2,
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
    
    LocationBateauPort = {
        MenuId = "LocationBateauPort",
        MenuType = "garage",
        Settings = {
            JobRequired = { Activate = false, jobName = {} },
            TitreMenu = "",
            DescriptionMenu = "Location Bateau sud",
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "BCSO" },
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
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "BCSO" },
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
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "BCSO" },
            MenuPosition = vector3(-1799.6520996094, -1223.4990234375, 0.6016956567764),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour ouvrir le garage",
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
}   
