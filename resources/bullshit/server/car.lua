RegisterCommand("car", function(source, args, rawCommands)
    if source > 0 and #args > 0 then
        local player = source
        local ped = GetPlayerPed(player)
        local playerCoords = GetEntityCoords(ped)

        local vehicle = GetHashKey(args[1])

        local vehicle = CreateVehicle(vehicle, playerCoords.x, playerCoords.y, playerCoords.z, 0.0, true, false)
        SetPedIntoVehicle(ped, vehicle, -1)
    else
        print("No vehicle name passed")
    end
end, false)