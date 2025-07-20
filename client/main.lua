RegisterNetEvent('sc_illegalbusiness:busdealermenu')
AddEventHandler('sc_illegalbusiness:busdealermenu', function ()
    lib.registerContext({
        id = 'busdealermenu',
        title = 'What do you want?',
        options = {
            {
                title = 'YES',
            }
        }
    })
    lib.showContext('busdealermenu')
end)