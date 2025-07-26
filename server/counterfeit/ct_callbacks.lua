ESX.RegisterServerCallback('sc_counterfeit:getCounterfeit', function(source, cb)
    local id = ESX.GetPlayerFromId(source)
    local getCounterfeit = MySQL.scalar.await('SELECT businessid FROM sc_illegalbusiness WHERE id = ?', {
        id.identifier
    })
    cb(getCounterfeit)
end)

ESX.RegisterServerCallback('sc_counterfeit:getCounterfeitDisabled', function(source, cb)
    local id = ESX.GetPlayerFromId(source)
    local getCounterfeitDisabled = MySQL.scalar.await('SELECT businessid FROM sc_illegalbusiness WHERE id = ?', {
        id.identifier
    })
    cb(getCounterfeitDisabled)
end)