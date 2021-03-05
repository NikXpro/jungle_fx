Config = {}

Config.VehicleMenu = false -- enable this if you wan't a vehicle menu.
Config.VehicleMenuButton = 344 -- change this to the key you want to open the menu with. buttons: https://docs.fivem.net/game-references/controls/
Config.RangeCheck = 10.0 -- this is the change you will be able to control the vehicle.

Config.Garages = {
    ["A"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(215.12187194824, -905.63891601562, 18.31974029541)
            },
            ["vehicle"] = {
                ["position"] = vector3(219.8095703125, -902.6201171875, 18.31974029541), 
                ["heading"] = 49.49500274658203
            }   
        },
        ["camera"] = {  -- camera is not needed just if you want cool effects.
            ["x"] = 220.76, 
            ["y"] = -897.81, 
            ["z"] = 20.08, 
            ["rotationX"] = 0.0, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = -180.0 
        }
    },

    ["B"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(1141.9205322266, 2660.5522460938, 37.160980224609)
            },
            ["vehicle"] = {
                ["position"] = vector3(1137.5699462891, 2663.5283203125, 37.004215240479), 
                ["heading"] = 358.5723571777344
            }
        },
        ["camera"] = { 
            ["x"] = 1134.995, 
            ["y"] = 2669.459, 
            ["z"] = 39.920, 
            ["rotationX"] = 170.0, 
            ["rotationY"] = 178.0, 
            ["rotationZ"] = 48.232 
        }
    },

    ["C"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-1878.8, -312.32, 49.24)
            },
            ["vehicle"] = {
                ["position"] = vector3(-1879.72, -307.88, 49.24), 
                ["heading"] = 45.44
            }
        },
        ["camera"] = { 
            ["x"] = -1882.88, 
            ["y"] = -302.05, 
            ["z"] = 51.13, 
            ["rotationX"] = -30.496062710881, 
            ["rotationY"] = 0.0, 
            ["rotationZ"] = -155.110235854983 
        }
    }
}

Config.Labels = {
    ["menu"] = "~INPUT_CONTEXT~ Ouvrir le garage %s.",
    ["vehicle"] = "~INPUT_CONTEXT~ Remettre '%s' à votre garage."
}

Config.Trim = function(value)
	if value then
		return (string.gsub(value, "^%s*(.-)%s*$", "%1"))
	else
		return nil
	end
end

Config.AlignMenu = "left" -- this is where the menu is located [left, right, center, top-right, top-left etc.]