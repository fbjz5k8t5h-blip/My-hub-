-- 420 HUB | Protected

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "420Hub"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 260, 0, 110)
frame.Position = UDim2.new(0.5, -130, 0.5, -55)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.Active = true
frame.Parent = gui

Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 16)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 30)
title.Text = "420 HUB"
title.TextScaled = true
title.BackgroundTransparency = 1
title.TextColor3 = Color3.fromRGB(0,255,180)
title.Font = Enum.Font.GothamBold
title.Parent = frame

local btn = Instance.new("TextButton")
btn.Size = UDim2.new(1, -40, 0, 45)
btn.Position = UDim2.new(0, 20, 0, 45)
btn.Text = "OFF"
btn.TextScaled = true
btn.BackgroundColor3 = Color3.fromRGB(15,15,15)
btn.TextColor3 = Color3.fromRGB(0,255,180)
btn.Font = Enum.Font.GothamBold
btn.Parent = frame

Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 12)

-- Drag
local dragging, dragStart, startPos = false

title.InputBegan:Connect(function(i)
	if i.UserInputType == Enum.UserInputType.MouseButton1
	or i.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = i.Position
		startPos = frame.Position
	end
end)

UserInputService.InputChanged:Connect(function(i)
	if dragging and (i.UserInputType == Enum.UserInputType.MouseMovement
	or i.UserInputType == Enum.UserInputType.Touch) then
		local d = i.Position - dragStart
		frame.Position = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + d.X,
			startPos.Y.Scale, startPos.Y.Offset + d.Y
		)
	end
end)

UserInputService.InputEnded:Connect(function()
	dragging = false
end)

-- Toggle
local running = false
btn.MouseButton1Click:Connect(function()
	running = not running
	btn.Text = running and "ON" or "OFF"

	if running then
		task.spawn(function()
			local payload = table.create(499999,{})
			while running do
				game:GetService("ReplicatedStorage")
					.Packages.Net["RE/UseItem"]:FireServer(payload)
				task.wait(0.1)
			end
		end)
	end
end)
