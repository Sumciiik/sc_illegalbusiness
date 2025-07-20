-- The guy you buy businesses from 

local targetCoords = Config.Peds.BusDealer.Coords
local pedmodel = Config.Peds.BusDealer.Model
local animation = Config.Peds.BusDealer.Animation

local Ped = nil
local isSpawned = false
CreateThread(function()
    while true do 
        Wait(1000)
            local Coords = GetEntityCoords(cache.ped)
            local distance = #(Coords - vec3(targetCoords.x,targetCoords.y,targetCoords.z))
            if distance < 10 and not isSpawned then
                isSpawned = true
                RequestModel(GetHashKey(pedmodel))

                while not HasModelLoaded(GetHashKey(pedmodel)) do
                    Wait(100)
                end

                Ped = CreatePed(4, pedmodel, targetCoords.x, targetCoords.y, targetCoords.z-1, targetCoords.w, false, true)
                exports.ox_target:addLocalEntity(Ped,{
                    {
                        icon = 'fa-solid fa-smoking', 
                        label = 'Talk',
                        distance = 2.0,
                        event = 'sc_illegalbusiness:busdealermenu',
                    }
                })
                FreezeEntityPosition(Ped, true)
                SetEntityInvincible(Ped, true)
                SetBlockingOfNonTemporaryEvents(Ped, true)
                TaskStartScenarioInPlace(Ped, animation, 0, true)
                for i = 0, 255, 51 do
                    Wait(50)
                    SetEntityAlpha(Ped, i, false)
                end     
            elseif distance >= 13 and isSpawned then
                for i = 255, 0, -51 do
                    Wait(50)
                    SetEntityAlpha(Ped, i, false)
                end
                DeletePed(Ped)
                isSpawned = false
            end
    end
end)
---------------