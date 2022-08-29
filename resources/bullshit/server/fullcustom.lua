RegisterCommand("fullcustom", function(source, args, rawCommands)
    if source > 0 then
        local player = source
        local ped = GetPlayerPed(player)
        
        local vehicle = GetVehiclePedIsIn(ped, false)
        if vehicle ~= 0 then
            TriggerClientEvent("custom", player, vehicle)
        end
    end
end, false)