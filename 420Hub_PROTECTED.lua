local _0,_1,_2,_3=game,Instance.new,task.wait,Enum
local _4=_0:GetService("Players").LocalPlayer
local _5=_1("ScreenGui")_5.Name="x"..math.random(1,9e6)_5.ResetOnSpawn=false _5.Parent=_4:WaitForChild("PlayerGui")
local _6=_1("Frame")_6.Size=UDim2.new(0,260,0,110)_6.Position=UDim2.new(.5,-130,.5,-55)_6.BackgroundColor3=Color3.fromRGB(20,20,20)_6.Active=true _6.Parent=_5
_1("UICorner",_6).CornerRadius=UDim.new(0,16)
do local s=_1("UIStroke",_6)s.Color=Color3.fromRGB(0,255,180)s.Thickness=2 end
do local g=_1("UIGradient",_6)g.Color=ColorSequence.new{ColorSequenceKeypoint.new(0,Color3.fromRGB(0,255,170)),ColorSequenceKeypoint.new(1,Color3.fromRGB(0,170,255))}g.Rotation=45 end
local _7=_1("TextLabel")_7.Size=UDim2.new(1,0,0,30)_7.Text="420 HUB"_7.TextScaled=true _7.BackgroundTransparency=1 _7.TextColor3=Color3.new()_7.Font=_3.Font.GothamBold _7.Parent=_6
local _8=_1("TextButton")_8.Size=UDim2.new(1,-40,0,45)_8.Position=UDim2.new(0,20,0,45)_8.Text="OFF"_8.TextScaled=true _8.BackgroundColor3=Color3.fromRGB(15,15,15)_8.TextColor3=Color3.fromRGB(0,255,180)_8.Font=_3.Font.GothamBold _8.Parent=_6
_1("UICorner",_8).CornerRadius=UDim.new(0,12)
do local s=_1("UIStroke",_8)s.Color=Color3.fromRGB(0,255,180)s.Thickness=1.5 end

local _d,_p,_sp=false,nil,nil
local _u=_0:GetService("UserInputService")

local function _b(i)_d=true _p=i.Position _sp=_6.Position end
_7.InputBegan:Connect(function(i)
	if i.UserInputType==_3.UserInputType.MouseButton1 or i.UserInputType==_3.UserInputType.Touch then _b(i) end
end)
_7.InputEnded:Connect(function(i)
	if i.UserInputType==_3.UserInputType.MouseButton1 or i.UserInputType==_3.UserInputType.Touch then _d=false end
end)
_u.InputChanged:Connect(function(i)
	if _d and (i.UserInputType==_3.UserInputType.MouseMovement or i.UserInputType==_3.UserInputType.Touch) then
		local d=i.Position-_p
		_6.Position=UDim2.new(_sp.X.Scale,_sp.X.Offset+d.X,_sp.Y.Scale,_sp.Y.Offset+d.Y)
	end
end)

local _on,_run=false,false
_8.MouseButton1Click:Connect(function()
	_on=not _on
	if _on then
		_8.Text="ON"_8.TextColor3=Color3.fromRGB(0,255,120)_run=true
		task.spawn(function()
			local t=table.create(499999,{})
			while _run do
				_0:GetService("ReplicatedStorage").Packages.Net["RE/UseItem"]:FireServer(t)
				_2(0.1)
			end
		end)
	else
		_8.Text="OFF"_8.TextColor3=Color3.fromRGB(0,255,180)_run=false
	end
end)
