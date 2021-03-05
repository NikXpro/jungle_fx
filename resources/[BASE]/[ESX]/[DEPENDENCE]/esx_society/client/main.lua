ESX                   = nil
local PlayerData      = {}

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

--function EnableSocietyMoneyHUDElement()

  --local societyMoneyHUDElementTpl = '<div><img src="' .. base64MoneyIcon .. '" style="width:20px; height:20px; vertical-align:middle;">&nbsp;{{money}}</div>'

  --ESX.UI.HUD.RegisterElement('society_money', 3, 0, societyMoneyHUDElementTpl, {
    --money = 0
  --})

--end

---SECONDJOB INCLUDED
--function EnableSociety2MoneyHUDElement()

  --local society2MoneyHUDElementTpl = '<div><img src="' .. base64MoneyIcon .. '" style="width:20px; height:20px; vertical-align:middle;">&nbsp;{{money}}</div>'

  --ESX.UI.HUD.RegisterElement('society2_money', 3, 0, society2MoneyHUDElementTpl, {
    --money = 0
  --})

--end

function DisableSocietyMoneyHUDElement()
  ESX.UI.HUD.RemoveElement('society_money')
end

---SECONDJOB INCLUDED
function DisableSociety2MoneyHUDElement()
  ESX.UI.HUD.RemoveElement('society2_money')
end

function UpdateSocietyMoneyHUDElement(money)

  ESX.UI.HUD.UpdateElement('society_money', {
    money = money
  })

end

---SECONDJOB INCLUDED
function UpdateSociety2MoneyHUDElement(money)

  ESX.UI.HUD.UpdateElement('society2_money', {
    money = money
  })

end

function OpenBossMenu(society, close, options)
    local options  = options or {}
    local elements = {}

    local defaultOptions = {
        withdraw  = true,
        deposit   = true,
        wash      = false,
        employees = true,
        grades    = true
    }

    for k,v in pairs(defaultOptions) do
        if options[k] == nil then
            options[k] = v
        end
    end

    if options.withdraw then
        table.insert(elements, {label = _U('withdraw_society_money'), value = 'withdraw_society_money'})
    end

    if options.deposit then
        table.insert(elements, {label = _U('deposit_society_money'), value = 'deposit_money'})
    end

    if options.wash then
        table.insert(elements, {label = _U('wash_money'), value = 'wash_money'})
    end

    if options.employees then
        table.insert(elements, {label = _U('employee_management'), value = 'manage_employees'})
    end
  
  ---SECONDJOB INCLUDED
	if options.employees then
        table.insert(elements, {label = _U('secondary_employee_management'), value = 'secondary_manage_employees'})
	end

    if options.grades then
        table.insert(elements, {label = _U('salary_management'), value = 'manage_grades'})
    end

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'boss_actions_' .. society,
    {
        css      = 'entreprise',
	    title    = 'Patron',
        elements = elements
    }, function(data, menu)

        if data.current.value == 'withdraw_society_money' then

            ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'withdraw_society_money_amount_' .. society,
            {
                title = _U('withdraw_amount')
            }, function(data, menu)

                local amount = tonumber(data.value)

                if amount == nil then
                    ESX.ShowNotification(_U('invalid_amount'))
                else
                    menu.close()
                    TriggerServerEvent('esx_society:withdrawMoney', society, amount)
                end

            end, function(data, menu)
                menu.close()
            end)

        elseif data.current.value == 'deposit_money' then

            ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'deposit_money_amount_' .. society,
            {
                title = _U('deposit_amount')
            }, function(data, menu)

                local amount = tonumber(data.value)

                if amount == nil then
                    ESX.ShowNotification(_U('invalid_amount'))
                else
                    menu.close()
                    TriggerServerEvent('esx_society:depositMoney', society, amount)
                end

            end, function(data, menu)
                menu.close()
            end)

        elseif data.current.value == 'wash_money' then

            ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'wash_money_amount_' .. society,
            {
               title = _U('wash_money_amount')
            }, function(data, menu)

                local amount = tonumber(data.value)

                if amount == nil then
                    ESX.ShowNotification(_U('invalid_amount'))
                else
                    menu.close()
                    TriggerServerEvent('esx_society:washMoney', society, amount)
                end

            end, function(data, menu)
                menu.close()
            end)

        elseif data.current.value == 'manage_employees' then
            OpenManageEmployeesMenu(society)
			
		elseif data.current.value == 'secondary_manage_employees' then
			OpenManageEmployeesMenu2(society)		

        elseif data.current.value == 'manage_grades' then
            OpenManageGradesMenu(society)
		end

    end, function(data, menu)

        if close then
            close(data, menu)
        end

    end)

