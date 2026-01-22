-- 420 HUB public loader
-- Safe to share, executes hub from Pastefy raw

local HUB_URL = "https://pastefy.app/ts8BwkAQ/raw"  -- use your clean raw link

local success, err = pcall(function()
    local code = game:HttpGet(HUB_URL)
    if code and #code > 0 then
        local fn, loadErr = loadstring(code)
        if fn then
            fn()  -- safely execute hub
        else
            error("[420 HUB] Failed to parse hub code: "..tostring(loadErr))
        end
    else
        error("[420 HUB] Hub code empty or HttpGet failed")
    end
end)

if not success then
    warn(err)
end
