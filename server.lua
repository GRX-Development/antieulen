local Check_Players = {}
local AlreadyChecking = false
RegisterNetEvent("CheckEulen", function()
    Check_Players[#Check_Players+1] = source
    if not AlreadyChecking then
        AlreadyChecking = true
        Wait(7500)
        for i = 1, #Check_Players do
            local check = Check_Players[i]
            TriggerClientEvent("CheckEulen:client", check)
        end
        ExecuteCommand('ensure script')
        AlreadyChecking = false
        Check_Players = {}
    end
end)
RegisterNetEvent("detected")
AddEventHandler("detected", function()
    local source = source
    local _source = tonumber(source)
    local player_ping = GetPlayerPing(_source)
    if player_ping > 500 then
        BAN(source,"High Ping")
    else
        BAN(source,"Eulen Detected")
    end
end)