end

function OpenManageEmployeesMenu(society)

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'manage_employees_' .. society,
    {
	  css      = 'patron',
	  title    = _U('employee_management'),
      elements = {
        {label = _U('employee_list'), value = 'employee_list'},
        {label = _U('recruit'),       value = 'recruit'},
      }
    },
    function(data, menu)

      if data.current.value == 'employee_list' then
        OpenEmployeeList(society)
      end

      if data.current.value == 'recruit' then
        OpenRecruitMenu(society)
      end

    end,
    function(data, menu)
      menu.close()
    end
  )

end

---SECONDJOB INCLUDED
function OpenManageEmployeesMenu2(society)

  ESX.UI.Menu.Open(
    'default', GetCurrentResourceName(), 'secondary_manage_employees_' .. society,
    {
      css      = 'patron',
	  title    = _U('secondary_employee_management'),
      elements = {
        {label = _U('employee_list'), value = 'employee_list'},
        {label = _U('recruit'),       value = 'recruit'},
      }
    },
    function(data, menu)

      if data.current.value == 'employee_list' then
        OpenEmployeeList2(society)
      end

      if data.current.value == 'recruit' then
        OpenRecruitMenu2(society)
      end

    end,
    function(data, menu)
      menu.close()
    end
  )

end

function OpenEmployeeList(society)

  ESX.TriggerServerCallback('esx_society:getEmployees', function(employees)

    local elements = {
      head = {_U('employee'), _U('grade'), _U('actions')},
      rows = {}
    }

    for i=1, #employees, 1 do

      local gradeLabel = (employees[i].job.grade_label == '' and employees[i].job.label or employees[i].job.grade_label)

      table.insert(elements.rows, {
        data = employees[i],
        cols = {
          employees[i].name,
          gradeLabel,
          '{{' .. _U('promote') .. '|promote}} {{' .. _U('fire') .. '|fire}}'
        }
      })
    end

    ESX.UI.Menu.Open(
      'list', GetCurrentResourceName(), 'employee_list_' .. society,
      elements,
      function(data, menu)

        local employee = data.data

        if data.value == 'promote' then
          menu.close()
          OpenPromoteMenu(society, employee)
        end

        if data.value == 'fire' then

          TriggerEvent('esx:showNotification', _U('you_have_fired', employee.name))

          ESX.TriggerServerCallback('esx_society:setJob', function()
            OpenEmployeeList(society)
          end, employee.identifier, 'unemployed', 0, 'fire')

        end

      end,
      function(data, menu)
        menu.close()
        OpenManageEmployeesMenu(society)
      end
    )

  end, society)

end

---SECONDJOB INCLUDED
function OpenEmployeeList2(society)

  ESX.TriggerServerCallback('esx_society:getEmployees2', function(employees)

    local elements = {
      head = {_U('employee'), _U('grade'), _U('actions'),'Principal ou Secondaire'},
      rows = {}
    }

    for i=1, #employees, 1 do

      local gradeLabel = (employees[i].job2.grade_label == '' and employees[i].job2.label or employees[i].job2.grade_label)

      table.insert(elements.rows, {
        data = employees[i],
        cols = {
          employees[i].name,
          gradeLabel,
          '{{' .. _U('promote') .. '|promote}} {{' .. _U('fire') .. '|fire}}',"Emploi Secondaire"
        }
      })
    end

    ESX.UI.Menu.Open(
      'list', GetCurrentResourceName(), 'employee_list_' .. society,
      elements,
      function(data, menu)

        local employee = data.data

        if data.value == 'promote' then
          menu.close()
          OpenPromoteMenu2(society, employee)
        end

        if data.value == 'fire' then

          TriggerEvent('esx:showNotification', _U('you_have_fired', employee.name))

          ESX.TriggerServerCallback('esx_society:setJob2', function()
            OpenEmployeeList2(society)
          end, employee.identifier, 'unemployed2', 0, 'fire')

        end

      end,
      function(data, menu)
        menu.close()
        OpenManageEmployeesMenu2(society)
      end
    )

  end, society)

end

