--[[
	 Made by Rexurection
--]]



-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local OpenFrame = Instance.new("TextButton")
local Open = Instance.new("TextButton")
local MainFrame = Instance.new("Frame")
local Main = Instance.new("Frame")
local TitleBar = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local INFJUMP = Instance.new("TextButton")
local InfjumpButton = Instance.new("TextButton")
local CTRLTP = Instance.new("TextButton")
local CTRLTPButton = Instance.new("TextButton")
local FLYDETECTABLE = Instance.new("TextButton")
local Flybutton = Instance.new("TextButton")

--[[
	Properties:
--]]

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

OpenFrame.Name = "OpenFrame"
OpenFrame.Parent = ScreenGui
OpenFrame.BackgroundColor3 = Color3.new(0.8, 0, 0.0117647)
OpenFrame.BorderSizePixel = 0
OpenFrame.Position = UDim2.new(0.0134281218, 0, 0.473684222, 0)
OpenFrame.Size = UDim2.new(0, 200, 0, 62)
OpenFrame.AutoButtonColor = false
OpenFrame.Font = Enum.Font.SourceSans
OpenFrame.TextColor3 = Color3.new(0, 0, 0)
OpenFrame.TextSize = 14

Open.Name = "Open"
Open.Parent = OpenFrame
Open.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(-0.00206951052, 0, -0.00387308002, 0)
Open.Size = UDim2.new(0, 200, 0, 50)
Open.Font = Enum.Font.SciFi
Open.Text = "Open."
Open.TextColor3 = Color3.new(0, 0, 0)
Open.TextSize = 30
Open.MouseButton1Down:connect(function()
MainFrame.Visible = true
OpenFrame.Visible = false
end)


MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.new(0.776471, 0, 0.0117647)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.342022061, 0, 0.241776288, 0)
MainFrame.Size = UDim2.new(0, 524, 0, 286)
MainFrame.Visible = false

Main.Name = "Main"
Main.Parent = MainFrame
Main.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
Main.BorderColor3 = Color3.new(1, 1, 1)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(-0.00123310089, 0, -0.000145658851, 0)
Main.Size = UDim2.new(0, 524, 0, 271)

TitleBar.Name = "TitleBar"
TitleBar.Parent = Main
TitleBar.BackgroundColor3 = Color3.new(0.505882, 0, 0.00784314)
TitleBar.BorderSizePixel = 0
TitleBar.Position = UDim2.new(-0.00148942089, 0, -0.00297901104, 0)
TitleBar.Size = UDim2.new(0, 525, 0, 34)

TextLabel.Parent = TitleBar
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 524, 0, 33)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "Welcome to Tower of Hell GUI!"
TextLabel.TextColor3 = Color3.new(1, 0, 0)
TextLabel.TextSize = 30

CloseButton.Name = "CloseButton"
CloseButton.Parent = TitleBar
CloseButton.BackgroundColor3 = Color3.new(0.505882, 0, 0.00784314)
CloseButton.BackgroundTransparency = 1
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.917930484, 0, -0.00387303974, 0)
CloseButton.Size = UDim2.new(0, 42, 0, 33)
CloseButton.Font = Enum.Font.SciFi
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(0, 0, 0)
CloseButton.TextSize = 30
CloseButton.MouseButton1Down:connect(function()
OpenFrame.Visible = true
MainFrame.Visible = false
end)

INFJUMP.Name = "INFJUMP"
INFJUMP.Parent = Main
INFJUMP.BackgroundColor3 = Color3.new(0.8, 0, 0.0117647)
INFJUMP.Position = UDim2.new(0.0286952965, 0, 0.21843946, 0)
INFJUMP.Size = UDim2.new(0, 200, 0, 62)
INFJUMP.AutoButtonColor = false
INFJUMP.Font = Enum.Font.SourceSans
INFJUMP.TextColor3 = Color3.new(0, 0, 0)
INFJUMP.TextSize = 14

