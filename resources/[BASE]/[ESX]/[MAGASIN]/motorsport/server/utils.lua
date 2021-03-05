function getIdentity(source)
	local sourceXPlayer = ESX.GetPlayerFromId(source)
	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = sourceXPlayer.identifier})
	if result[1] ~= nil then
		local identity = result[1]

		return {
			identifier = identity['identifier'],
			name = identity['name'],
			firstname = identity['firstname'],
			lastname = identity['lastname'],
			dateofbirth = identity['dateofbirth'],
			sex = identity['sex'],
			height = identity['height'],
			job = identity['job'],
			group = identity['group']
		}
	else
		return nil
	end
end
-- Nous avons toutes les machines
function getAllCars()
    local result = MySQL.Sync.fetchAll("SELECT * FROM vehicles_voiture ", {})
	if result[1] ~= nil then
		local veh = result
		local vehicles_voiture = {}

		for k,v in pairs(veh) do
			if Config.Debug then
				print(" Modelis: " .. veh[k].model .. " Pavadinimas: " .. veh[k].name .. " Kaina: " .. veh[k].price)
			end
			table.insert(vehicles_voiture, {
				modelo = veh[k].model,
				nome = veh[k].name,
				valor = veh[k].price,
				quantidade = 1,
				descricao = veh[k].description,
				img = veh[k].img
			})
	  	end

		return vehicles_voiture
	else
		return nil
	end
end
-- Nous obtenons la machine par catégorie
function getAllCategorieCars(id)
	local _id = id
    local result = MySQL.Sync.fetchAll("SELECT * FROM vehicles_voiture WHERE category = @id", {["@id"] = _id})
	if result[1] ~= nil then
		local veh = result
		local vehicles_voiture = {}

		for k,v in pairs(veh) do
			if Config.Debug then
				print("Modelis: " .. veh[k].model .. " Pavadinimas: " .. veh[k].name .. " Kategorija: " .. veh[k].category)
			end
			table.insert(vehicles_voiture, {
				modelo = veh[k].model,
				nome = veh[k].name,
				valor = veh[k].price,
				quantidade = 1,
				descricao = veh[k].description,
				img = veh[k].img
			})
	  	end

		return vehicles_voiture
	else
		print("Nepavyko gauti isfiltruotu masinu, patikrink ar gauni kategorija")
		return nil
	end
end
-- Nous obtenons toutes les catégories
function getAllCategories()
    	local result = MySQL.Sync.fetchAll("SELECT * FROM categories_voiture ", {})
		if result[1] ~= nil then
			local cat = result
			local categories = {}

			for k,v in pairs(cat) do
				if Config.Debug then
					print("Gavau Kategorija: " .. cat[k].name ..  " Pavadinimas: " .. cat[k].label .. "")
				end
				table.insert(categories, {
					name = cat[k].name,
					label = cat[k].label
				})
	  		end
			  infochecked = false
			return categories
		else
			return nil
		end
end
-- Nous obtenons une catégorie par ID
function getCategory(id)
	local _id = id
    local result = MySQL.Sync.fetchAll("SELECT * FROM categories_voiture WHERE name = @id", {["@id"] = _id})
	if result[1] ~= nil then
		local category = result[1]
		return {
			name = category["name"],
			label = category["label"]
		}
	else
		print("Nepavyko gauti kategorijos :(, patikrink ar turi ID")
		return nil
	end
end

--Retroune la voiture selectioner au joueur
function getCar(vehID)
    local result = MySQL.Sync.fetchAll("SELECT * FROM vehicles_voiture WHERE model = @id", {["@id"] = vehID})
       if result[1] ~= nil then
           local veh = result[1]
           return{
                   model = veh['model'],
                   name = veh['name'],
                   price = veh['price'],
               }    
       else    
           return nil
       end
end