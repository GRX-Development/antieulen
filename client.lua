local resource_loaded = false
RegisterNetEvent("CheckEulen:client", function()
    old_timer = GetGameTimer()
end)
AddEventHandler("onResourceStart", function(res)
    if res == "script" and not resource_loaded then
        resource_loaded = true
        if GetGameTimer()-old_timer > 4000 then
            TriggerServerEvent("detected")
        end
    end
end)
TriggerServerEvent("CheckEulen")
