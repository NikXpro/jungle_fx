Jobs = {

    ["Vigne"] = {
        jobRequired = true,
        jobName = "vigne",
        location = { 
            [1] = { --collect
                coords = vector3(-1719.369,1953.49,126.77),
                zoneSize = 10.0,
                blip = {
                    showBlip = true,
                    blipName = "[1] Recolte de raisin",
                    sprite = 148,
                    color = 83,
                    scale = 0.2,
                },
                marker = {
                    enable = false,
                    size  = { x = 0.7, y = 0.7, z = 0.4 },
                    color = { r = 255, g = 0, b = 0 },
                    type  = 2
                },
                draw3dtext = {
                    enable = true,
                    text = "Recolte de raisin",
                },
                item = {
                    process = "pickup",


                    itemName = "raisin",
                    addCount = 2,
                },                
                animation = {
                    enable = true,
                    animationFunction = function(ped)
                        animDict = "mp_car_bomb"
                        animName = "car_bomb_mechanic"
                        Citizen.CreateThread(function() 
                            RequestAnimDict(animDict) 
                            while not HasAnimDictLoaded(animDict) do Citizen.Wait(10) end 
                            TaskPlayAnim(ped, animDict, animName, 8.0, -8, -1, 49, 0, 0, 0, 0)
                        end)
                    end,
                },
                progressbar = {
                    enable = true,
                    progText = "Ramasage du raisin...", 
                    duration = 2500 
                }
            },
            [2] = { --traitement 1
                coords = vector3(-1934.15, 2052.78, 140.81),
                zoneSize = 1.5,
                blip = {
                    showBlip = true,
                    blipName = "[2] Foulage du raisin",
                    sprite = 148,
                    color = 83,
                    scale = 0.2,
                },
                marker = {
                    enable = false,
                    size  = { x = 0.7, y = 0.7, z = 0.4 },
                    color = { r = 204, g = 204, b = 0 },
                    type  = 2
                },
                draw3dtext = {
                    enable = true,
                    text = "[2] Foulage du raisin",
                },
                item = {
                    process = "exchange",
                    
                    addCount = 1,
                    itemName = "raisin_foule",
                    
                    removeCount = 2,
                    requiredItem = "raisin",
                },
                animation = {
                    enable = true,
                    animationFunction = function(ped)
                        animDict = "mp_car_bomb"
                        animName = "car_bomb_mechanic"
                        Citizen.CreateThread(function()
                            RequestAnimDict(animDict) 
                            while not HasAnimDictLoaded(animDict) do Citizen.Wait(10) end
                            TaskPlayAnim(ped, animDict, animName, 8.0, -8, -1, 49, 0, 0, 0, 0)
                        end)
                    end,
                },
                progressbar = {
                    enable = true,
                    progText = "Foulage du raisin...",
                    duration = 5000
                }
            },
            [3] = { --traitement 2
                coords = vector3(-1933.12, 2055.59, 140.81),
                zoneSize = 1.5,
                blip = {
                    showBlip = true,
                    blipName = "[3] Égrappage du raisin",
                    sprite = 148,
                    color = 83,
                    scale = 0.2,
                },
                marker = {
                    enable = false,
                    size  = { x = 0.7, y = 0.7, z = 0.4 },
                    color = { r = 204, g = 204, b = 0 },
                    type  = 2
                },
                draw3dtext = {
                    enable = true,
                    text = "[3] Égrappage du raisin",
                },
                item = {
                    process = "exchange",
                    
                    addCount = 1,
                    itemName = "raisin_egrappe",
                    
                    removeCount = 2,
                    requiredItem = "raisin_foule",
                },
                animation = {
                    enable = true,
                    animationFunction = function(ped)
                        animDict = "mp_car_bomb"
                        animName = "car_bomb_mechanic"
                        Citizen.CreateThread(function()
                            RequestAnimDict(animDict) 
                            while not HasAnimDictLoaded(animDict) do Citizen.Wait(10) end
                            TaskPlayAnim(ped, animDict, animName, 8.0, -8, -1, 49, 0, 0, 0, 0)
                        end)
                    end,
                },
                progressbar = {
                    enable = true,
                    progText = "Égrappage du raisin...",
                    duration = 10000
                }
            },
            [4] = { --traitement 3
                coords = vector3(-1932.65, 2058.48, 140.81),
                zoneSize = 1.5,
                blip = {
                    showBlip = true,
                    blipName = "[4] Macération et fermentation du raisin",
                    sprite = 148,
                    color = 83,
                    scale = 0.2,
                },
                marker = {
                    enable = false,
                    size  = { x = 0.7, y = 0.7, z = 0.4 },
                    color = { r = 204, g = 204, b = 0 },
                    type  = 2
                },
                draw3dtext = {
                    enable = true,
                    text = "[4] Macération et fermentation",
                },
                item = {
                    process = "exchange",

                    addCount = 2,
                    itemName = "raisin_fermente",

                    removeCount = 2,
                    requiredItem = "raisin_egrappe",
                },
                animation = {
                    enable = true,
                    animationFunction = function(ped)
                        animDict = "mp_car_bomb"
                        animName = "car_bomb_mechanic"
                        Citizen.CreateThread(function()
                            RequestAnimDict(animDict) 
                            while not HasAnimDictLoaded(animDict) do Citizen.Wait(10) end
                            TaskPlayAnim(ped, animDict, animName, 8.0, -8, -1, 49, 0, 0, 0, 0)
                        end)
                    end,
                },
                progressbar = {
                    enable = true,
                    progText = "Macération et fermentation du raisin...",
                    duration = 10000
                }
            },
            [5] = { --traitement 4
                coords = vector3(-1869.18, 2055.68, 141),
                zoneSize = 1.7,
                blip = {
                    showBlip = true,
                    blipName = "[5] Écoulage et pressurage du raisin",
                    sprite = 148,
                    color = 83,
                    scale = 0.2,
                },
                marker = {
                    enable = false,
                    size  = { x = 0.7, y = 0.7, z = 0.4 },
                    color = { r = 204, g = 204, b = 0 },
                    type  = 2
                },
                draw3dtext = {
                    enable = true,
                    text = "[5] Écoulage et pressurage",
                },
                item = {
                    process = "exchange",

                    addCount = 2,
                    itemName = "raisin_presse",

                    removeCount = 2,
                    requiredItem = "raisin_fermente",
                },
                animation = {
                    enable = true,
                    animationFunction = function(ped)
                        animDict = "mp_car_bomb"
                        animName = "car_bomb_mechanic"
                        Citizen.CreateThread(function()
                            RequestAnimDict(animDict) 
                            while not HasAnimDictLoaded(animDict) do Citizen.Wait(10) end
                            TaskPlayAnim(ped, animDict, animName, 8.0, -8, -1, 49, 0, 0, 0, 0)
                        end)
                    end,
                },
                progressbar = {
                    enable = true,
                    progText = "Écoulage et pressurage du raisin...",
                    duration = 10000
                }
            },
            [6] = { --traitement 5
                coords = vector3(-1869.33, 2059.07, 141),
                zoneSize = 1.7,
                blip = {
                    showBlip = true,
                    blipName = "[5-1] Écoulage et pressurage a moitié du raisin",
                    sprite = 148,
                    color = 83,
                    scale = 0.2,
                },
                marker = {
                    enable = false,
                    size  = { x = 0.7, y = 0.7, z = 0.4 },
                    color = { r = 204, g = 204, b = 0 },
                    type  = 2
                },
                draw3dtext = {
                    enable = true,
                    text = "[5-1] Écoulage et pressurage a moitié",
                },
                item = {
                    process = "exchange",

                    addCount = 2,
                    itemName = "raisin_demi_presse",

                    removeCount = 2,
                    requiredItem = "raisin_egrappe",
                },
                animation = {
                    enable = true,
                    animationFunction = function(ped)
                        animDict = "mp_car_bomb"
                        animName = "car_bomb_mechanic"
                        Citizen.CreateThread(function()
                            RequestAnimDict(animDict) 
                            while not HasAnimDictLoaded(animDict) do Citizen.Wait(10) end
                            TaskPlayAnim(ped, animDict, animName, 8.0, -8, -1, 49, 0, 0, 0, 0)
                        end)
                    end,
                },
                progressbar = {
                    enable = true,
                    progText = "Écoulage et pressurage a moitié du raisin...",
                    duration = 10000
                }
            },







            [7] = { --Mise en bouteille 1
                coords = vector3(-1860.62, 2067.41, 141),
                zoneSize = 1.5,
                blip = {
                    showBlip = true,
                    blipName = "[6-0] Mise en bouteille (Vin rouge)",
                    sprite = 148,
                    color = 83,
                    scale = 0.2,
                },
                marker = {
                    enable = false,
                    size  = { x = 0.7, y = 0.7, z = 0.4 },
                    color = { r = 204, g = 204, b = 0 },
                    type  = 2
                },
                draw3dtext = {
                    enable = true,
                    text = "[6-0] Mise en bouteille (Vin rouge)",
                },
                item = {
                    process = "package",

                    addCount = 1,
                    itemName = "vin_rouge",

                    removeCount = 2,
                    requiredItem = "raisin_presse", 
                },
                animation = {
                    enable = true,
                    animationFunction = function(ped)
                        animDict = "mp_car_bomb"
                        animName = "car_bomb_mechanic"
                        Citizen.CreateThread(function()
                            RequestAnimDict(animDict) 
                            while not HasAnimDictLoaded(animDict) do Citizen.Wait(10) end
                            TaskPlayAnim(ped, animDict, animName, 8.0, -8, -1, 49, 0, 0, 0, 0)
                        end)
                    end,
                },
                progressbar = {
                    enable = true,
                    progText = "Mise en bouteille (Vin rouge)...",
                    duration = 5000
                }
            },

            [8] = { --Mise en bouteille 2
                coords = vector3(-1864.26, 2067.43, 141),
                zoneSize = 1.5,
                blip = {
                    showBlip = true,
                    blipName = "[6-1] Mise en bouteille (Vin blanc)",
                    sprite = 148,
                    color = 83,
                    scale = 0.2,
                },
                marker = {
                    enable = false,
                    size  = { x = 0.7, y = 0.7, z = 0.4 },
                    color = { r = 204, g = 204, b = 0 },
                    type  = 2
                },
                draw3dtext = {
                    enable = true,
                    text = "[6-1] Mise en bouteille (Vin blanc)",
                },
                item = {
                    process = "package",

                    addCount = 1,
                    itemName = "vin_blanc",

                    removeCount = 2,
                    requiredItem = "raisin_demi_presse", 
                },
                animation = {
                    enable = true,
                    animationFunction = function(ped)
                        animDict = "mp_car_bomb"
                        animName = "car_bomb_mechanic"
                        Citizen.CreateThread(function()
                            RequestAnimDict(animDict) 
                            while not HasAnimDictLoaded(animDict) do Citizen.Wait(10) end
                            TaskPlayAnim(ped, animDict, animName, 8.0, -8, -1, 49, 0, 0, 0, 0)
                        end)
                    end,
                },
                progressbar = {
                    enable = true,
                    progText = "Mise en bouteille (Vin blanc)...",
                    duration = 5000
                }
            },

            [9] = { --Mise en bouteille 2
                coords = vector3(-1867.65, 2066.96, 141),
                zoneSize = 1.5,
                blip = {
                    showBlip = true,
                    blipName = "[6-2] Mise en bouteille (Rosé)",
                    sprite = 148,
                    color = 83,
                    scale = 0.2,
                },
                marker = {
                    enable = false,
                    size  = { x = 0.7, y = 0.7, z = 0.4 },
                    color = { r = 204, g = 204, b = 0 },
                    type  = 2
                },
                draw3dtext = {
                    enable = true,
                    text = "[6-2] Mise en bouteille (Rosé)",
                },
                item = {
                    process = "package",

                    addCount = 1,
                    itemName = "rose",

                    removeCount = 2,
                    requiredItem = "raisin_demi_presse", 
                },
                animation = {
                    enable = true,
                    animationFunction = function(ped)
                        animDict = "mp_car_bomb"
                        animName = "car_bomb_mechanic"
                        Citizen.CreateThread(function()
                            RequestAnimDict(animDict) 
                            while not HasAnimDictLoaded(animDict) do Citizen.Wait(10) end
                            TaskPlayAnim(ped, animDict, animName, 8.0, -8, -1, 49, 0, 0, 0, 0)
                        end)
                    end,
                },
                progressbar = {
                    enable = true,
                    progText = "Mise en bouteille (Rosé)...",
                    duration = 5000
                }
            },

            [10] = {
                coords = vector3(-447.87, -2805.75, 6.3),
                zoneSize = 2.5,
                blip = {
                    showBlip = true,
                    blipName = "Vente de rosé",
                    sprite = 148,
                    color = 83,
                    scale = 0.2,
                },
                marker = {
                    enable = false,
                    size  = { x = 0.7, y = 0.7, z = 0.4 },
                    color = { r = 204, g = 204, b = 0 },
                    type  = 2
                },
                draw3dtext = {
                    enable = true,
                    text = "Vente de rosé",
                },
                item = {
                    process = "sell", --dont touch
                    moneyType = "money",-- money, bank, black_money

                    removeCount = 1,
                    requiredItem = "rose",
                    price = 80,
                    society = true,
                    societyName = "society_vigne",
                    societyMoney = 10,
                },
                animation = {
                    enable = true,
                    animationFunction = function(ped)
                        animDict = "mp_car_bomb"
                        animName = "car_bomb_mechanic"
                        Citizen.CreateThread(function()
                            RequestAnimDict(animDict) while not HasAnimDictLoaded(animDict) do Citizen.Wait(10) end
                            TaskPlayAnim(ped, animDict, animName, 8.0, -8, -1, 49, 0, 0, 0, 0)
                        end)
                    end,
                },
                progressbar = {
                    enable = true,
                    progText = "Vente de rosé...",
                    duration = 2500
                }
            },

            [11] = {
                coords = vector3(-457.1, -2814.85, 6.3),
                zoneSize = 2.5,
                blip = {
                    showBlip = true,
                    blipName = "Vente de vin blanc",
                    sprite = 148,
                    color = 83,
                    scale = 0.2,
                },
                marker = {
                    enable = false,
                    size  = { x = 0.7, y = 0.7, z = 0.4 },
                    color = { r = 204, g = 204, b = 0 },
                    type  = 2
                },
                draw3dtext = {
                    enable = true,
                    text = "Vente de vin blanc",
                },
                item = {
                    process = "sell", --dont touch
                    moneyType = "money",-- money, bank, black_money

                    removeCount = 1,
                    requiredItem = "vin_blanc",
                    price = 90,
                    society = true,
                    societyName = "society_vigne",
                    societyMoney = 20,
                },
                animation = {
                    enable = true,
                    animationFunction = function(ped)
                        animDict = "mp_car_bomb"
                        animName = "car_bomb_mechanic"
                        Citizen.CreateThread(function()
                            RequestAnimDict(animDict) while not HasAnimDictLoaded(animDict) do Citizen.Wait(10) end
                            TaskPlayAnim(ped, animDict, animName, 8.0, -8, -1, 49, 0, 0, 0, 0)
                        end)
                    end,
                },
                progressbar = {
                    enable = true,
                    progText = "Vente de vin blanc...",
                    duration = 2500
                }
            },

            [12] = {
                coords = vector3(-475.03, -2832.95, 6.3),
                zoneSize = 2.5,
                blip = {
                    showBlip = true,
                    blipName = "Vente de vin rouge",
                    sprite = 148,
                    color = 83,
                    scale = 0.2,
                },
                marker = {
                    enable = false,
                    size  = { x = 0.7, y = 0.7, z = 0.4 },
                    color = { r = 204, g = 204, b = 0 },
                    type  = 2
                },
                draw3dtext = {
                    enable = true,
                    text = "Vente de vin rouge",
                },
                item = {
                    process = "sell", --dont touch
                    moneyType = "money",-- money, bank, black_money

                    removeCount = 1,
                    requiredItem = "vin_rouge",
                    price = 95,
                    society = true,
                    societyName = "society_vigne",
                    societyMoney = 30
                },
                animation = {
                    enable = true,
                    animationFunction = function(ped)
                        animDict = "mp_car_bomb"
                        animName = "car_bomb_mechanic"
                        Citizen.CreateThread(function()
                            RequestAnimDict(animDict) while not HasAnimDictLoaded(animDict) do Citizen.Wait(10) end
                            TaskPlayAnim(ped, animDict, animName, 8.0, -8, -1, 49, 0, 0, 0, 0)
                        end)
                    end,
                },
                progressbar = {
                    enable = true,
                    progText = "Vente de vin rouge...",
                    duration = 2500
                }
            }
        },
    },

    ["motodealer"] = {
        jobRequired = true,
        jobName = "motodealer",
        location = { 
            [1] = { --collect
                coords = vector3(963.75561523438, -1025.4779052734, 39.847511291504),
                zoneSize = 5.0,
                blip = {
                    showBlip = true,
                    blipName = "[1] Recuppération de papier",
                    sprite = 148,
                    color = 83,
                    scale = 0.2,
                },
                marker = {
                    enable = false,
                    size  = { x = 10.0, y = 10.0, z = 0.4 },
                    color = { r = 255, g = 0, b = 0 },
                    type  = 2
                },
                draw3dtext = {
                    enable = false,
                    text = "Recuppération de papier",
                },
                item = {
                    process = "pickup",
                    itemName = "papier",
                    addCount = 2,
                },                
                animation = {
                    enable = true,
                    animationFunction = function(ped)
                        animDict = "mp_car_bomb"
                        animName = "car_bomb_mechanic"
                        Citizen.CreateThread(function() 
                            RequestAnimDict(animDict) 
                            while not HasAnimDictLoaded(animDict) do Citizen.Wait(10) end 
                            TaskPlayAnim(ped, animDict, animName, 8.0, -8, -1, 49, 0, 0, 0, 0)
                        end)
                    end,
                },
                progressbar = {
                    enable = true,
                    progText = "Recuppération de papier...", 
                    duration = 5000 
                }
            },
            [2] = { --traitement 1
                coords = vector3(2476.1665039062, 4087.3825683594, 38.119007110596),
                zoneSize = 2.5,
                blip = {
                    showBlip = true,
                    blipName = "[2] Impression des contrats",
                    sprite = 148,
                    color = 83,
                    scale = 0.2,
                },
                marker = {
                    enable = false,
                    size  = { x = 0.7, y = 0.7, z = 0.4 },
                    color = { r = 204, g = 204, b = 0 },
                    type  = 2
                },
                draw3dtext = {
                    enable = true,
                    text = "[2] Impression des contrats",
                },
                item = {
                    process = "exchange",
                    
                    addCount = 1,
                    itemName = "papier_imprimer",
                    
                    removeCount = 2,
                    requiredItem = "papier",
                },
                animation = {
                    enable = true,
                    animationFunction = function(ped)
                        animDict = "mp_car_bomb"
                        animName = "car_bomb_mechanic"
                        Citizen.CreateThread(function()
                            RequestAnimDict(animDict) 
                            while not HasAnimDictLoaded(animDict) do Citizen.Wait(10) end
                            TaskPlayAnim(ped, animDict, animName, 8.0, -8, -1, 49, 0, 0, 0, 0)
                        end)
                    end,
                },
                progressbar = {
                    enable = true,
                    progText = "Impression des contrats...",
                    duration = 5000
                }
            },
            [3] = { --Mise en bouteille 2
                coords = vector3(-324.19412231445, -1355.8492431641, 31.295705795288),
                zoneSize = 1.5,
                blip = {
                    showBlip = true,
                    blipName = "[3] Certification des contrats",
                    sprite = 148,
                    color = 83,
                    scale = 0.2,
                },
                marker = {
                    enable = false,
                    size  = { x = 0.7, y = 0.7, z = 0.4 },
                    color = { r = 204, g = 204, b = 0 },
                    type  = 2
                },
                draw3dtext = {
                    enable = true,
                    text = "[3] Certification des contrats",
                },
                item = {
                    process = "package",

                    addCount = 2,
                    itemName = "papier_certifier",

                    removeCount = 2,
                    requiredItem = "papier_imprimer", 
                },
                animation = {
                    enable = true,
                    animationFunction = function(ped)
                        animDict = "mp_car_bomb"
                        animName = "car_bomb_mechanic"
                        Citizen.CreateThread(function()
                            RequestAnimDict(animDict) 
                            while not HasAnimDictLoaded(animDict) do Citizen.Wait(10) end
                            TaskPlayAnim(ped, animDict, animName, 8.0, -8, -1, 49, 0, 0, 0, 0)
                        end)
                    end,
                },
                progressbar = {
                    enable = true,
                    progText = "Certification des contrat",
                    duration = 5000
                }
            },
            [4] = {
                coords = vector3(-5.199999332428, -716.33740234375, 31.33805847168),
                zoneSize = 3.5,
                blip = {
                    showBlip = true,
                    blipName = "[4] Vente des contrats",
                    sprite = 148,
                    color = 83,
                    scale = 0.2,
                },
                marker = {
                    enable = false,
                    size  = { x = 0.7, y = 0.7, z = 0.4 },
                    color = { r = 204, g = 204, b = 0 },
                    type  = 2
                },
                draw3dtext = {
                    enable = true,
                    text = "[4] Vente des contrats",
                },
                item = {
                    process = "sell", --dont touch
                    moneyType = "money",-- money, bank, black_money

                    removeCount = 1,
                    requiredItem = "papier_certifier",
                    price = 83,
                    society = true,
                    societyName = "society_motodealer",
                    societyMoney = 28
                },
                animation = {
                    enable = true,
                    animationFunction = function(ped)
                        animDict = "mp_car_bomb"
                        animName = "car_bomb_mechanic"
                        Citizen.CreateThread(function()
                            RequestAnimDict(animDict) while not HasAnimDictLoaded(animDict) do Citizen.Wait(10) end
                            TaskPlayAnim(ped, animDict, animName, 8.0, -8, -1, 49, 0, 0, 0, 0)
                        end)
                    end,
                },
                progressbar = {
                    enable = true,
                    progText = "Vente des contrats...",
                    duration = 5000
                }
            }
        },
    },
}