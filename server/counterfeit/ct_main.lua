RegisterNetEvent('sc_illegalbusiness:counterfeitremovemoney')
AddEventHandler('sc_illegalbusiness:counterfeitremovemoney',function(value)

local xPlayer = ESX.GetPlayerFromId(source)
exports.ox_inventory:RemoveItem(xPlayer.source,'money',value)
end)

RegisterNetEvent('sc_illegalbusiness:counterfeitbuy')
AddEventHandler('sc_illegalbusiness:counterfeitbuy',function(purchasedId)

local id = ESX.GetPlayerFromId(source)
    MySQL.insert('INSERT INTO sc_illegalbusiness(id,businessid) VALUES (?,?)',{
        id.identifier,
        purchasedId
    })
end)