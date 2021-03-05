RMenu.Add('PasteMenu', 'Principal', RageUI.CreateMenu("", "Copy/Paste Menu"), true)

Copy = {
    Copieur = nil
}

Citizen.CreateThread( function()
    while true do
        Citizen.Wait(5)
        if IsControlJustReleased(1, 344) then
            RageUI.Visible(RMenu:Get('PasteMenu', 'Principal'), not RageUI.Visible(RMenu:Get('PasteMenu', 'Principal')))
        end
        
        RageUI.IsVisible(RMenu:Get('PasteMenu', 'Principal'), function()
            RageUI.Item.Button("Copier {x=, y=, z=}", Copy.Copieur, {}, true, {
                onSelected = function()
                    local Coords = GetEntityCoords(PlayerPedId())
                    local x, y, z = table.unpack(Coords)
                    local Heading = GetEntityHeading(PlayerPedId())
                    Copy.Copieur = "{x = "..x..", y = "..y..", z = "..z.."},"
                    SendNUIMessage({
                        Copy = Copy.Copieur
                    })
                end,
            })
            RageUI.Item.Button("Copier vector3", Copy.Copieur, {}, true, {
                onSelected = function()
                    local Coords = GetEntityCoords(PlayerPedId())
                    local x, y, z = table.unpack(Coords)
                    local Heading = GetEntityHeading(PlayerPedId())
                    Copy.Copieur = "vector3("..x..", "..y..", "..z..")"
                    SendNUIMessage({
                        Copy = Copy.Copieur
                    })
                end,
            })
            RageUI.Item.Button("Copier garage", Copy.Copieur, {}, true, {
                onSelected = function()
                    local Coords = GetEntityCoords(PlayerPedId())
                    local x, y, z = table.unpack(Coords)
                    local Heading = GetEntityHeading(PlayerPedId())
                    Copy.Copieur = "{ pos = vector3("..x.."," ..y.."," ..z.."), heading = "..Heading.."},"
                    SendNUIMessage({
                        Copy = Copy.Copieur
                    })
                end,
            })
            RageUI.Item.Button("Heading", Copy.Copieur, {}, true, {
                onSelected = function()
                    local Coords = GetEntityCoords(PlayerPedId())
                    local x, y, z = table.unpack(Coords)
                    local Heading = GetEntityHeading(PlayerPedId())
                    Copy.Copieur = Heading
                    SendNUIMessage({
                        Copy = Copy.Copieur
                    })
                end,
            })
            if Copy ~= nil then
                RageUI.Item.Button("Réinitialiser", Copy.Copieur, {}, true, {
                    onSelected = function()
                        Copy.Copieur = nil
                    end,
                })
            end
        end)
    end
end)

function sendNotif(Txt)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(Txt)
	DrawNotification(0,1)
end

