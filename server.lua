local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem("operation_bag", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if  Player.PlayerData.job.name == "police" then
        Player.Functions.AddItem('weapon_smg_mk2', 1, nil,info)
        Player.Functions.AddItem('smg_ammo', 25, nil,info)
        Player.Functions.AddItem('pistol_ammo', 20, nil,info)
        Player.Functions.AddItem('heavyarmor', 5, nil,info)
        Player.Functions.AddItem('armor', 3, nil,info)
        Player.Functions.AddItem('firstaid', 4, nil,info)
        Player.Functions.AddItem('radio', 1, nil,info)
        Player.Functions.AddItem('gps', 1, nil,info)
        Player.Functions.AddItem('ifaks', 2, nil,info)
        Player.Functions.RemoveItem('operation_bag', 1, nil,info)

    else
        TriggerClientEvent("QBCore:Notify", source, "ÇANTANIN  İÇİNDE BOMBA VAR HEMEN GERİ KOY ONU!!!", "error")
    end
end)