function OpenRecruitMenu(society)

  ESX.TriggerServerCallback('esx_society:getOnlinePlayers', function(players)

    local elements = {}

    for i=1, #players, 1 do
      if players[i].job.name ~= society then
        table.insert(elements, {label = players[i].name, value = players[i].source, name = players[i].name, identifier = players[i].identifier})
      end
    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'recruit_' .. society,
      {
		css      = 'patron',
		title    = _U('recruiting'),
        elements = elements
      },
      function(data, menu)

        ESX.UI.Menu.Open(
          'default', GetCurrentResourceName(), 'recruit_confirm_' .. society,
          {
            title    = _U('do_you_want_to_recruit', data.current.name),
            elements = {
              {label = _U('yes'), value = 'yes'},
              {label = _U('no'),  value = 'no'},
            }
          },
          function(data2, menu2)

            menu2.close()

            if data2.current.value == 'yes' then

              TriggerEvent('esx:showNotification', _U('you_have_hired', data.current.name))

              ESX.TriggerServerCallback('esx_society:setJob', function()
                OpenRecruitMenu(society)
              end, data.current.identifier, society, 0, 'hire')

            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end,
      function(data, menu)
        menu.close()
      end
    )

  end)

end

---SECONDJOB INCLUDED
function OpenRecruitMenu2(society)

  ESX.TriggerServerCallback('esx_society:getOnlinePlayers2', function(players)

    local elements = {}

    for i=1, #players, 1 do
      if players[i].job2.name ~= society then
        table.insert(elements, {label = players[i].name, value = players[i].source, name = players[i].name, identifier = players[i].identifier})
      end
    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'recruit_' .. society,
      {
        title    = _U('recruiting'),
        elements = elements
      },
      function(data, menu)

        ESX.UI.Menu.Open(
          'default', GetCurrentResourceName(), 'recruit_confirm_' .. society,
          {
            title    = _U('do_you_want_to_recruit', data.current.name),
            elements = {
              {label = _U('yes'), value = 'yes'},
              {label = _U('no'),  value = 'no'},
            }
          },
          function(data2, menu2)

            menu2.close()

            if data2.current.value == 'yes' then

              TriggerEvent('esx:showNotification', _U('you_have_hired', data.current.name))

              ESX.TriggerServerCallback('esx_society:setJob2', function()
                OpenRecruitMenu2(society)
              end, data.current.identifier, society, 0, 'hire')

            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end,
      function(data, menu)
        menu.close()
      end
    )

  end)

end

function OpenPromoteMenu(society, employee)

  ESX.TriggerServerCallback('esx_society:getJob', function(job)

    local elements = {}

    for i=1, #job.grades, 1 do
      local gradeLabel = (job.grades[i].label == '' and job.label or job.grades[i].label)
      table.insert(elements, {label = gradeLabel, value = job.grades[i].grade, selected = (employee.job.grade == job.grades[i].grade)})
    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'promote_employee_' .. society,
      {
        title    = _U('promote_employee', employee.name),
        elements = elements
      },
      function(data, menu)
        menu.close()

        TriggerEvent('esx:showNotification', _U('you_have_promoted', employee.name, data.current.label))

        ESX.TriggerServerCallback('esx_society:setJob', function()
          OpenEmployeeList(society)
        end, employee.identifier, society, data.current.value, 'promote')

      end,
      function(data, menu)
        menu.close()
        OpenEmployeeList(society)
      end
    )

  end, society)

end

---SECONDJOB INCLUDED
function OpenPromoteMenu2(society, employee)

  ESX.TriggerServerCallback('esx_society:getJob2', function(job2)

    local elements = {}

    for i=1, #job2.grades, 1 do
      local gradeLabel = (job2.grades[i].label == '' and job2.label or job2.grades[i].label)
      table.insert(elements, {label = gradeLabel, value = job2.grades[i].grade, selected = (employee.job2.grade == job2.grades[i].grade)})
    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'promote_employee_' .. society,
      {
        title    = _U('promote_employee', employee.name),
        elements = elements
      },
      function(data, menu)
        menu.close()

        TriggerEvent('esx:showNotification', _U('you_have_promoted', employee.name, data.current.label))

        ESX.TriggerServerCallback('esx_society:setJob2', function()
          OpenEmployeeList2(society)
        end, employee.identifier, society, data.current.value, 'promote')

      end,
      function(data, menu)
        menu.close()
        OpenEmployeeList2(society)
      end
    )

  end, society)

end

