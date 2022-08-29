RegisterNetEvent("custom", function (vehicle)
    SetVehicleModKit(vehicle, 0)
    
    --[[
        16 - Armor
        15 - Suspension
        13 - Transmission
        14 - Horn
        12 - Brakes
        11 - Engine
    ]]
    for modType = 0, 18,1 do
        local modIndex = GetNumVehicleMods(vehicle, modType)
        print("modType: " .. modType, "modIndex: " .. modIndex)

        SetVehicleMod(vehicle, modType, modIndex, false)
    end
    SetVehicleNumberPlateText(vehicle, "TEST")
end)