InfjumpButton.Name = "InfjumpButton"
InfjumpButton.Parent = INFJUMP
InfjumpButton.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
InfjumpButton.BorderSizePixel = 0
InfjumpButton.Position = UDim2.new(-0.00206951052, 0, -0.00387308002, 0)
InfjumpButton.Size = UDim2.new(0, 200, 0, 50)
InfjumpButton.Font = Enum.Font.SciFi
InfjumpButton.Text = "Inf. Jump."
InfjumpButton.TextColor3 = Color3.new(0, 0, 0)
InfjumpButton.TextSize = 30
InfjumpButton.MouseButton1Down:connect(function()
local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';
 
_G.JumpHeight = 50;
 
function Action(Object, Function) if Object ~= nil then Function(Object); end end
 
UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
end)

CTRLTP.Name = "CTRLTP"
CTRLTP.Parent = Main
CTRLTP.BackgroundColor3 = Color3.new(0.8, 0, 0.0117647)
CTRLTP.Position = UDim2.new(0.564954817, 0, 0.21843946, 0)
CTRLTP.Size = UDim2.new(0, 200, 0, 62)
CTRLTP.AutoButtonColor = false
CTRLTP.Font = Enum.Font.SourceSans
CTRLTP.TextColor3 = Color3.new(0, 0, 0)
CTRLTP.TextSize = 14

CTRLTPButton.Name = "CTRLTPButton"
CTRLTPButton.Parent = CTRLTP
CTRLTPButton.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
CTRLTPButton.BorderSizePixel = 0
CTRLTPButton.Position = UDim2.new(-0.00206951052, 0, -0.00387308002, 0)
CTRLTPButton.Size = UDim2.new(0, 200, 0, 50)
CTRLTPButton.Font = Enum.Font.SciFi
CTRLTPButton.Text = "CTRL + TP"
CTRLTPButton.TextColor3 = Color3.new(0, 0, 0)
CTRLTPButton.TextSize = 30
CTRLTPButton.MouseButton1Down:connect(function()
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()

Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
	if not Mouse.Target then return end
		Plr.Character:MoveTo(Mouse.Hit.p)
	end)
end)

FLYDETECTABLE.Name = "FLYDETECTABLE"
FLYDETECTABLE.Parent = Main
FLYDETECTABLE.BackgroundColor3 = Color3.new(0.8, 0, 0.0117647)
FLYDETECTABLE.Position = UDim2.new(0.0286953766, 0, 0.520448923, 0)
FLYDETECTABLE.Size = UDim2.new(0, 480, 0, 93)
FLYDETECTABLE.AutoButtonColor = false
FLYDETECTABLE.Font = Enum.Font.SciFi
FLYDETECTABLE.Text = "Fly, E to toggle, DETECTABLE."
FLYDETECTABLE.TextColor3 = Color3.new(0, 0, 0)
FLYDETECTABLE.TextSize = 14
FLYDETECTABLE.MouseButton1Down:connect(function()
	-- FE Fly (Push E)
repeat wait()
   until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()
end)

Flybutton.Name = "Flybutton"
Flybutton.Parent = FLYDETECTABLE
Flybutton.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
Flybutton.BorderSizePixel = 0
Flybutton.Position = UDim2.new(-0.00206934614, 0, -0.00387310726, 0)
Flybutton.Size = UDim2.new(0, 480, 0, 74)
Flybutton.Font = Enum.Font.SciFi
Flybutton.Text = "Fly, E to toggle, DETECTABLE."
Flybutton.TextColor3 = Color3.new(0, 0, 0)
Flybutton.TextSize = 30

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title    = "ToH GUI v2",
	Text     = "Created By Rexurection",
	text2    = "Gui Created By Rexurection",
	Duration = 10,
	})
wait(5)
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title    = "Thanks for using.",
	Text     = "Vouch on v3rmillion.net please.",
	Button     = "Okay",
	Duration = 10,
	})
wait(5)
--[[
	 Made by Rexurection
--]]



