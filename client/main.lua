local coordsIn = Config.CounterfeitFactory.CoordsIn


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
                    description = '',
                    icon = '',
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
    local alweed = Config.AllowedBusinesses.WeedFarm
    local almeth = Config.AllowedBusinesses.MethLab
    local alcocaine = Config.AllowedBusinesses.CocaineLab
    local alcounterfeit = Config.AllowedBusinesses.CounterfeitFactory
    
    lib.registerContext({
        id = 'busdealerlist',
        title = 'Here is what I`ve got',
        options = {
            {
                title = '1',
                description = '',
                icon = 'cannabis',
                event = 'sc_illegalbusiness:weedfarmmenu',
                disabled = not alweed
            },
                        {
                title = '2',
                description = '',
                icon = 'flask',
                event = 'sc_illegalbusiness:methlabmenu',
                disabled = not almeth
            },
                        {
                title = '3',
                description = '',
                icon = 'leaf',
                event = 'sc_illegalbusiness:cocainelabmenu',
                disabled = not alcocaine
            },
            {
                title = 'Counterfeiting',
                description = 'Tired of goverment?',
                icon = 'money-bill',
                event = 'sc_illegalbusiness:counterfeitmenu',
                disabled = not alcounterfeit
            },
            {
                title = 'Test',
                onSelect = function ()
                        for i = 1, #coordsIn do 
                        print(coordsIn[i])
                        end
                end
            },
        }
    })
    lib.showContext('busdealerlist')
end)