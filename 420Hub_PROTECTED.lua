-- 420 HUB public loader
-- real code is NOT here

local TOKEN = "PUT_GITHUB_TOKEN_HERE"
local URL = "https://raw.githubusercontent.com/fbjz5k8t5h-blip/420Hub-Core/main/main.lua"

local headers = {
	["Authorization"] = "token "..TOKEN
}

local source = game:HttpGet(URL, true, headers)
loadstring(source)()
