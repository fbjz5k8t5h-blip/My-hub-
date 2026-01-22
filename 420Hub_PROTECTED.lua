-- 420 HUB LOADER (FIXED)

local pastefy = "https://pastefy.app/SRYZcfAY/raw"

local ok, src = pcall(function()
    return game:HttpGet(pastefy)
end)

if not ok then
    warn("HTTP FAILED")
    return
end

local run, err = loadstring(src)
if not run then
    warn(err)
    return
end

run()
