local coordsIn = Config.CounterfeitFactory.CoordsIn
local coordsOut = Config.CounterfeitFactory.CoordsOut
local title = Config.CounterfeitFactory.Title
local value = Config.CounterfeitFactory.Value
local image = Config.CounterfeitFactory.Image
local description = Config.CounterfeitFactory.Description

CreateThread(function()
    for i = 1, #coordsOut do
        local coordsout = coordsOut[i]
        local coordsin = coordsIn[i]
        exports.ox_target:addBoxZone({
            coords = vec3(coordsout.x,coordsout.y,coordsout.z),
            size = vec3(1.0,1.0,1.0),
            debug = Config.Debug,
            options = {
                icon = 'fas fa-door-open',
                label = 'Leave',
                distance = 2.0,
                onSelect = function()
                    DoScreenFadeOut(1000)
                    Wait(1000)
                    SetEntityCoords(PlayerPedId(),coordsin.x,coordsin.y,coordsin.z-1,false,false,false,true)
                    DoScreenFadeIn(1000)
                end
            }
        })
    end 
    for i = 1, #coordsIn do
        local coordsout = coordsOut[i]
        local coordsin = coordsIn[i]
        exports.ox_target:addBoxZone({
            coords = vec3(coordsin.x,coordsin.y,coordsin.z),
            size = vec3(1.0,1.0,1.0),
            debug = Config.Debug,
            options = {
                icon = 'fas fa-door-open',
                label = 'Enter',
                distance = 2.0,
                    onSelect = function()
                        DoScreenFadeOut(1000)
                        Wait(1000)
                        SetEntityCoords(PlayerPedId(),coordsout.x,coordsout.y,coordsout.z-1,false,false,false,true)
                        DoScreenFadeIn(1000)
                end
            }
        })
    end
end)

CreateThread(function ()
    ESX.TriggerServerCallback('sc_counterfeit:getCounterfeitDisabled',function(getCounterfeitDisabled)
        if getCounterfeitDisabled ~= nil then 
            owneddisable = false
        else 
            owneddisable = true
        end
    end)
end)



RegisterNetEvent('sc_illegalbusiness:counterfeitmenu')
AddEventHandler('sc_illegalbusiness:counterfeitmenu',function ()

local options = {}
ESX.TriggerServerCallback('sc_counterfeit:getCounterfeitDisabled',function(can)



    for i = 1, #title do
        table.insert(options, {
            title = title[i],
            image = image[i],
            description = description[i],
            metadata = {
                value = value[i]
            },
            disabled = not can,
            onSelect = function ()
                TriggerServerEvent('sc_illegalbusiness:counterfeitremovemoney',value[i])
            end
        })
    end

    lib.registerContext({
        title = 'Counterfeit Factory',
        id = 'sc_counterfeit:menu',
        options = options
    })

    lib.showContext('sc_counterfeit:menu')
end)
end)