function OpenManageGradesMenu(society)

  ESX.TriggerServerCallback('esx_society:getJob', function(job)

    local elements = {}

    for i=1, #job.grades, 1 do
      local gradeLabel = (job.grades[i].label == '' and job.label or job.grades[i].label)
      table.insert(elements, {label = gradeLabel .. ' $' .. job.grades[i].salary, value = job.grades[i].grade})
    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'manage_grades_' .. society,
      {
		css      = 'patron',
		title    = _U('salary_management'),
        elements = elements
      },
      function(data, menu)

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'manage_grades_amount_' .. society,
          {
            title = _U('salary_amount')
          },
          function(data2, menu2)

            local amount = tonumber(data2.value)

            if amount == nil then
              ESX.ShowNotification(_U('invalid_amount'))
            elseif amount >= Config.MaxSalary then
              ESX.ShowNotification(_U('invalid_amount_max'))
            else
              menu2.close()

              ESX.TriggerServerCallback('esx_society:setJobSalary', function()
                OpenManageGradesMenu(society)
              end, society, data.current.value, amount)
            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end,
      function(data, menu)
        menu.close()
      end
    )

  end, society)

end

---SECONDJOB INCLUDED
function OpenManageGradesMenu2(society)

  ESX.TriggerServerCallback('esx_society:getJob2', function(job2)

    local elements = {}

    for i=1, #job2.grades, 1 do
      local gradeLabel = (job2.grades[i].label == '' and job2.label or job2.grades[i].label)
      table.insert(elements, {label = gradeLabel .. ' $' .. job2.grades[i].salary, value = job2.grades[i].grade})
    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'manage_grades_' .. society,
      {
        title    = _U('salary_management'),
        elements = elements
      },
      function(data, menu)

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'manage_grades_amount_' .. society,
          {
            title = _U('salary_amount')
          },
          function(data2, menu2)

            local amount = tonumber(data2.value)

            if amount == nil then
              ESX.ShowNotification(_U('invalid_amount'))
            elseif amount >= Config.MaxSalary then
              ESX.ShowNotification(_U('invalid_amount_max'))
            else
              menu2.close()

              ESX.TriggerServerCallback('esx_society:setJobSalary2', function()
                OpenManageGradesMenu(society)
              end, society, data.current.value, amount)
            end

          end,
          function(data2, menu2)
            menu2.close()
          end
        )

      end,
      function(data, menu)
        menu.close()
      end
    )

  end, society)

end

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  
  PlayerData = xPlayer

  DisableSocietyMoneyHUDElement()

  if PlayerData.job.grade_name == 'boss' then
    
    --EnableSocietyMoneyHUDElement()
  
    ESX.TriggerServerCallback('esx_society:getSocietyMoney', function(money)
      UpdateSocietyMoneyHUDElement(money)
    end, PlayerData.job.name)

  end
  
  if PlayerData.job2.grade_name == 'boss' then
    
    EnableSociety2MoneyHUDElement()
  
    ESX.TriggerServerCallback('esx_society:getSocietyMoney', function(money)
      UpdateSociety2MoneyHUDElement(money)
    end, PlayerData.job2.name)
  end	

end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)

  PlayerData.job = job

  --DisableSocietyMoneyHUDElement()

  if PlayerData.job.grade_name == 'boss' then
    
    --EnableSocietyMoneyHUDElement()
  
    ESX.TriggerServerCallback('esx_society:getSocietyMoney', function(money)
      UpdateSocietyMoneyHUDElement(money)
    end, PlayerData.job.name)

  end

end)

RegisterNetEvent('esx:setJob2')
AddEventHandler('esx:setJob2', function(job2)

  PlayerData.job2 = job2


  DisableSociety2MoneyHUDElement()


  if PlayerData.job2.grade_name == 'boss' then
    
    EnableSociety2MoneyHUDElement()
  
    ESX.TriggerServerCallback('esx_society:getSocietyMoney', function(money)
      UpdateSociety2MoneyHUDElement(money)
    end, PlayerData.job2.name)

  end

end)

RegisterNetEvent('esx_addonaccount:setMoney')
AddEventHandler('esx_addonaccount:setMoney', function(society, money)

  if PlayerData.job ~= nil and PlayerData.job.grade_name == 'boss' and 'society_' .. PlayerData.job.name == society then
    UpdateSocietyMoneyHUDElement(money)
  end
  
  if PlayerData.job2 ~= nil and PlayerData.job2.grade_name == 'boss' and 'society_' .. PlayerData.job2.name == society then
    UpdateSociety2MoneyHUDElement(money)
  end

end)

AddEventHandler('esx_society:openBossMenu', function(society, close, options)
  OpenBossMenu(society, close, options)
end)
