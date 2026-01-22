-- 420 HUB public loader
local HUB_URL = "https://pastefy.app/ts8BwkAQ/raw"

local success, err = pcall(function()
    loadstring(game:HttpGet(HUB_URL))()
end)

if not success then
    warn("[420 HUB] Failed to load hub: "..tostring(err))
end
