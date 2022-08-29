RegisterCommand("coords", function(source , args , rawCommand)
    if source > 0 then
        local player = source
        local ped = GetPlayerPed(player)
        local playerCoords = GetEntityCoords(ped)

        print(playerCoords)

        TriggerEvent("chat:addMessage", {
            color = {255, 255, 255},
            multiline = true,
            args = {
                ped,
                "Coordinates:",
                "X: " .. playerCoords.x,
                "Y: " .. playerCoords.y,
                "Z: " .. playerCoords.z
            }
        })
    else
        print("This is console!")
    end
end, false)