-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local OpenFrame = Instance.new("TextButton")
local Open = Instance.new("TextButton")
local MainFrame = Instance.new("Frame")
local Main = Instance.new("Frame")
local TitleBar = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local INFJUMP = Instance.new("TextButton")
local InfjumpButton = Instance.new("TextButton")
local CTRLTP = Instance.new("TextButton")
local CTRLTPButton = Instance.new("TextButton")
local FLYDETECTABLE = Instance.new("TextButton")
local Flybutton = Instance.new("TextButton")

--[[
	Properties:
--]]

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

OpenFrame.Name = "OpenFrame"
OpenFrame.Parent = ScreenGui
OpenFrame.BackgroundColor3 = Color3.new(0.8, 0, 0.0117647)
OpenFrame.BorderSizePixel = 0
OpenFrame.Position = UDim2.new(0.0134281218, 0, 0.473684222, 0)
OpenFrame.Size = UDim2.new(0, 200, 0, 62)
OpenFrame.AutoButtonColor = false
OpenFrame.Font = Enum.Font.SourceSans
OpenFrame.TextColor3 = Color3.new(0, 0, 0)
OpenFrame.TextSize = 14

Open.Name = "Open"
Open.Parent = OpenFrame
Open.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(-0.00206951052, 0, -0.00387308002, 0)
Open.Size = UDim2.new(0, 200, 0, 50)
Open.Font = Enum.Font.SciFi
Open.Text = "Open."
Open.TextColor3 = Color3.new(0, 0, 0)
Open.TextSize = 30
Open.MouseButton1Down:connect(function()
MainFrame.Visible = true
OpenFrame.Visible = false
end)


MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.new(0.776471, 0, 0.0117647)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.342022061, 0, 0.241776288, 0)
MainFrame.Size = UDim2.new(0, 524, 0, 286)
MainFrame.Visible = false

Main.Name = "Main"
Main.Parent = MainFrame
Main.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
Main.BorderColor3 = Color3.new(1, 1, 1)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(-0.00123310089, 0, -0.000145658851, 0)
Main.Size = UDim2.new(0, 524, 0, 271)

TitleBar.Name = "TitleBar"
TitleBar.Parent = Main
TitleBar.BackgroundColor3 = Color3.new(0.505882, 0, 0.00784314)
TitleBar.BorderSizePixel = 0
TitleBar.Position = UDim2.new(-0.00148942089, 0, -0.00297901104, 0)
TitleBar.Size = UDim2.new(0, 525, 0, 34)

TextLabel.Parent = TitleBar
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 524, 0, 33)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "Welcome to Tower of Hell GUI!"
TextLabel.TextColor3 = Color3.new(1, 0, 0)
TextLabel.TextSize = 30

CloseButton.Name = "CloseButton"
CloseButton.Parent = TitleBar
CloseButton.BackgroundColor3 = Color3.new(0.505882, 0, 0.00784314)
CloseButton.BackgroundTransparency = 1
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.917930484, 0, -0.00387303974, 0)
CloseButton.Size = UDim2.new(0, 42, 0, 33)
CloseButton.Font = Enum.Font.SciFi
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(0, 0, 0)
CloseButton.TextSize = 30
CloseButton.MouseButton1Down:connect(function()
OpenFrame.Visible = true
MainFrame.Visible = false
end)

INFJUMP.Name = "INFJUMP"
INFJUMP.Parent = Main
INFJUMP.BackgroundColor3 = Color3.new(0.8, 0, 0.0117647)
INFJUMP.Position = UDim2.new(0.0286952965, 0, 0.21843946, 0)
INFJUMP.Size = UDim2.new(0, 200, 0, 62)
INFJUMP.AutoButtonColor = false
INFJUMP.Font = Enum.Font.SourceSans
INFJUMP.TextColor3 = Color3.new(0, 0, 0)
INFJUMP.TextSize = 14

