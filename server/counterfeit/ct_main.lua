RegisterNetEvent('sc_illegalbusiness:counterfeitremovemoney')
AddEventHandler('sc_illegalbusiness:counterfeitremovemoney',function(value)

local xPlayer = ESX.GetPlayerFromId(source)
exports.ox_inventory:RemoveItem(xPlayer.source,'money',value)
end)