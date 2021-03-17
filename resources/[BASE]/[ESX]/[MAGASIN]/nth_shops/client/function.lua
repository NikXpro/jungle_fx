function JobList(list)
    local JobList = list
    for i=1, #JobList, 1 do
        if ESX.PlayerData.job.name == JobList[i] then
            return true
        end
    end
end
function GradeList(list)
    local GradeList = list
    for i=1, #GradeList, 1 do
        if ESX.PlayerData.job.grade == GradeList[i] then
            return true
        end
    end
end 

function KeyboardInput(TextEntry, ExampleText, MaxStringLenght)
	AddTextEntry('FMMC_KEY_TIP1', TextEntry)
	blockinput = true
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLenght)
	while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
		Citizen.Wait(0)
	end
	if UpdateOnscreenKeyboard() ~= 2 then
		local result = GetOnscreenKeyboardResult()
		Citizen.Wait(500)
		blockinput = false
		return result
	else
		Citizen.Wait(500)
		blockinput = false
		return nil
	end
end

function AchatShopNormal(a)
    local prix = ""
    if a.Price.Activate == true then
        if a.Price.MoneyType == "money" then 
            prix = "~g~"..a.Price.Amount.."$🛒"
        elseif a.Price.MoneyType == "black_money" then 
            prix = "~r~"..a.Price.Amount.."$🛒"
        elseif a.Price.MoneyType == "bank" then 
            prix = "~b~"..a.Price.Amount.."$🛒"
        end
    else
        prix = "📥"
    end
    ShopBouton(a, prix)
end

function ShopBouton(b, price)
    RageUI.Button(b.Label, nil, {RightLabel = price}, true, {
        onSelected = function()
            TriggerServerEvent("nth_store:Buy", b.Type, b.Label, b.Name, b.Count, b.Price, b.License, GetPlayerServerId(PlayerId()))
        end
    })
end

function LoadModel(model)
    while not HasModelLoaded(model) do
         RequestModel(model)
         Wait(100)
    end
end

function LicenseList(LicenseData, licenseName)
    for i=1, #LicenseData, 1 do
        if licenseName == LicenseData[i].type then
            return true
        end
    end
end