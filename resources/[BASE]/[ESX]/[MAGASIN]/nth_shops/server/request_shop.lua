ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function CanCarry(name, count, type)
     local xPlayer = ESX.GetPlayerFromId(source)
     if type == "item" then
          local xItem = xPlayer.getInventoryItem(name)
          if xItem.limit ~= -1 and (xItem.count + count) > xItem.limit then
               return true
          end
     elseif type == "weapon" then 
          if xPlayer.hasWeapon(name) == true then 
               return true
          end
     end
end


RegisterServerEvent("nth_store:Buy")
AddEventHandler("nth_store:Buy", function(type, label, name, count, price)
     local xPlayer = ESX.GetPlayerFromId(source)
     local xMoney, xBlackMoney, xBank = xPlayer.getMoney(), xPlayer.getAccount('black_money').money, xPlayer.getBank()
     if (type == "item") then 
          if price.MoneyType == "money" then 
               if xMoney >= price.Amount then
                    if CanCarry(name, count, type) == true then
                         xPlayer.showNotification("Vous avez le nombre maximum d'item sur vous")
                    else
                         xPlayer.removeMoney(price.Amount)
                         xPlayer.addInventoryItem(name, count)
                    end
               else
                    xPlayer.showNotification("Vous n'avez pas assez d'argent, il vous manque ~r~"..price.Amount - xMoney.."$")
               end
          elseif price.MoneyType == "black_money" then 
               if xBlackMoney >= price.Amount then
                    if CanCarry(name, count, type) == true then
                         xPlayer.showNotification("Vous avez le nombre maximum d'item sur vous")
                    else
                         xPlayer.removeAccountMoney("black_money", price.Amount)
                         xPlayer.addInventoryItem(name, count)
                    end
               else
                    xPlayer.showNotification("Vous n'avez pas assez d'argent sale, il vous manque ~r~"..price.Amount - xBlackMoney.."$")
               end
          elseif price.MoneyType == "bank" then
               if xBank >= price.Amount then
                    if CanCarry(name, count, type) == true then
                         xPlayer.showNotification("Vous avez le nombre maximum d'item sur vous")
                    else
                         xPlayer.removeAccountMoney('bank', prix)
                         xPlayer.addInventoryItem(name, count)
                    end
               else
                    xPlayer.showNotification("Vous n'avez pas assez d'argent en banque, il vous manque ~r~"..price.Amount - xBank.."$")
               end
          end
     elseif type == "weapon" then
          if price.MoneyType == "money" then 
               if xMoney >= price.Amount then
                    if CanCarry(name, count, type) == true then
                         xPlayer.showNotification("Vous avez le nombre maximum d'arme sur vous")
                    else
                         xPlayer.removeMoney(price.Amount)
                         xPlayer.addWeapon(name, count)
                    end
               else
                    xPlayer.showNotification("Vous n'avez pas assez d'argent en banque, il vous manque ~r~"..price.Amount - xMoney.."$")
               end
          elseif price.MoneyType == "black_money" then 
               if xBlackMoney >= price.Amount then
                    if CanCarry(name, count, type) == true then
                         xPlayer.showNotification("Vous avez le nombre maximum d'arme sur vous")
                    else
                         xPlayer.removeAccountMoney('black_money', prix)
                         xPlayer.addWeapon(name, count)
                    end
               else
                    xPlayer.showNotification("Vous n'avez pas assez d'argent en banque, il vous manque ~r~"..price.Amount - xBlackMoney.."$")
               end
          elseif price.MoneyType == "bank" then
               if xBank >= price.Amount then
                    if CanCarry(name, count, type) == true then
                         xPlayer.showNotification("Vous avez le nombre maximum d'arme sur vous")
                    else
                         xPlayer.removeAccountMoney('bank', prix)
                         xPlayer.addWeapon(name, count)
                    end
               else
                    xPlayer.showNotification("Vous n'avez pas assez d'argent en banque, il vous manque ~r~"..price.Amount - xBank.."$")
               end
          end
     end
end)