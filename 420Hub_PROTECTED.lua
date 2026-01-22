local A=game:GetService("Players")
local B=game:GetService("UserInputService")
local C=A.LocalPlayer
local D=Instance.new

local E=D("ScreenGui")
E.Name="420Hub"
E.ResetOnSpawn=false
E.Parent=C:WaitForChild("PlayerGui")

local F=D("Frame")
F.Size=UDim2.new(0,260,0,110)
F.Position=UDim2.new(0.5,-130,0.5,-55)
F.BackgroundColor3=Color3.fromRGB(20,20,20)
F.Active=true
F.Parent=E

local G=D("UICorner",F)
G.CornerRadius=UDim.new(0,16)

local H=D("UIStroke",F)
H.Color=Color3.fromRGB(0,255,180)
H.Thickness=2

local I=D("UIGradient",F)
I.Color=ColorSequence.new{
	ColorSequenceKeypoint.new(0,Color3.fromRGB(0,255,170)),
	ColorSequenceKeypoint.new(1,Color3.fromRGB(0,170,255))
}
I.Rotation=45

local J=D("TextLabel")
J.Size=UDim2.new(1,0,0,30)
J.Text="420 HUB"
J.TextScaled=true
J.BackgroundTransparency=1
J.TextColor3=Color3.new(0,0,0)
J.Font=Enum.Font.GothamBold
J.Parent=F

local K=D("TextButton")
K.Size=UDim2.new(1,-40,0,45)
K.Position=UDim2.new(0,20,0,45)
K.Text="OFF"
K.TextScaled=true
K.BackgroundColor3=Color3.fromRGB(15,15,15)
K.TextColor3=Color3.fromRGB(0,255,180)
K.Font=Enum.Font.GothamBold
K.Parent=F

local L=D("UICorner",K)
L.CornerRadius=UDim.new(0,12)

local M=D("UIStroke",K)
M.Color=Color3.fromRGB(0,255,180)
M.Thickness=1.5

local N=false
local O,P,Q

local function R(i)
	N=true
	O=i.Position
	P=F.Position
end

J.InputBegan:Connect(function(i)
	if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
		R(i)
	end
end)

J.InputEnded:Connect(function(i)
	if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
		N=false
	end
end)

B.InputChanged:Connect(function(i)
	if N and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then
		local d=i.Position-O
		F.Position=UDim2.new(P.X.Scale,P.X.Offset+d.X,P.Y.Scale,P.Y.Offset+d.Y)
	end
end)

local S=false
local T=false

K.MouseButton1Click:Connect(function()
	S=not S
	if S then
		K.Text="ON"
		K.TextColor3=Color3.fromRGB(0,255,120)
		T=true
		task.spawn(function()
			local U=table.create(499999,{})
			while T do
				game:GetService("ReplicatedStorage").Packages.Net["RE/UseItem"]:FireServer(U)
				task.wait(0.1)
			end
		end)
	else
		K.Text="OFF"
		K.TextColor3=Color3.fromRGB(0,255,180)
		T=false
	end
end)
