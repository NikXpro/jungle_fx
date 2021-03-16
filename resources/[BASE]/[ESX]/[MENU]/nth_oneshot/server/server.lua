ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterServerCallback('nth:getSaveList', function(source, cb)
    local src_ = source
    local license = GetPlayerIdentifiers(src_)[1]
    MySQL.Async.fetchAll("SELECT * FROM user_oneshot WHERE identifier = @identifier", {["identifier"] = license}, function(result)
        local list = {}
        for i=1, #result, 1 do
            table.insert(list, {
                id = result[i].id,
                type = result[i].type,
                name = result[i].name,
                skin = result[i].skin
            })	
        end
        cb(list)
    end)
end)

ESX.RegisterServerCallback('nth:restoreSkin', function(source, cb)
    local src_ = source
    local xPlayer = ESX.GetPlayerFromId(src_)
    local license = GetPlayerIdentifiers(src_)[1]
    MySQL.Async.fetchAll('SELECT * FROM user_oneshot WHERE identifier = @identifier AND type = @type', {
        ["identifier"] = license,
        ["type"] = "default"
    }, function(users)
        local user, skin = users[1]
        if user.skin then
			skin = json.decode(user.skin)
		end
        cb(skin)
    end)
end)

RegisterServerEvent('nth:saveDelete')
AddEventHandler('nth:saveDelete', function(id)
    local src_ = source
	local xPlayer = ESX.GetPlayerFromId(src_)
    MySQL.Async.execute("DELETE FROM user_oneshot WHERE id = @id", {["id"] = id})
    xPlayer.showNotification("~g~Sauvegarde supprimer !")
end)

RegisterServerEvent('nth:saveRename')
AddEventHandler('nth:saveRename', function(id, name)
    local src_ = source
	local xPlayer = ESX.GetPlayerFromId(src_)
    MySQL.Async.execute("UPDATE user_oneshot SET name = @name WHERE id = @id", {["name"] = name, ["id"] = id})
    xPlayer.showNotification("~g~Nom de la sauvegarde changer !")
end)

RegisterServerEvent('nth:savePersonnage')
AddEventHandler('nth:savePersonnage', function(type, skin, name)
    local src_ = source
	local xPlayer = ESX.GetPlayerFromId(src_)
    local license = GetPlayerIdentifiers(src_)[1]
    local playerName = GetPlayerName(src_)
    if type == "freemode" then
        MySQL.Async.execute("INSERT INTO user_oneshot (identifier, type, name, skin) VALUES (@identifier, @type, @name, @skin)", {
                ["identifier"] = license,
                ["type"] = type,
                ["name"] = name,
                ["skin"] = json.encode(skin)
            }, function()
            print("^2[DB] ^1Personnage du joueur ^7"..playerName.." ^1enregistrer !^7")
        end)
    elseif type == "default" then
        MySQL.Async.fetchAll("SELECT * FROM user_oneshot WHERE identifier = @identifier AND type = @type", {["identifier"] = license, ["type"] = type}, function(result)
            if result[1] then
                MySQL.Async.execute('UPDATE user_oneshot SET skin = @skin WHERE identifier = @identifier AND type = @type', {
                    ['@skin'] = json.encode(skin),
                    ['@identifier'] = license,
                    ['@type'] = "default"
                })
                xPlayer.showNotification("~g~Mise a jour du skin principal effectuer !")
                print("^2[DB] Personnage principal du Joueur ^7"..playerName.." ^2deja enregistrer, mise a jour effectuer sans soucis !^7")
            else
                MySQL.Async.execute("INSERT INTO user_oneshot (identifier, type, name, skin) VALUES (@identifier, @type, @name, @skin)", {
                    ["identifier"] = license,
                    ["type"] = type,
                    ["name"] = name,
                    ["skin"] = json.encode(skin)
                }, function()
                    print("^2[DB] ^1Personnage du joueur ^7"..playerName.." ^1enregistrer !^7")
                    xPlayer.showNotification("~g~Sauvegarde du skin principal effectuer !")
                end)
            end
        end)
    elseif type == "ped" then
        MySQL.Async.execute("INSERT INTO user_oneshot (identifier, type, name, skin) VALUES (@identifier, @type, @name, @skin)", {
            ["identifier"] = license,
            ["type"] = type,
            ["name"] = name,
            ["skin"] = skin
        }, function()
        print("^2[DB] ^1Personnage du joueur ^7"..playerName.." ^1enregistrer !^7")
    end)
    end
end)