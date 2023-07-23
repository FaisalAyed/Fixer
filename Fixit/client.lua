local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(10)
        local Vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

        if IsControlJustPressed(0, 38) then
            if IsPedInAnyVehicle(PlayerPedId(), false) then
                    
                    QBCore.Functions.Notify(Config.message[0], "primary", 2500)
                    Citizen.Wait(4000)
                    SetVehicleFixed(Vehicle)
                    QBCore.Functions.Notify(Config.message[1], "success", 1200)
            else
                Citizen.Wait(500)
                QBCore.Functions.Notify(Config.message[2], "error", 3000)
            end
        end

    end
end)