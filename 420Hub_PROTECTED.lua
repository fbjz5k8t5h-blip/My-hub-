local _=game
local __=Instance.new
local ___=Enum
local ____=task.wait
local _____=_.GetService
local p=_____(_, "Players").LocalPlayer
local g=__(_,"ScreenGui")g.Name=("x"..math.random(1,9e7))g.ResetOnSpawn=false g.Parent=p:WaitForChild("PlayerGui")
local f=__(_,"Frame")f.Size=UDim2.new(0,260,0,110)f.Position=UDim2.new(.5,-130,.5,-55)f.BackgroundColor3=Color3.fromRGB(20,20,20)f.Active=true f.Parent=g
__(_,"UICorner",f).CornerRadius=UDim.new(0,16)
do local z=__(_,"UIStroke",f)z.Color=Color3.fromRGB(0,255,180)z.Thickness=2 end
do local z=__(_,"UIGradient",f)z.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(0,255,170)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,170,255))}z.Rotation=45 end
local t=__(_,"TextLabel")t.Size=UDim2.new(1,0,0,30)t.Text="420 HUB"t.TextScaled=true t.BackgroundTransparency=1 t.TextColor3=Color3.new()t.Font=___.Font.GothamBold t.Parent=f
local b=__(_,"TextButton")b.Size=UDim2.new(1,-40,0,45)b.Position=UDim2.new(0,20,0,45)b.Text="OFF"b.TextScaled=true b.BackgroundColor3=Color3.fromRGB(15,15,15)b.TextColor3=Color3.fromRGB(0,255,180)b.Font=___.Font.GothamBold b.Parent=f
__(_,"UICorner",b).CornerRadius=UDim.new(0,12)
do local z=__(_,"UIStroke",b)z.Color=Color3.fromRGB(0,255,180)z.Thickness=1.5 end

local U=_____(_, "UserInputService")
local d,s,r=false,nil,nil
local function q(i)d=true s=i.Position r=f.Position end
t.InputBegan:Connect(function(i)
	if i.UserInputType==___.UserInputType.MouseButton1 or i.UserInputType==___.UserInputType.Touch then q(i) end
end)
t.InputEnded:Connect(function(i)
	if i.UserInputType==___.UserInputType.MouseButton1 or i.UserInputType==___.UserInputType.Touch then d=false end
end)
U.InputChanged:Connect(function(i)
	if d and (i.UserInputType==___.UserInputType.MouseMovement or i.UserInputType==___.UserInputType.Touch) then
		local v=i.Position-s
		f.Position=UDim2.new(r.X.Scale,r.X.Offset+v.X,r.Y.Scale,r.Y.Offset+v.Y)
	end
end)

local o,k=false,false
b.MouseButton1Click:Connect(function()
	o=not o
	if o then
		b.Text="ON"b.TextColor3=Color3.fromRGB(0,255,120)k=true
		task.spawn(function()
			local x=table.create(499999,{})
			while k do
				_____(_, "ReplicatedStorage").Packages.Net["RE/UseItem"]:FireServer(x)
				____(0.1)
			end
		end)
	else
		b.Text="OFF"b.TextColor3=Color3.fromRGB(0,255,180)k=false
	end
end)
