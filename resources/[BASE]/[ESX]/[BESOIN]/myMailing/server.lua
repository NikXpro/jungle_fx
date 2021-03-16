ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- testing
Citizen.CreateThread(function()
    --TriggerEvent('myMailing:sendMail', 'luis@mymail.de', 'flo@mymail.de', 'Hallo', 'Some more\nMessages that you can see \nTest, Test, Test\nHallo Hallo', '0df5301d7eff5d04fc01eee8371c1dd983d904b8')
    -- TriggerEvent('myMailing:setAsRead', 61, 1)
    -- print('sehnt')
end)

ESX.RegisterServerCallback('myMailing:getItemAmount', function(source, cb, item)
    local xPlayer = ESX.GetPlayerFromId(source)
    local Item = xPlayer.getInventoryItem("tablette")
    print(Item)
    if Item.count < 1 then
        cb(0)
    else
        cb(Item.count)
    end
end)


-- mail accounts
RegisterServerEvent('myMailing:registerNewMailAccount')
AddEventHandler('myMailing:registerNewMailAccount', function(mailaccount, password)
    local src = source
    MySQL.Async.fetchAll('SELECT mail FROM mail_accounts WHERE mail = @mail', {
        ['@mail'] = mailaccount,
    }, function(result)
        if #result > 0 then
            -- mail already exists
            TriggerClientEvent('myMailing:receiveRegisterData', src, false)
        else
            -- mail doesn't exists
            MySQL.Async.execute(
                'INSERT INTO mail_accounts (mail, password, createdBy) VALUES (@mail, @password, @createdBy)', {
                    ['@mail'] = mailaccount, 
                    ['@password'] = password,
                    ['@createdBy'] = 'LICENSE',
                }
            )
            TriggerClientEvent('myMailing:receiveRegisterData', src, true)
        end
    end)

end)

RegisterServerEvent('myMailing:checkMailaccount')
AddEventHandler('myMailing:checkMailaccount', function(mailaccount, password)
    local src = source
    MySQL.Async.fetchAll('SELECT mail, password FROM mail_accounts WHERE mail = @mail', {
        ['@mail'] = mailaccount,
    }, function(result)
        if #result > 0 then
            -- print(tostring(password) .. ' == ' .. result[1].password)
            if password == result[1].password then
                -- Passwort richtig
                TriggerClientEvent('myMailing:receiveLoginData', src, true)
            else
                -- Passwort falsch
                TriggerClientEvent('myMailing:receiveLoginData', src, false)
            end
        else
            -- Mailaccount existiert nicht
            TriggerClientEvent('myMailing:receiveLoginData', src, false)
        end
    end)
end)


-- mail messages
RegisterServerEvent('myMailing:getMailsFromAdress')
AddEventHandler('myMailing:getMailsFromAdress', function(mailadress)
    local src = source

    local done = false
    local done2 = false
    local incommingMails = {}

    MySQL.Async.fetchAll('SELECT * FROM mail_messages WHERE receiver = @receiver ORDER BY id DESC',
    {
        ['@receiver'] = mailadress,
    }, 
    function(result)
        for i=1, #result, 1 do
            table.insert(incommingMails, result[i])
        end
        done = true
    end)

    local sentMails = {}

    MySQL.Async.fetchAll('SELECT * FROM mail_messages WHERE sender = @sender ORDER BY id DESC',
    {
        ['@sender'] = mailadress,
    }, 
    function(result)
        for i=1, #result, 1 do
            table.insert(sentMails, result[i])
        end
        done2 = false
    end)

    while (done ~= true and done2 ~= true) do
        Wait(10)
    end
    -- print(#incommingMails .. ' ' .. #sentMails)
    TriggerClientEvent('myMailing:receiveMailData', src, incommingMails, sentMails)
end)


RegisterServerEvent('myMailing:sendMail')
AddEventHandler('myMailing:sendMail', function(sender, receiver, subject, content, sendBy)
    MySQL.Async.execute(
        'INSERT INTO mail_messages (timestamp, sender, receiver, subject, content, isRead, sendBy) VALUES (@timestamp, @sender, @receiver, @subject, @content, @isRead, @sendBy)', {
            ['@timestamp'] = os.date(), 
            ['@sender'] = sender,
            ['@receiver'] = receiver,
            ['@subject'] = subject,
            ['@content'] = content,
            ['isRead'] = 0,
            ['@sendBy'] = sendBy,
            
        }
    )
    -- successfully sent
end)

RegisterServerEvent('myMailing:setAsRead')
AddEventHandler('myMailing:setAsRead', function(mailID, state)
    MySQL.Async.execute('UPDATE mail_messages SET isRead = @read WHERE id = @id ', {
        ['@read'] = state, 
        ['@id'] = mailID,
    }
)
end)

RegisterServerEvent('myMailing:deleteMail')
AddEventHandler('myMailing:deleteMail', function(mailID)

    MySQL.Async.execute('DELETE FROM mail_messages WHERE id = @id LIMIT 1', {
            ['@id'] = mailID,
        }
    )
end)