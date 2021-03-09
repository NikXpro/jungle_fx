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
            ped = { Activate = false, PedHash = "csb_trafficwarden", Heanding = 39.84715270996094 },
            marker = { Activate = true, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 1.5, y = 1.5, z = 0.5}, ViewDistance = 3.0 },
        },
        
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
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "BCSO" },
            MenuPosition = vector3(-436.04013061523, 5999.880859375, 30.716094970703),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour ouvrir l'armurerie",
            TailleZone = 2.5,
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
			gasmask = {
                Type = "item",
                GradeRequired = { Activate = false, GradeNumber = {5} },
				Label = "Masque a gaz",
				Name = "gasmask",
                Count = 1,
                Price = {
                    MoneyType = "society",
                    Prix = 720
                }
				
			}
		}
        
    },

    LSPDvestiaire = {
        MenuId = "policeVestiaire",
        MenuType = "vestiaire",
        Settings = {
            JobRequired = { Activate = true, jobName = {"police"} },
            TitreMenu = "",
            DescriptionMenu = "Vestiaire LSPD",
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "BCSO" },
            MenuPosition = vector3(-454.07043457031, 6014.7514648438, 30.716424942017),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour ouvrir le vestiaire",
            TailleZone = 4.2,
            ped = { Activate = false, PedHash = "csb_trafficwarden", Heanding = 39.84715270996094 },
            marker = { Activate = false, MarkerType = 1, MarkerColor = {r = 50, g = 50, b = 204}, MarkerSize = {x = 5.0, y = 5.0, z = 0.5}, ViewDistance = 10 },
            TenueRemove = {
                Activate = true,
                KevlarRemover = true,
                ButtonName= "Tenue Civil",
                RightLabel = "👔"
            }
        },

        TenueList = {
            cadet = {
                tenuLabel = "Tenue de cadet",
                RightLabel = "🦺",
                GradeRequired = { Activate = false, GradeNumber = {0} },
                Kevlar = { Activate = false, KevlarSize = 100 },
                Tenue =  {
                    male = {
                        ['tshirt_1'] = 54,      ['tshirt_2'] = 0,
                        ['torso_1'] = 190,      ['torso_2'] = 0,
                        ['decals_1'] = 0,       ['decals_2'] = 0,
                        ['arms'] = 0,
                        ['pants_1'] = 52,       ['pants_2'] = 1,
                        ['shoes_1'] = 24,       ['shoes_2'] = 0,
                        ['helmet_1'] = 46,      ['helmet_2'] = 0,
                        ['chain_1'] = 0,        ['chain_2'] = 0,
                        ['mask_1'] = -1,        ['mask_2'] = 0,
                        ['bproof_1'] = 10,      ['bproof_2'] = 0,
                        ['ears_1'] = 2,         ['ears_2'] = 0,
                        ['bags_1'] = 0,         ['bags_2'] = 0,
                    },
                    female = {
                        ['tshirt_1'] = 19,      ['tshirt_2'] = 0,
                        ['torso_1'] =192,       ['torso_2'] = 0,
                        ['decals_1'] = 0,       ['decals_2'] = 0,
                        ['arms'] = 14,
                        ['pants_1'] = 54,       ['pants_2'] = 1,
                        ['shoes_1'] = 24,       ['shoes_2'] = 0,
                        ['helmet_1'] = 45,      ['helmet_2'] = 0,
                        ['chain_1'] = 0,        ['chain_2'] = 0,
                        ['mask_1'] = -1,        ['mask_2'] = 0,
                        ['bproof_1'] = 19,      ['bproof_2'] = 0,
                        ['ears_1'] = 2,         ['ears_2'] = 0,
                        ['bags_1'] = 0,         ['bags_2'] = 0,
                    }
                }
                
            },
            grader = {
                tenuLabel = "Tenue de officier",
                RightLabel = "🦺",
                GradeRequired = {
                    Activate = false,
                    GradeNumber = {5}
                },
                Kevlar = {
                    Activate = true,
                    KevlarSize = 100
                },
                Tenue =  {
                    male = {
                        ['tshirt_1'] = 55,  ['tshirt_2'] = 0,
                        ['torso_1'] = 100,   ['torso_2'] = 0,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 0,
                        ['pants_1'] = 48,   ['pants_2'] = 0,
                        ['shoes_1'] = 51,   ['shoes_2'] = 0,
                        ['helmet_1'] = -1,  ['helmet_2'] = 0,
                        ['chain_1'] = -1,    ['chain_2'] = 0,
                        ['mask_1'] = -1,  ['mask_2'] = 0,
                        ['bproof_1'] = 13,  ['bproof_2'] = 0,
                        ['ears_1'] = 5,     ['ears_2'] = 4,
                        ['bags_1'] = 0,    ['bags_2'] = 0
                    },
                    female = {
                        ['tshirt_1'] = 27,  ['tshirt_2'] = 0,
                        ['torso_1'] = 192,   ['torso_2'] = 0,
                        ['decals_1'] = 0,   ['decals_2'] = 0,
                        ['arms'] = 14,
                        ['pants_1'] = 54,   ['pants_2'] = 1,
                        ['shoes_1'] = 24,   ['shoes_2'] = 0,
                        ['helmet_1'] = -1,  ['helmet_2'] = 0,
                        ['chain_1'] = 8,    ['chain_2'] = 0,
                        ['mask_1'] = -1,  ['mask_2'] = 0,
                        ['bproof_1'] = 14,  ['bproof_2'] = 0,
                        ['ears_1'] = 2,     ['ears_2'] = 0,
                        ['bags_1'] = 52,    ['bags_2'] = 0,
                    }
                }
                
            },
        }
        
    },]]
    
    LocationBateauPort = {
        MenuId = "LocationBateauPort",
        MenuType = "garage",
        Settings = {
            JobRequired = { Activate = true, jobName = {"ambulance"} },
            TitreMenu = "",
            DescriptionMenu = "Location Bateau sud",
            CustomBanner = { Activate = true, BannerDic = "banner", BannerName = "BCSO" },
            MenuPosition = vector3(-858.16070556641, -1342.5528564453, 0.6051691770554),
            MessageZone = "Appuyer sur ~INPUT_CONTEXT~ pour ouvrir le garage",
            TailleZone = 1.5,
            ped = { Activate = true, PedHash = "s_m_m_paramedic_01", Heanding = 292.5040283203125 },
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
            dinghy = { vehiculeName = "dinghy", vehiculeLabel = "Dinghy", disponible = true, GradeRequired = { Activate = false, GradeNumber = {10} }, price = { Activate = true, price = 250 } },
            jetmax = { vehiculeName = "jetmax", vehiculeLabel = "Jetmax", disponible = true, GradeRequired = { Activate = false, GradeNumber = {10} }, price = { Activate = true, price = 250 } },
            marquis = { vehiculeName = "marquis", vehiculeLabel = "Marquis(voilier)", disponible = true, GradeRequired = { Activate = false, GradeNumber = {10} }, price = { Activate = true, price = 1000 } },
            seashark = { vehiculeName = "seashark", vehiculeLabel = "Seashark (jet ski)", disponible = true, GradeRequired = { Activate = false, GradeNumber = {10} }, price = { Activate = true, price = 258 } },
            seashark3 = { vehiculeName = "seashark3", vehiculeLabel = "Seashark de luxe (jet ski)", disponible = true, GradeRequired = { Activate = false, GradeNumber = {10} }, price = { Activate = true, price = 384 } },
            speeder = { vehiculeName = "speeder", vehiculeLabel = "Speeder", disponible = true, GradeRequired = { Activate = false, GradeNumber = {10} }, price = { Activate = true, price = 250 } },
            squalo = { vehiculeName = "squalo", vehiculeLabel = "Squalo", disponible = true, GradeRequired = { Activate = false, GradeNumber = {10} }, price = { Activate = true, price = 250 } },
            toro = { vehiculeName = "toro", vehiculeLabel = "Toro", disponible = true, GradeRequired = { Activate = false, GradeNumber = {10} }, price = { Activate = true, price = 250 } },
            suntrap = { vehiculeName = "suntrap", vehiculeLabel = "Suntrap", disponible = true, GradeRequired = { Activate = false, GradeNumber = {10} }, price = { Activate = true, price = 250 } },
            tropic = { vehiculeName = "tropic", vehiculeLabel = "Tropic", disponible = true, GradeRequired = { Activate = false, GradeNumber = {10} }, price = { Activate = true, price = 250 } },
            longfin = { vehiculeName = "longfin", vehiculeLabel = "longfin", disponible = true, GradeRequired = { Activate = false, GradeNumber = {10} }, price = { Activate = true, price = 1258 } }
        }
        
    },
}   