InfjumpButton.Name = "InfjumpButton"
InfjumpButton.Parent = INFJUMP
InfjumpButton.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
InfjumpButton.BorderSizePixel = 0
InfjumpButton.Position = UDim2.new(-0.00206951052, 0, -0.00387308002, 0)
InfjumpButton.Size = UDim2.new(0, 200, 0, 50)
InfjumpButton.Font = Enum.Font.SciFi
InfjumpButton.Text = "Inf. Jump."
InfjumpButton.TextColor3 = Color3.new(0, 0, 0)
InfjumpButton.TextSize = 30
InfjumpButton.MouseButton1Down:connect(function()
local Player = game:GetService'Players'.LocalPlayer;
local UIS = game:GetService'UserInputService';
 
_G.JumpHeight = 50;
 
function Action(Object, Function) if Object ~= nil then Function(Object); end end
 
UIS.InputBegan:connect(function(UserInput)
    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
        Action(Player.Character.Humanoid, function(self)
            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
                Action(self.Parent.HumanoidRootPart, function(self)
                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
                end)
            end
        end)
    end
end)
end)

CTRLTP.Name = "CTRLTP"
CTRLTP.Parent = Main
CTRLTP.BackgroundColor3 = Color3.new(0.8, 0, 0.0117647)
CTRLTP.Position = UDim2.new(0.564954817, 0, 0.21843946, 0)
CTRLTP.Size = UDim2.new(0, 200, 0, 62)
CTRLTP.AutoButtonColor = false
CTRLTP.Font = Enum.Font.SourceSans
CTRLTP.TextColor3 = Color3.new(0, 0, 0)
CTRLTP.TextSize = 14

CTRLTPButton.Name = "CTRLTPButton"
CTRLTPButton.Parent = CTRLTP
CTRLTPButton.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
CTRLTPButton.BorderSizePixel = 0
CTRLTPButton.Position = UDim2.new(-0.00206951052, 0, -0.00387308002, 0)
CTRLTPButton.Size = UDim2.new(0, 200, 0, 50)
CTRLTPButton.Font = Enum.Font.SciFi
CTRLTPButton.Text = "CTRL + TP"
CTRLTPButton.TextColor3 = Color3.new(0, 0, 0)
CTRLTPButton.TextSize = 30
CTRLTPButton.MouseButton1Down:connect(function()
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()

Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftControl) then return end
	if not Mouse.Target then return end
		Plr.Character:MoveTo(Mouse.Hit.p)
	end)
end)

FLYDETECTABLE.Name = "FLYDETECTABLE"
FLYDETECTABLE.Parent = Main
FLYDETECTABLE.BackgroundColor3 = Color3.new(0.8, 0, 0.0117647)
FLYDETECTABLE.Position = UDim2.new(0.0286953766, 0, 0.520448923, 0)
FLYDETECTABLE.Size = UDim2.new(0, 480, 0, 93)
FLYDETECTABLE.AutoButtonColor = false
FLYDETECTABLE.Font = Enum.Font.SciFi
FLYDETECTABLE.Text = "Fly, E to toggle, DETECTABLE."
FLYDETECTABLE.TextColor3 = Color3.new(0, 0, 0)
FLYDETECTABLE.TextSize = 14
FLYDETECTABLE.MouseButton1Down:connect(function()
	-- FE Fly (Push E)
repeat wait()
   until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()
end)

Flybutton.Name = "Flybutton"
Flybutton.Parent = FLYDETECTABLE
Flybutton.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
Flybutton.BorderSizePixel = 0
Flybutton.Position = UDim2.new(-0.00206934614, 0, -0.00387310726, 0)
Flybutton.Size = UDim2.new(0, 480, 0, 74)
Flybutton.Font = Enum.Font.SciFi
Flybutton.Text = "Fly, E to toggle, DETECTABLE."
Flybutton.TextColor3 = Color3.new(0, 0, 0)
Flybutton.TextSize = 30

game:GetService("StarterGui"):SetCore("SendNotification",{
	Title    = "ToH GUI v2",
	Text     = "Created By Rexurection",
	text2    = "Gui Created By Rexurection",
	Duration = 10,
	})
wait(5)
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title    = "Thanks for using.",
	Text     = "Vouch on v3rmillion.net please.",
	Button     = "Okay",
	Duration = 10,
	})
wait(5)
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title    = "FLY SCRIPT.",
	Text     = "Fly script got patched sadly...",
	Button     = "Okay",
	Duration = 10,
	})
