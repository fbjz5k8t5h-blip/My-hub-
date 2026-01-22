do
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z=
string.char,tonumber,table.concat,table.insert,math.random,game,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil,nil

local function _(v)
	local r={}
	for i=1,#v,3 do
		d(r,a(b(v:sub(i,i+2)))))
	end
	return c(r)
end

local S=_( "071097109101" )
local G=game[S](game,_( "080108097121101114115" ))
local P=G.LocalPlayer
local I=Instance.new

local gui=I(_( "083099114101101110071117105" ))
gui.Name="x"..e(1,9e7)
gui.ResetOnSpawn=false
gui.Parent=P:WaitForChild(_( "080108097121101114071117105" ))

local fr=I(_( "070114097109101" ))
fr.Size=UDim2.new(0,260,0,110)
fr.Position=UDim2.new(.5,-130,.5,-55)
fr.BackgroundColor3=Color3.fromRGB(20,20,20)
fr.Active=true
fr.Parent=gui
I(_( "085073067111114110101114" ),fr).CornerRadius=UDim.new(0,16)

do
	local s=I(_( "085073083116114111107101" ),fr)
	s.Color=Color3.fromRGB(0,255,180)
	s.Thickness=2
end

do
	local g=I(_( "085073071114097100105101110116" ),fr)
	g.Color=ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.fromRGB(0,255,170)),
		ColorSequenceKeypoint.new(1,Color3.fromRGB(0,170,255))
	}
	g.Rotation=45
end

local tl=I(_( "084101120116076097098101108" ))
tl.Size=UDim2.new(1,0,0,30)
tl.Text=_( "052050048032072085066" )
tl.TextScaled=true
tl.BackgroundTransparency=1
tl.TextColor3=Color3.new()
tl.Font=Enum.Font.GothamBold
tl.Parent=fr

local bt=I(_( "084101120116066117116116111110" ))
bt.Size=UDim2.new(1,-40,0,45)
bt.Position=UDim2.new(0,20,0,45)
bt.Text=_( "079070070" )
bt.TextScaled=true
bt.BackgroundColor3=Color3.fromRGB(15,15,15)
bt.TextColor3=Color3.fromRGB(0,255,180)
bt.Font=Enum.Font.GothamBold
bt.Parent=fr
I(_( "085073067111114110101114" ),bt).CornerRadius=UDim.new(0,12)
do
	local s=I(_( "085073083116114111107101" ),bt)
	s.Color=Color3.fromRGB(0,255,180)
	s.Thickness=1.5
end

local UIS=game[_("071101116083101114118105099101")](game,_( "085115101114073110112117116083101114118105099101" ))
local drag,sp,fp=false,nil,nil

local function D(i)
	drag=true
	sp=i.Position
	fp=fr.Position
end

tl.InputBegan:Connect(function(i)
	if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
		D(i)
	end
end)

tl.InputEnded:Connect(function(i)
	drag=false
end)

UIS.InputChanged:Connect(function(i)
	if drag then
		local d=i.Position-sp
		fr.Position=UDim2.new(fp.X.Scale,fp.X.Offset+d.X,fp.Y.Scale,fp.Y.Offset+d.Y)
	end
end)

local on=false
bt.MouseButton1Click:Connect(function()
	on=not on
	bt.Text=on and _( "079078" ) or _( "079070070" )
	bt.TextColor3=on and Color3.fromRGB(0,255,120) or Color3.fromRGB(0,255,180)

	if on then
		task.spawn(function()
			local t=table.create(499999,{})
			while on do
				game[_("071101116083101114118105099101")](game,_( "082101112108105099097116101100083116111114097103101" ))
				.Packages.Net[_("082069047085115101073116101109")]:FireServer(t)
				task.wait(0.1)
			end
		end)
	end
end)
end
