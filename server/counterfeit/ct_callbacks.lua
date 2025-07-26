ESX.RegisterServerCallback('sc_counterfeit:getCounterfeit', function(source, cb)
    local id = ESX.GetPlayerFromId(source)
    local getCounterfeit = MySQL.scalar.await('SELECT businessid FROM sc_illegalbusiness WHERE id = ?', {
        id.identifier
    })
    cb(getCounterfeit)
end)

ESX.RegisterServerCallback('sc_counterfeit:getCounterfeitDisabled', function(source, cb)
    local id = ESX.GetPlayerFromId(source)
    local purchasedIds = {}

    local result = MySQL.query.await('SELECT businessid FROM sc_illegalbusiness WHERE id = ?', {
        id.identifier
    })

    if result then
        for _, row in ipairs(result) do
            table.insert(purchasedIds, row.businessid)
        end
    end

    cb(purchasedIds or {})
end)

