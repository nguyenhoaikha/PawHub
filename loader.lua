--[[
    PawHub v2.0.0
    Roblox Script Hub - Smart Farming Automation

    Load this script in your executor to start PawHub.
    Toggle UI: Right Control or Insert key
]]

local repo = "https://raw.githubusercontent.com/nguyenhoaikha/PawHub/main"
local ok, result = pcall(function()
    return game:HttpGet(repo .. "/build/PawHub.lua")
end)

if ok and result then
    local fn, err = loadstring(result)
    if fn then
        fn()
    else
        warn("[PawHub] Failed to compile: " .. err)
    end
else
    warn("[PawHub] Failed to fetch script: " .. tostring(result))
end
