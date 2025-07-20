RegisterNetEvent('sc_illegalbusiness:busdealermenu')
AddEventHandler('sc_illegalbusiness:busdealermenu', function ()
    bconfirm = lib.alertDialog({
        header = 'Hey',
        content = 'I heard that you wanted to buy some shady business.  \n Is it true?',
        centered = true,
        cancel = true,
        labels = {
            confirm = 'Yes',
            cancel = 'No',
        }
    })
    
    if bconfirm == 'confirm' then
        lib.registerContext({
            id = 'busdealermenu',
            title = 'What do you want?',
            options = {
                {
                    title = 'List of businesses',
                    event = 'sc_illegalbusiness:listbus'
                }
            }
        })
        lib.showContext('busdealermenu')
    else
        lib.notify({
            title = 'Shady Guy',
            description = 'Get out of here then.',
            type = 'warning'
        })
    end
end)

RegisterNetEvent('sc_illegalbusiness:listbus')
AddEventHandler('sc_illegalbusiness:listbus',function ()
    lib.registerContext({
        id = 'busdealerlist',
        title = 'Here is what I`ve got',
        options = {
            {
                title = '',
                event = ''
            }
        }
    })
    lib.showContext('busdealerlist')
end)