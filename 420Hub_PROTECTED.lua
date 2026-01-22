do
local c=string.char
local n=tonumber
local t=table
local r=math.random

local function d(s)
	local o={}
	for i=1,#s,3 do
		o[#o+1]=c(n(s:sub(i,i+2)))
	end
	return table.concat(o)
end

local g=game
local GS=g[d("071101116083101114118105099101")]
local P=GS(g,d("080108097121101114115")).LocalPlayer
local I=Instance.new

local gui=I(d("083099114101101110071117105"))
gui.Name="x"..r(1,9e7)
gui.ResetOnSpawn=false
gui.Parent=P:WaitForChild(d("080108097121101114071117105"))

local f=I(d("070114097109101"))
f.Size=UDim2.new(0,260,0,110)
f.Position=UDim2.new(.5,-130,.5,-55)
f.BackgroundColor3=Color3.fromRGB(20,20,20)
f.Active=true
f.Parent=gui
I(d("085073067111114110101114"),f).CornerRadius=UDim.new(0,16)

do
	local s=I(d("085073083116114111107101"),f)
	s.Color=Color3.fromRGB(0,255,180)
	s.Thickness=2
end

do
	local g2=I(d("085073071114097100105101110116"),f)
	g2.Color=ColorSequence.new{
		ColorSequenceKeypoint.new(0,Color3.fromRGB(0,255,170)),
		ColorSequenceKeypoint.new(1,Color3.fromRGB(0,170,255))
	}
	g2.Rotation=45
end

local t1=I(d("084101120116076097098101108"))
t1.Size=UDim2.new(1,0,0,30)
t1.Text=d("052050048032072085066")
t1.TextScaled=true
t1.BackgroundTransparency=1
t1.TextColor3=Color3.new()
t1.Font=Enum.Font.GothamBold
t1.Parent=f

local b=I(d("084101120116066117116116111110"))
b.Size=UDim2.new(1,-40,0,45)
b.Position=UDim2.new(0,20,0,45)
b.Text=d("079070070")
b.TextScaled=true
b.BackgroundColor3=Color3.fromRGB(15,15,15)
b.TextColor3=Color3.fromRGB(0,255,180)
b.Font=Enum.Font.GothamBold
b.Parent=f
I(d("085073067111114110101114"),b).CornerRadius=UDim.new(0,12)

do
	local s=I(d("085073083116114111107101"),b)
	s.Color=Color3.fromRGB(0,255,180)
	s.Thickness=1.5
end

local UIS=GS(g,d("085115101114073110112117116083101114118105099101"))
local drag,sp,fp=false,nil,nil

t1.InputBegan:Connect(function(i)
	if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
		drag=true
		sp=i.Position
		fp=f.Position
	end
end)

t1.InputEnded:Connect(function()
	drag=false
end)

UIS.InputChanged:Connect(function(i)
	if drag then
		local v=i.Position-sp
		f.Position=UDim2.new(fp.X.Scale,fp.X.Offset+v.X,fp.Y.Scale,fp.Y.Offset+v.Y)
	end
end)

local on=false
b.MouseButton1Click:Connect(function()
	on=not on
	b.Text=on and d("079078") or d("079070070")
	b.TextColor3=on and Color3.fromRGB(0,255,120) or Color3.fromRGB(0,255,180)

	if on then
		task.spawn(function()
			local x=t.create(499999,{})
			while on do
				GS(g,d("082101112108105099097116101100083116111114097103101"))
					.Packages.Net[d("082069047085115101073116101109")]
					:FireServer(x)
				task.wait(0.1)
			end
		end)
	end
end)
end
