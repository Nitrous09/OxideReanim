local getsyn = getcustomasset
local s = nil
local function getcustomasset2(id,name)
if name == nil then name = tostring(id) end
if not game.Players.LocalPlayer:FindFirstChild(name) then
s = Instance.new("Sound",game.Players.LocalPlayer)
s.SoundId = getsyn(id)
s.Name = name
else
s = game.Players.LocalPlayer:FindFirstChild(name)
end
return s.SoundId 
end

game.Players.LocalPlayer.Character.Animate:Destroy()
wait(0.25)
--here it goes
local stopeverything = false
KEYHOLD = false
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled("Jumping",false)
s = script
local LOOPx = 0
SCRIPT,scrpt,Scrpt,SCRPT,Script = s,s,s,s,s
IT = Instance.new
CF = CFrame.new
VT = Vector3.new
RAD = math.rad
C3 = Color3.new
UD2 = UDim2.new
BRICKC = BrickColor.new
ANGLES = CFrame.Angles
EULER = CFrame.fromEulerAnglesXYZ
COS = math.cos
ACOS = math.acos
SIN = math.sin
ASIN = math.asin
SQRT = math.sqrt
ABS = math.abs
MRANDOM = math.random
FLOOR = math.floor
HUGE = math.huge
radian = math.rad
random = math.random
Vec3 = Vector3.new
Inst = Instance.new
cFrame = CFrame.new
Euler = CFrame.fromEulerAnglesXYZ
vt = Vector3.new
bc = BrickColor.new
br = BrickColor.random
it = Instance.new
angles = CFrame.Angles
Cf = CFrame.new
cf = CFrame.new
Cos = math.cos
Sin = math.sin
Abs = math.abs
Rad = math.rad
Animation_Speed = 3
local lplr = game:GetService("Players").LocalPlayer
local Player = lplr
local PLAYER = Player
local sine = 0
local SINE = sine
local T = 0
local K = 0
--these two under were stole from fur2 :troll:,and thanks you honeydevx.
local uwu=0 --uwuman
local owo=0 --Regele,mlcv3,FurLC
local NeckSnap = false
local USERNAME = lplr.Name
local rickrolling = false
local Player = game:GetService("Players").LocalPlayer
local USERID = lplr.UserId
local taunt = {Value = "None"}
local songid = {Value = "rbxassetid://3247404955"}
local attack = false
local walkspeed = 50
WALKSPEEDVALUE=walkspeed
local TauntRemote = {}
local SongSync = {Value = 0}
local ISFLYING = false
local antivoid = nil
local Character = game:GetService("Players").LocalPlayer.Character
local Mouse,mouse,MOUSE,m,M = lplr:GetMouse(),lplr:GetMouse(),lplr:GetMouse(),lplr:GetMouse(),lplr:GetMouse()
local S = 1
local eeeblock = Instance.new("Part")
local Humanoid = Character.Humanoid
Humanoid.Animator:Destroy()
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local LeftLeg = Character["Left Leg"]
local RightLeg = Character["Right Leg"]
local Head = Character.Head
local Torso = Character.Torso
local RootPart = Character.HumanoidRootPart
local RootJoint = RootPart.RootJoint
local Neck = Torso["Neck"]
local RightShoulder = Torso["Right Shoulder"]
local LeftShoulder = Torso["Left Shoulder"]
local RightHip = Torso["Right Hip"]
local LeftHip = Torso["Left Hip"]
local Effects = nil
local Eyes = nil
local GUN = game:GetObjects("rbxassetid://9708309400")[1]
GUN.Parent = Character
local shade = GUN.Base.Color
local alreadyfixing = false
local Effects = Instance.new("Folder")
Effects.Parent = workspace
local eeeblock = Instance.new("Part")
eeeblock.Name = "eeeblock"
eeeblock.CanCollide = false
eeeblock.Transparency = 1
eeeblock.CFrame = Torso.CFrame
eeeblock.Parent = workspace
local eee = Instance.new("Sound",eeeblock)
eee.Volume = 1
eee.Pitch = 1
eee.SoundId = songid.Value
eee:Play()
eee.Name = "eee"
eee.Looped = true
eee.TimePosition = SongSync.Value
eee.DescendantAdded:Connect(function(v)
	if stopeverything then wait(math.huge) end
	if v:IsA("SoundEffect") then
		v.Enabled = false
		v:GetPropertyChangedSignal("Enabled"):Connect(function()
			if stopeverything then wait(math.huge) end
			if v.Enabled ~= false then
				v.Enabled = false
			end
		end)
	end
	game:GetService("Debris"):AddItem(v,.01)
end)
function TauntRemote:FireServer(Name, ID)
	taunt.Value = Name
	if songid.Value ~= "rbxassetid://"..ID then
		songid.Value = "rbxassetid://"..ID
		SongSync.Value = 0
		eee.Volume = 1
		eee.Pitch = 1
		eee.SoundId = songid.Value
		eee.TimePosition = SongSync.Value
	end
end
local ROOTC0 = CFrame.new(0,0,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local NECKC0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local RIGHTSHOULDERC0 = CFrame.new(-0.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
local LEFTSHOULDERC0 = CFrame.new(0.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))
local rco,nco,rsco,lsco=ROOTC0,NECKC0,RIGHTSHOULDERC0,LEFTSHOULDERC0
local ang,rad,cos,v3,sin = CFrame.Angles,math.rad,math.cos,Vector3.new,math.sin
local jojodefaults = {
	roto = ROOTC0,
	neco = NECKC0,
	rico = RIGHTSHOULDERC0,
	leco = LEFTSHOULDERC0
}
local jojowelds = {
	welds = {
		rot = RootJoint,
		net = Neck,
		rt = RightShoulder,
		lt = LeftShoulder,
		lh = LeftHip,
		rh = RightHip
	}
}
local moves = {
	necksnap = false,
	cf = CFrame.new,
	ang = CFrame.Angles,
	radt = math.rad,
	c3r = Color3.new,
	cosp = math.cos,
	rand = math.random,
	abs = math.abs,
	flor = math.floor,
	v3 = Vector3.new,
	sin = math.sin,
	ra = math.rad
}
local S = setmetatable({},{__index = function(s,i) return game:service(i) end})
local Plrs = S.Players
NewInstance = function(instance,parent,properties)
	local inst = Instance.new(instance)
	inst.Parent = parent
	if(properties)then
		for i,v in next, properties do
			pcall(function() inst[i] = v end)
		end
	end
	return inst;
end
function chatfunc(textt,glitchy)
	local text = string.gsub(textt,"​","")
	local chat = coroutine.wrap(function()
		local oldthing = eeeblock:FindFirstChild("TalkingBillBoard")
		if oldthing then
			oldthing:Destroy()
		end
		local sayingstuff = Instance.new("BillboardGui",eeeblock)
		sayingstuff.Size = UDim2.new(0,9999,2,0)
		sayingstuff.StudsOffset = Vector3.new(0,5,0)
		sayingstuff.Adornee = eeeblock
		sayingstuff.Name = "TalkingBillBoard"
		local sayingstuff2 = Instance.new("TextLabel",sayingstuff)
		sayingstuff2.BackgroundTransparency = 1
		sayingstuff2.BorderSizePixel = 0
		sayingstuff2.Text = ""
		sayingstuff2.Font = "Bangers"
		sayingstuff2.TextScaled = true
		sayingstuff2.TextStrokeTransparency = 0
		coroutine.resume(coroutine.create(function()
			while not stopeverything do
				local hBRUH,sBRUH,vBRUH = Color3:ToHSV(GUN.NeonParts.Color)
				sayingstuff2.TextColor3 = Color3.fromHSV(hBRUH,sBRUH,vBRUH/2)
				swait()
			end
		end))
		sayingstuff2.TextStrokeColor3 = shade
		sayingstuff2.Size = UDim2.new(1,0,1,0)
		local sayingstuff3 = Instance.new("TextLabel",sayingstuff)
		sayingstuff3.BackgroundTransparency = 1
		sayingstuff3.BorderSizePixel = 0
		sayingstuff3.Text = ""
		sayingstuff3.Font = "Bangers"
		sayingstuff3.TextScaled = true
		sayingstuff3.TextStrokeTransparency = 0
		coroutine.resume(coroutine.create(function()
			while not stopeverything do
				sayingstuff3.TextColor3 = GUN.NeonParts.Color
				swait()
			end
		end))
		sayingstuff3.TextStrokeColor3 = shade
		sayingstuff3.Size = UDim2.new(1,0,1,0)
		coroutine.resume(coroutine.create(function()
			while not stopeverything and sayingstuff ~= nil do
				swait()
				if glitchy then
					local fonts = {"Code","Arial","Cartoon","Gotham","Highway","JosefinSans","Legacy","Nunito","Merriweather","Roboto","SciFi","SourceSans","Ubuntu"}
					local randomfont = fonts[math.random(1,#fonts)]
					sayingstuff2.Font = randomfont
					sayingstuff3.Font = randomfont
				end
				sayingstuff2.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
				sayingstuff3.Position = UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
			end
		end))
		for i = 1,string.len(text) do
			swait(2)
			sayingstuff2.Text = string.sub(text,1,i)
			sayingstuff3.Text = string.sub(text,1,i)
		end
		swait(120)
		for i = 1,50 do
			swait()
			sayingstuff2.Position = sayingstuff2.Position - UDim2.new(0,math.random(-3,3),0,math.random(-3,3))
			sayingstuff3.Position = sayingstuff2.Position - UDim2.new(0,math.random(-3,3),0,math.random(-3,3)) 
			sayingstuff2.Rotation = sayingstuff2.Rotation + math.random(-2,2)
			sayingstuff3.Rotation = sayingstuff3.Rotation + math.random(-2,2)
			sayingstuff2.TextStrokeTransparency = i/50
			sayingstuff2.TextTransparency = sayingstuff2.TextStrokeTransparency
			sayingstuff3.TextStrokeTransparency = sayingstuff2.TextStrokeTransparency
			sayingstuff3.TextTransparency = sayingstuff2.TextStrokeTransparency
		end
		sayingstuff:Destroy()
	end)
	chat()
end
function onChatted(msg)
	chatfunc(msg,true)
end
Player.Chatted:connect(onChatted)
local BG = nil
local BV = nil
local soundfixing = false
local fixinggui = false
local gui = nil
local exitbutton = nil
local restartingscript = false
local Anim = "Idle"
local attacktype = 1
local delays = false
local play = true
local Torsovelocity = (RootPart.Velocity * Vector3.new(1,0,1)).Magnitude 
local doe = 0
Humanoid.WalkSpeed = walkspeed
local rc0 = CFrame.new() * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local nc0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180))
local rscp = CFrame.new(-.5,0,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
local lscp = CFrame.new(.5,0,0) * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))
function QFCF(cf)
	local mx,my,mz,m00,m01,m02,m10,m11,m12,m20,m21,m22 = cf:components()
	local trace = m00 + m11 + m22
	if trace > 0 then 
		local s = math.sqrt(1 + trace)
		local recip = 0.5/s
		return (m21 - m12) * recip,(m02 - m20) * recip,(m10 - m01) * recip,s * 0.5
	else
		local i = 0
		if m11 > m00 then
			i = 1
		end
		if m22 > (i == 0 and m00 or m11) then
			i = 2
		end
		if i == 0 then
			local s = math.sqrt(m00 - m11 - m22 + 1)
			local recip = 0.5/s
			return 0.5 * s,(m10 + m01) * recip,(m20 + m02) * recip,(m21 - m12) * recip
		elseif i == 1 then
			local s = math.sqrt(m11 - m22 - m00 + 1)
			local recip = 0.5/s
			return (m01 + m10) * recip,0.5 * s,(m21 + m12) * recip,(m02 - m20) * recip
		elseif i == 2 then
			local s = math.sqrt(m22 - m00 - m11 + 1)
			local recip = 0.5/s return (m02 + m20) * recip,(m12 + m21) * recip,0.5 * s,(m10 - m01) * recip
		end
	end
end

function QTCF(px,py,pz,x,y,z,w)
	local xs,ys,zs = x + x,y + y,z + z
	local wx,wy,wz = w * xs,w * ys,w * zs
	local xx = x * xs
	local xy = x * ys
	local xz = x * zs
	local yy = y * ys
	local yz = y * zs
	local zz = z * zs
	return CFrame.new(px,py,pz,1 - (yy + zz),xy - wz,xz + wy,xy + wz,1 - (xx + zz),yz - wx,xz - wy,yz + wx,1 - (xx + yy))
end
function QS(a,b,t)
	local cosTheta = a[1] * b[1] + a[2] * b[2] + a[3] * b[3] + a[4] * b[4]
	local startInterp,finishInterp;
	if cosTheta >= 0.0001 then
		if (1 - cosTheta) > 0.0001 then
			local theta = math.acos(cosTheta)
			local invSinTheta = 1/math.sin(theta)
			startInterp = math.sin((1 - t) * theta) * invSinTheta
			finishInterp = math.sin(t * theta) * invSinTheta
		else
			startInterp = 1 - t
			finishInterp = t
		end
	else
		if (1 + cosTheta) > 0.0001 then
			local theta = math.acos(-cosTheta)
			local invSinTheta = 1/math.sin(theta)
			startInterp = math.sin((t - 1) * theta) * invSinTheta
			finishInterp = math.sin(t * theta) * invSinTheta
		else
			startInterp = t - 1
			finishInterp = t
		end
	end
	return a[1] * startInterp + b[1] * finishInterp,a[2] * startInterp + b[2] * finishInterp,a[3] * startInterp + b[3] * finishInterp,a[4] * startInterp + b[4] * finishInterp
end

function Clerp(a,b,t)
	local qa = {QFCF(a)}
	local qb = {QFCF(b)}
	local ax,ay,az = a.x,a.y,a.z
	local bx,by,bz = b.x,b.y,b.z
	local _t = 1 - t
	return QTCF(_t * ax + t * bx,_t * ay + t * by,_t * az + t * bz,QS(qa,qb,t))
end
local functions={}
function functions.nub(a,b,t)
	return a:Lerp(b,t)
end
function functions.Clerp(a,b,t)
	return a:Lerp(b,t)
end
Qlerp = function(p, au, av)
	return p:Lerp(au, math.clamp(av, 0, 1))
end
ArtificialHB = Instance.new("BindableEvent",script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:Connect(function(s,p)
	tf = tf + s
	if tf >= frame then
		if allowframeloss then
			script.Heartbeat:Fire()
			lastframe = tick()
		else
			for i = 1,math.floor(tf / frame) do
				script.Heartbeat:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			tf = 0
		else
			tf = tf - frame * math.floor(tf / frame)
		end
	end
end)
function swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:Wait()
	else
		for i = 0,num do
			ArtificialHB.Event:Wait()
		end
	end
end
function Swait(num)
	if num == 0 or num == nil then
		ArtificialHB.Event:Wait()
	else
		for i = 0,num do
			ArtificialHB.Event:Wait()
		end
	end
end
SWAIT = Swait
local S = Instance.new("Sound")
local c = game.Players.LocalPlayer.Character
c["Starslayer Railgun"].Handle:BreakJoints()
local function Align(Part0, Part1)
	Part0.CustomPhysicalProperties = PhysicalProperties.new(0.0001, 0.0001, 0.0001, 0.0001, 0.0001)
	local att1 = Instance.new("Attachment")
	att1.Orientation = Vector3.new(0, 0, 0)
	att1.Position = Vector3.new(0, 0, 0)
	att1.Archivable = true
	local att0 = att1:Clone()
    local ape = Instance.new("AlignPosition", Part0)
    ape.ApplyAtCenterOfMass = false
    ape.MaxForce = math.huge
    ape.MaxVelocity = math.huge
    ape.ReactionForceEnabled = false
    ape.Responsiveness = 200
    ape.Attachment1 = att1
    ape.Attachment0 = att0
    ape.Name = "AlignPosition"
    ape.RigidityEnabled = true
	local ao = Instance.new("AlignOrientation", att0)
	ao.MaxAngularVelocity = math.huge
	ao.MaxTorque = math.huge
	ao.PrimaryAxisOnly = false
	ao.ReactionTorqueEnabled = false
	ao.Responsiveness = 200
	ao.Attachment1 = att1
	ao.Attachment0 = att0
	ao.RigidityEnabled = false
	att1.Parent = Part1
	att1.Name = "Attachment"
	att0.Parent = Part0
	att0.Name =  "Attachment"
end

Align(c["Starslayer Railgun"].Handle, c["Right Arm"])
local att = c["Right Arm"].Attachment
att.Parent = c["Right Arm"]
att.Position = Vector3.new(0, -1.5, -0.7)
att.Orientation = Vector3.new(-0, 90, -45)
local weldra = Instance.new("WeldConstraint",c["Right Arm"])
weldra.Part0 = c["Starslayer Railgun"].Handle

local SIZE = 1
function AttackGyro()
	local GYRO = Instance.new("BodyGyro",RootPart)
	GYRO.D = 25
	GYRO.P = 20000
	GYRO.MaxTorque = Vector3.new(0,4000000,0)
	GYRO.CFrame = CFrame.new(RootPart.Position,Mouse.Hit.p)
	coroutine.resume(coroutine.create(function()
		repeat if stopeverything then wait(math.huge) end
			swait()
			GYRO.CFrame = CFrame.new(RootPart.Position,Mouse.Hit.p)
		until attack == false
		GYRO:Destroy()
	end))
end

local customasset = getcustomasset2

local sound = Instance.new("Sound",Character.Head)
sound.Looped = true
sound.Playing = true
sound.Volume = 1
sound.SoundId = customasset("MEMELC/None.mp3")

coroutine.resume(coroutine.create(function()
	while not stopeverything do
		for i = 0,1,(1/60) do
			swait()
			if not alreadyfixing then
				GUN.NeonParts.Color = Color3.fromHSV(i,1,1)
				if taunt.Value == "iNSaNiTY" then
					GUN.NeonParts.Color = Color3.fromHSV(math.random(0,19)/20,1,1)
				elseif taunt.Value == "Err0r" then
					GUN.NeonParts.Color = Color3.fromRGB(0,math.clamp(sound.PlaybackLoudness-255,0,255),0)
				elseif taunt.Value == "Glitch" then
					GUN.NeonParts.Color = Color3.fromHSV(i,1,math.clamp((sound.PlaybackLoudness/255)-.5,0,1))
				elseif taunt.Value == "Alastor" then
					GUN.NeonParts.Color = Color3.new(sound.PlaybackLoudness/500,0,0)
				elseif taunt.Value == "kArmA" then
					GUN.NeonParts.Color = Color3.new(1,1,1)
				elseif taunt.Value == "petfroge" then
					GUN.NeonParts.Color = BrickColor.Random().Color
				end
			end
		end
	end
end))

local function randomstring()
	local length = MRANDOM(10,20)
	local array = {}
	for i = 1,length do
		array[i] = string.char(MRANDOM(14,126))
	end
	return table.concat(array)
end
function CreatePart(FORMFACTOR,PARENT,MATERIAL,REFLECTANCE,TRANSPARENCY,BRICKCOLOR,NAME,SIZE,ANCHOR)
	local NEWPART = Instance.new("Part")
	NEWPART.Massless = true
	NEWPART.formFactor = FORMFACTOR
	NEWPART.Reflectance = REFLECTANCE
	NEWPART.Transparency = TRANSPARENCY
	NEWPART.CanCollide = false
	NEWPART.Locked = true
	NEWPART.Anchored = true
	if ANCHOR == false then
		NEWPART.Anchored = false
	end
	NEWPART.Color = BRICKCOLOR
	NEWPART.Name = randomstring()
	NEWPART.Size = SIZE
	NEWPART.Position = Torso.Position
	NEWPART.Material = MATERIAL
	NEWPART:BreakJoints()
	NEWPART.Parent = PARENT
	return NEWPART
end
function Effect(Table)
	local TYPE = (Table.EffectType or "Sphere")
	local SIZE = (Table.Size or Vector3.new(1,1,1))
	local ENDSIZE = (Table.Size2 or Vector3.new())
	local TRANSPARENCY = (Table.Transparency or 0)
	local ENDTRANSPARENCY = (Table.Transparency2 or 1)
	local CFRAME = (Table.CFrame or Torso.CFrame)
	local MOVEDIRECTION = (Table.MoveToPos or nil)
	local ROTATION1 = (Table.RotationX or 0)
	local ROTATION2 = (Table.RotationY or 0)
	local ROTATION3 = (Table.RotationZ or 0)
	local MATERIAL = (Table.Material or "Neon")
	local COLOR = (Table.Color or shade)
	local hOK,sOK,vOK = Color3.toHSV(COLOR)
	local RAINBOWPART = false
	if sOK > .1 then
		RAINBOWPART = true
	end
	local TIME = (Table.Time or 45)
	local SOUNDID = (Table.SoundID or nil)
	local SOUNDPITCH = (Table.SoundPitch or nil)
	local SOUNDVOLUME = (Table.SoundVolume or nil)
	local USEBOOMERANGMATH = (Table.UseBoomerangMath or false)
	local BOOMERANG = (Table.Boomerang or 0)
	local SIZEBOOMERANG = (Table.SizeBoomerang or 0)
	coroutine.resume(coroutine.create(function()
		local PLAYSSOUND = false
		local SOUND = nil
		local EFFECT = CreatePart(3,Effects,MATERIAL,0,TRANSPARENCY,shade,"Effect",Vector3.new(1,1,1),true)
		if RAINBOWPART then
			coroutine.resume(coroutine.create(function()
				while not stopeverything do
					EFFECT.Color = GUN.NeonParts.Color
					swait()
				end
			end))
		end
		if SOUNDID ~= nil and SOUNDPITCH ~= nil and SOUNDVOLUME ~= nil then
			PLAYSSOUND = true
			SOUND = CreateSound(SOUNDID,EFFECT,SOUNDVOLUME,SOUNDPITCH,false)
		end
		EFFECT.Color = COLOR
		local MSH = nil
		if TYPE == "Sphere" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"Sphere","","",SIZE,Vector3.new())
		elseif TYPE == "Block" or TYPE == "Box" then
			MSH = Instance.new("BlockMesh",EFFECT)
			MSH.Scale = SIZE
		elseif TYPE == "Wave" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","20329976","",SIZE,Vector3.new(0,0,-SIZE.X/8))
		elseif TYPE == "Ring" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","559831844","",Vector3.new(SIZE.X,SIZE.X,0.1),Vector3.new())
		elseif TYPE == "Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662586858","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Round Slash" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","662585058","",Vector3.new(SIZE.X/10,0,SIZE.X/10),Vector3.new())
		elseif TYPE == "Swirl" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","168892432","",SIZE,Vector3.new())
		elseif TYPE == "Skull" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","4770583","",SIZE,Vector3.new())
		elseif TYPE == "Crystal" then
			MSH = CreateMesh("SpecialMesh",EFFECT,"FileMesh","9756362","",SIZE,Vector3.new())
		end
		if MSH ~= nil then
			local BOOMR1 = 1+BOOMERANG/50
			local BOOMR2 = 1+SIZEBOOMERANG/50
			local MOVESPEED = nil
			if MOVEDIRECTION ~= nil then
				if USEBOOMERANGMATH == true then
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)*BOOMR1
				else
					MOVESPEED = ((CFRAME.p - MOVEDIRECTION).Magnitude/TIME)
				end
			end
			local GROWTH = nil
			if USEBOOMERANGMATH == true then
				GROWTH = (SIZE - ENDSIZE)*(BOOMR2+1)
			else
				GROWTH = (SIZE - ENDSIZE)
			end
			local TRANS = TRANSPARENCY - ENDTRANSPARENCY
			if TYPE == "Block" then
				EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
			else
				EFFECT.CFrame = CFRAME
			end
			if USEBOOMERANGMATH == true then
				for LOOP = 1,TIME+1 do
					swait()
					MSH.Scale = MSH.Scale - (Vector3.new((GROWTH.X)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Y)*((1 - (LOOP/TIME)*BOOMR2)),(GROWTH.Z)*((1 - (LOOP/TIME)*BOOMR2)))*BOOMR2)/TIME
					if TYPE == "Wave" then
						MSH.Offset = Vector3.new(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-(MOVESPEED)*((1 - (LOOP/TIME)*BOOMR1)))
						EFFECT.Orientation = ORI
					end
				end
			else
				for LOOP = 1,TIME+1 do
					swait()
					MSH.Scale = MSH.Scale - GROWTH/TIME
					if TYPE == "Wave" then
						MSH.Offset = Vector3.new(0,0,-MSH.Scale.Z/8)
					end
					EFFECT.Transparency = EFFECT.Transparency - TRANS/TIME
					if TYPE == "Block" then
						EFFECT.CFrame = CFRAME*CFrame.Angles(math.rad(math.random(0,360)),math.rad(math.random(0,360)),math.rad(math.random(0,360)))
					else
						EFFECT.CFrame = EFFECT.CFrame*CFrame.Angles(math.rad(ROTATION1),math.rad(ROTATION2),math.rad(ROTATION3))
					end
					if MOVEDIRECTION ~= nil then
						local ORI = EFFECT.Orientation
						EFFECT.CFrame = CFrame.new(EFFECT.Position,MOVEDIRECTION)*CFrame.new(0,0,-MOVESPEED)
						EFFECT.Orientation = ORI
					end
				end
			end
			EFFECT.Transparency = 1
			if PLAYSSOUND == false then
				EFFECT:Destroy()
			else
				repeat if stopeverything then wait(math.huge) end swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:Destroy()
			end
		else
			if PLAYSSOUND == false then
				EFFECT:Destroy()
			else
				repeat if stopeverything then wait(math.huge) end swait() until EFFECT:FindFirstChildOfClass("Sound") == nil
				EFFECT:Destroy()
			end
		end
	end))
end
function Lightning(Part0,Part1,Timess,Offset,Color,Timer,sSize,eSize,Trans,Boomer,sBoomer,Trans2)
	local magz = (Part0 - Part1).Magnitude
	local Times = math.floor(math.clamp(magz/10,1,20))
	local curpos = Part0
	local trz = {
		-Offset,
		Offset
	}
	for i = 1,Times do
		local li = Instance.new("Part",Effects)
		li.Name = randomstring()
		li.TopSurface = 0
		li.Material = "Neon"
		li.BottomSurface = 0
		li.Anchored = true
		li.Locked = true
		li.Transparency = 0
		li.Color = Color
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(0.1,0.1,magz/Times)
		local Offzet = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
		local trolpos = CFrame.new(curpos,Part1) * CFrame.new(0,0,magz/Times).p + Offzet
		if Times == i then
			local magz2 = (curpos - Part1).Magnitude
			li.Size = Vector3.new(0.1,0.1,magz2)
			li.CFrame = CFrame.new(curpos,Part1) * CFrame.new(0,0,-magz2/2)
		else
			li.CFrame = CFrame.new(curpos,trolpos) * CFrame.new(0,0,magz/Times/2)
		end
		curpos = li.CFrame * CFrame.new(0,0,magz/Times/2).p
		li:Destroy()
		Effect({Time = Timer,EffectType = "Box",Size = Vector3.new(sSize,sSize,li.Size.Z),Size2 = Vector3.new(eSize,eSize,li.Size.Z),Transparency = Trans,Transparency2 = Trans2 or 1,CFrame = li.CFrame,MoveToPos = nil,RotationX = nil,RotationY = nil,RotationZ = nil,Material = "Neon",Color = li.Color,SoundID = nil,SoundPitch = nil,SoundVolume = nil,UseBoomerangMath = Boomer,Boomerang = 0,SizeBoomerang = sBoomer})
	end
end
function CreateSound(ID,PARENT,VOLUME,PITCH,DOESLOOP)
	local NEWSOUND = nil
	coroutine.resume(coroutine.create(function()
		NEWSOUND = S:Clone()
		NEWSOUND.Parent = PARENT
		NEWSOUND.Volume = VOLUME
		NEWSOUND.Pitch = PITCH
		NEWSOUND.SoundId = "rbxassetid://"..ID
		NEWSOUND:play()
		if DOESLOOP == true then
			NEWSOUND.Looped = true
		else
			coroutine.resume(coroutine.create(function()
				pcall(function()
					repeat if stopeverything then wait(math.huge) end Swait() until NEWSOUND.Playing == false
					NEWSOUND:Destroy()
				end)
			end))
		end
	end))
	return NEWSOUND
end
local Holetwo = c["Starslayer Railgun"].Handle
function attackone()
	attack = true
	walkspeed = 16
	if Humanoid.HipHeight <= 1 then
	Humanoid.HipHeight = 2
	else
	Humanoid.HipHeight = Humanoid.HipHeight 
	end
	AttackGyro()
	for i = 0,.5,.05 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,0 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)),.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(15),math.rad(0),math.rad(-30)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(30),math.rad(0),math.rad(0)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
	end
	for i = 0,.5,.075 do
		swait()
		RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,0 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(30)),.7/3)
		Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(10),math.rad(0),math.rad(-60)),1/3)
		RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(160),math.rad(-20),math.rad(60)) * rscp,1/3)
		LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(40),math.rad(5),math.rad(5)) * lscp,1/3)
		RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
		LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
	end
	walkspeed = 50
	attack = false
end

local FLYING = false
iyflyspeed = 1
function sFLY()
	if not ISFLYING then
		FLYING = false
	else
		local CONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
		local lCONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
		local SPEED = 0			
		local function FLY()
			FLYING = true
			BG = Instance.new('BodyGyro',RootPart)
			BV = Instance.new('BodyVelocity',RootPart)
			BG.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			BG.P = 1e4
			BG.CFrame = RootPart.CFrame
			BV.Velocity = Vector3.new(0,0,0)
			BV.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			coroutine.resume(coroutine.create(function()
				repeat if stopeverything then wait(math.huge) end
					game:GetService("RunService").RenderStepped:Wait()
					if not alreadyfixing then
						if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0 then
							SPEED = 50
						elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 or CONTROL.Q + CONTROL.E ~= 0) and SPEED ~= 0 then
							SPEED = 0
						end
						if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 or (CONTROL.Q + CONTROL.E) ~= 0 then
							BV.Velocity = ((workspace.Camera.CFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.Camera.CFrame * CFrame.new(CONTROL.L + CONTROL.R,(CONTROL.F + CONTROL.B + CONTROL.Q + CONTROL.E) * 0.2,0).Position) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
							lCONTROL = {F = CONTROL.F,B = CONTROL.B,L = CONTROL.L,R = CONTROL.R}
						elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and (CONTROL.Q + CONTROL.E) == 0 and SPEED ~= 0 then
							BV.Velocity = ((workspace.Camera.CFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.Camera.CFrame * CFrame.new(lCONTROL.L + lCONTROL.R,(lCONTROL.F + lCONTROL.B + CONTROL.Q + CONTROL.E) * 0.2,0).Position) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
						else
							BV.Velocity = Vector3.new(0,0,0)
						end
						BG.CFrame = workspace.Camera.CFrame
					end
				until not FLYING
				CONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
				lCONTROL = {F = 0,B = 0,L = 0,R = 0,Q = 0,E = 0}
				SPEED = 0
				if not alreadyfixing then
					for i,v in pairs(RootPart:GetChildren()) do
						if v:IsA("BodyMover") then
							v:Destroy()
						end
					end
					RootPart.CFrame = CFrame.new(RootPart.Position)
				end
			end))
		end
		local IYMouse = Player:GetMouse()
		IYMouse.KeyDown:connect(function(KEY)
			if stopeverything then wait(math.huge) end
			if KEY:lower() == 'w' then
				CONTROL.F = iyflyspeed
			elseif KEY:lower() == 's' then
				CONTROL.B = - iyflyspeed
			elseif KEY:lower() == 'a' then
				CONTROL.L = - iyflyspeed
			elseif KEY:lower() == 'd' then 
				CONTROL.R = iyflyspeed
			elseif KEY:lower() == 'e' then
				CONTROL.Q = iyflyspeed*2
			elseif KEY:lower() == 'q' then
				CONTROL.E = -iyflyspeed*2
			end
		end)
		IYMouse.KeyUp:connect(function(KEY)
			if stopeverything then wait(math.huge) end
			if KEY:lower() == 'w' then
				CONTROL.F = 0
			elseif KEY:lower() == 's' then
				CONTROL.B = 0
			elseif KEY:lower() == 'a' then
				CONTROL.L = 0
			elseif KEY:lower() == 'd' then
				CONTROL.R = 0
			elseif KEY:lower() == 'e' then
				CONTROL.Q = 0
			elseif KEY:lower() == 'q' then
				CONTROL.E = 0
			end
		end)
		FLY()
	end
end
Mouse.Button1Down:Connect(function()
	if stopeverything then wait(math.huge) end
	if not attack and (taunt.Value ~= "Fave" and taunt.Value ~= "Smog" and taunt.Value ~= "corrupt" and taunt.Value ~= "MaddoxLCv3" and taunt.Value ~= "uwuman" and taunt.Value ~= "snakeskid" and taunt.Value ~= "Regele" and taunt.Value ~= "Uncolored" and taunt.Value ~= "Memer" and taunt.Value ~= "Sit" and taunt.Value ~= "Krump" and taunt.Value ~= "OOOOO" and taunt.Value ~= "nulled" and taunt.Value ~= "uwu") then
		attackone()
wait(2)
Effects:ClearAllChildren()
	end
end)
Mouse.KeyDown:Connect(function(k)
	if stopeverything then wait(math.huge) end
	k = k:lower()
	if k == "m" then
		if songid.Value ~= "rbxassetid://3247404955" and songid.Value ~= "rbxassetid://69420" and songid.Value ~="rbxassetid://525565668" and songid.Value ~= "rbxassetid://9204489547" and songid.Value ~= "rbxassetid://9491494389" and songid.Value ~= "rbxassetid://9491642076" and songid.Value ~= "rbxassetid://9391448581" and songid.Value ~= "rbxassetid://1844218195" and songid.Value ~= "rbxassetid://278501300" and songid.Value ~= "rbxassetid://4921647660" and songid.Value ~= "rbxassetid://5015421167" and songid.Value ~= "rbxassetid://844654533" and songid.Value ~= "rbxassetid://6516420854" and songid.Value ~= "rbxassetid://1382488262" and songid.Value ~= "rbxassetid://170282324" and songid.Value ~= "rbxassetid://436219295" and songid.Value ~= "rbxassetid://436447939" and songid.Value ~= "rbxassetid://6338935488" and songid.Value ~= "rbxassetid://2728389795" and songid.Value ~= "rbxassetid://7576995029" and songid.Value ~= "rbxassetid://6941075541" and songid.Value ~= "rbxassetid://6049110238" and songid.Value ~= "rbxassetid://5805753966" and songid.Value ~= "rbxassetid://5310699007" and songid.Value ~= "rbxassetid://6323766331" and songid.Value ~= "rbxassetid://5368276808" and songid.Value ~= "rbxassetid://5177243035" and songid.Value ~= "rbxassetid://556122490" and songid.Value ~= "rbxassetid://6431602336" and songid.Value ~= "rbxassetid://5703266925" and songid.Value ~= "rbxassetid://5106599506" and songid.Value ~= "rbxassetid://6190635423" and songid.Value ~= "rbxassetid://4185475912" and songid.Value ~= "rbxassetid://5315171837" and songid ~= "rbxassetid://5089636816" and songid.Value ~= "rbxassetid://6768783121" and songid.Value ~= "rbxassetid://4835535512" and songid.Value ~= "rbxassetid://5089636816" and songid.Value ~= "rbxassetid://1280010741" and songid.Value ~= "rbxassetid://5355210927" and songid.Value ~="rbxassetid://2581112923" and songid.Value ~= "rbxassetid://481104377" and songid.Value ~= "rbxassetid://2920078671" and songid.Value ~= "rbxassetid://2297862957" and songid.Value ~= "rbxassetid://1338971957" and songid.Value ~= "rbxassetid://5460732000" and songid.Value ~= "rbxassetid://4557673096" and songid.Value ~= "rbxassetid://348832364" and songid.Value ~= "rbxassetid://1143392568" then
			TauntRemote:FireServer("None",3247404955) 
			sound:Play()
			sound.SoundId = customasset("MEMELC/None.mp3")
		elseif songid.Value == "rbxassetid://3247404955" then
			TauntRemote:FireServer("None",525565668) 
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/BetterMan.mp3")
		elseif songid.Value == "rbxassetid://525565668" then
			TauntRemote:FireServer("FurLC",6941075541)--fur
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/FurLC.mp3")
		elseif songid.Value == "rbxassetid://6941075541" then
			TauntRemote:FireServer("ILord",6049110238)--fur
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/ILord.mp3")
		elseif songid.Value == "rbxassetid://6049110238" then
			TauntRemote:FireServer("uwuman",7576995029)--fur
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/trus.mp3")
		elseif songid.Value == "rbxassetid://7576995029" then
TauntRemote:FireServer("uwuman2",69420)--fur
elseif songid.Value == "rbxassetid://69420" then
			TauntRemote:FireServer("snakeskid",6516420854)--usc (wtf)
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/snakeskid.mp3")
		elseif songid.Value == "rbxassetid://6516420854" then
			TauntRemote:FireServer("BloodWater",5015421167)--usc wtf
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/BloodWater.mp3")
		elseif songid.Value == "rbxassetid://5015421167" then
			TauntRemote:FireServer("upside_down",436447939)--fur
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/upside_down.mp3")
		elseif songid.Value == "rbxassetid://436447939" then
			TauntRemote:FireServer("floating_man",436219295)--fur
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/floating_man.mp3")
		elseif songid.Value == "rbxassetid://436219295" then
			TauntRemote:FireServer("Err0r",481104377)--normal
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/Err0r.mp3")
		elseif songid.Value == "rbxassetid://481104377" then
			TauntRemote:FireServer("CyberV1",170282324)--usc wtf
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/CyberV1.mp3")
		elseif songid.Value == "rbxassetid://170282324" then
			TauntRemote:FireServer("CyberV2",4921647660)--usc wtf
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/CyberV2.mp3")
		elseif songid.Value == "rbxassetid://4921647660" then
			TauntRemote:FireServer("Kicksher",278501300)--usc wtf
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/Kicksher.mp3")
		elseif songid.Value == "rbxassetid://278501300" then
			TauntRemote:FireServer("Uncolored",844654533)--usc wtf
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/Uncolored.mp3")
		elseif songid.Value == "rbxassetid://844654533" then
			TauntRemote:FireServer("Glitch",2297862957)--normal
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/Glitch.mp3")
		elseif songid.Value == "rbxassetid://2297862957" then
			TauntRemote:FireServer("Chill",1338971957)--normal
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/Chill.mp3")
		elseif songid.Value == "rbxassetid://1338971957" then
			TauntRemote:FireServer("V1",2581112923)--hlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/V1.mp3")
		elseif songid.Value == "rbxassetid://2581112923" then
			TauntRemote:FireServer("walking_man",5355210927)--hlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/walking_man.mp3")
		elseif songid.Value == "rbxassetid://5355210927" then
			TauntRemote:FireServer("SpeedOfLight",1280010741)--hlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/SpeedOfLight.mp3")
		elseif songid.Value == "rbxassetid://1280010741" then
			TauntRemote:FireServer("floating_man_x2",5089636816)--hlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/floating_man_x2.mp3")
		elseif songid.Value == "rbxassetid://5089636816" then
			TauntRemote:FireServer("hi",4835535512)--hlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/hi.mp3")
		elseif songid.Value == "rbxassetid://4835535512" then
			TauntRemote:FireServer("Lord",4185475912)--hlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/Lord.mp3")
		elseif songid.Value == "rbxassetid://4185475912" then
			TauntRemote:FireServer("Regele",2728389795)--fur
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/Regele.mp3")
		elseif songid.Value == "rbxassetid://2728389795" then
			TauntRemote:FireServer("friday",6190635423)--hlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/friday.mp3")
		elseif songid.Value == "rbxassetid://6190635423" then
			TauntRemote:FireServer("MaddoxLC",6768783121)--alsoo3
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/MaddoxLC.ogg")
		elseif songid.Value == "rbxassetid://6768783121" then
			TauntRemote:FireServer("MaddoxLCv2",6338935488)--fur
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/MaddoxLCv2.mp3")
		elseif songid.Value == "rbxassetid://6338935488" then
			TauntRemote:FireServer("MaddoxLCv3",1382488262)--mlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/MaddoxLCv3.mp3")
		elseif songid.Value == "rbxassetid://1382488262" then
			TauntRemote:FireServer("MaddoxLCv3_8",9491642076)--mlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/MaddoxLCv3_8.mp3")
		elseif songid.Value == "rbxassetid://9491642076" then
			TauntRemote:FireServer("MaddoxLCv3_9",9391448581)--mlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/MaddoxLCv3_9.mp3")
		elseif songid.Value == "rbxassetid://9391448581" then
			TauntRemote:FireServer("MaddoxLCv3_10",1844218195)--mlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/MaddoxLCv3_10.mp3")
		elseif songid.Value == "rbxassetid://1844218195" then
			TauntRemote:FireServer("MaddoxLCv3_11",9204489547)--mlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/MaddoxLCv3_11.mp3")
		elseif songid.Value == "rbxassetid://9204489547" then
			TauntRemote:FireServer("MaddoxLCv3_13",9491494389)--mlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/MaddoxLCv3_13.ogg")
		elseif songid.Value == "rbxassetid://9491494389" then
			TauntRemote:FireServer("HoneyLC",1143392568)--alsoo3
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/HoneyLC.mp3")
		elseif songid.Value == "rbxassetid://1143392568" then
			TauntRemote:FireServer("SolidLC",348832364)--alsoo3
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/SolidLC.mp3")
		elseif songid.Value == "rbxassetid://348832364" then
			TauntRemote:FireServer("itseem",5106599506)--hlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/itseem.mp3")
		elseif songid.Value == "rbxassetid://5106599506" then
			TauntRemote:FireServer("uwu",5703266925)--hlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/uwu.mp3")
		elseif songid.Value == "rbxassetid://5703266925" then
			TauntRemote:FireServer("sis",6431602336)--hlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/sis.mp3")
		elseif songid.Value == "rbxassetid://6431602336" then
			TauntRemote:FireServer("nebula",556122490)--hlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/nebula.mp3")
		elseif songid.Value == "rbxassetid://556122490" then
			TauntRemote:FireServer("purple",5177243035)--hlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/purple.mp3")
		elseif songid.Value == "rbxassetid://5177243035" then
			TauntRemote:FireServer("addict",5368276808)--hlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/addict.mp3")
		elseif songid.Value == "rbxassetid://5368276808" then
			TauntRemote:FireServer("omg",6323766331)--hlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/omg.mp3")
		elseif songid.Value == "rbxassetid://6323766331" then
			TauntRemote:FireServer("hell",5310699007)--hlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/hell.mp3")
		elseif songid.Value == "rbxassetid://5310699007" then
			TauntRemote:FireServer("corrupt",5805753966)--hlc
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/corrupt.mp3")
		elseif songid.Value == "rbxassetid://5805753966" then
			TauntRemote:FireServer("None",3247404955)
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/None.mp3")
		end
	elseif k == "y" then
		if taunt.Value ~= "Fave" then
			TauntRemote:FireServer("Fave",290182215)
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/Fave.ogg")
		else
			TauntRemote:FireServer("None",3247404955)
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/None.mp3")
		end
	elseif k == "r" then
		if taunt.Value ~= "Sit" then
			TauntRemote:FireServer("Sit",5563485991)
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/Sit.mp3")
		else
			TauntRemote:FireServer("None",3247404955)
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/None.mp3")
		end
	elseif k == "g" then
		if taunt.Value ~= "Memer" then
			TauntRemote:FireServer("Memer",5599930438)
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/Memer.mp3")
		else
			TauntRemote:FireServer("None",3247404955)
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/None.mp3")
		end
	elseif k == "t" then
		if taunt.Value ~= "Krump" then
			TauntRemote:FireServer("Krump",1511734302)
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/Krump.ogg")---------
		else
			TauntRemote:FireServer("None",3247404955)
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/None.mp3")
		end
	elseif k == "h" then
		if taunt.Value ~= "Smog" then
			TauntRemote:FireServer("Smog",1511734302)------------
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/Smog.mp3")
		else
			TauntRemote:FireServer("None",3247404955)
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/None.mp3")
		end
	elseif k == "p" then
		if taunt.Value ~= "nulled" then
			TauntRemote:FireServer("nulled",1496130120)
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/nulled.mp3")
		else
			TauntRemote:FireServer("None",3247404955)
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/None.mp3")
		end
	elseif k == "u" then
		if taunt.Value ~= "OOOOO" then
			TauntRemote:FireServer("OOOOO",2681542649)
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/OOOOO.mp3")
		else
			TauntRemote:FireServer("None",3247404955)
			sound:Stop()
			sound:Play()
			sound.SoundId = customasset("MEMELC/None.mp3")
		end
	elseif k == "f" then
		ISFLYING = not ISFLYING
		if lplr.Name == USERNAME then
			sFLY()
		end
	end
end)
coroutine.wrap(function()
	while not stopeverything do
		swait()
		if doe < 360 then
			doe = doe + 2
		else
			doe = 0
		end
	end
end)()
antivoid = Instance.new("Part")
antivoid.Name = "antivoid"
antivoid.Size = Vector3.new(400,10,400)
antivoid.Anchored = true
antivoid.Transparency = 1
antivoid.Position = Vector3.new(RootPart.Position.X,workspace.FallenPartsDestroyHeight+5,RootPart.Position.Z)
antivoid.Parent = workspace
coroutine.resume(coroutine.create(function()
	while not stopeverything do
		swait()
		if not alreadyfixing then
			if antivoid:IsDescendantOf(workspace) then
				antivoid.Position = Vector3.new(RootPart.Position.X,workspace.FallenPartsDestroyHeight+5,RootPart.Position.Z)
			else
				pcall(function()
					antivoid:Destroy()
				end)
				antivoid = Instance.new("Part")
				antivoid.Name = "antivoid"
				antivoid.Size = Vector3.new(400,10,400)
				antivoid.Anchored = true
				antivoid.Transparency = 1
				antivoid.Position = Vector3.new(RootPart.Position.X,workspace.FallenPartsDestroyHeight+5,RootPart.Position.Z)
				antivoid.Parent = workspace
			end
		end
	end
end))
function checkws(v)
	if v:IsA("Sound") and not v.Parent:IsA("BasePart") then
		local function mutethisbadboy(v)
			local mute = Instance.new("TremoloSoundEffect")
			mute.Name = "mute"
			mute.Duty = 0
			mute.Priority = 2147483647
			mute.Parent = v
			mute.Changed:Connect(function(change)
				if stopeverything then wait(math.huge) end
				if change == "Depth" and mute.Depth ~= 1 then
					mute.Depth = 1
				elseif change == "Duty" and mute.Duty ~= 0 then
					mute.Duty = 0
				elseif change == "Enabled" and mute.Enabled ~= true then
					mute.Enabled = true
				elseif change == "Priority" and mute.Priority ~= 2147483647 then
					mute.Priority = 2147483647
				end
			end)
			local checkforreparent = false
			v:GetPropertyChangedSignal("Parent"):Connect(function()
				if stopeverything then wait(math.huge) end
				if v.Parent:IsA("BasePart") then
					mute:Destroy()
					checkforreparent = true
				elseif checkforreparent then
					mutethisbadboy(v)
				end
			end)
			v.DescendantRemoving:Connect(function(b)
				if stopeverything then wait(math.huge) end
				if b == mute and not v.Parent:IsA("BasePart") then
					mutethisbadboy(v)
				end
			end)
		end
		mutethisbadboy(v)
	end
end
for i,v in pairs(workspace:GetDescendants()) do
	checkws(v)
end
workspace.DescendantAdded:Connect(function(v)
	if stopeverything then wait(math.huge) end
	checkws(v)
end)
W1=Instance.new("Weld",eeeblock)
W1.Part0 = eeeblock
W1.Part1 = Torso
local attachuwu = c["Right Arm"].Attachment
weldra:GetPropertyChangedSignal("Part1"):Connect(function()
weldra.Enabled = false
wait(.5)
weldra.Enabled = true
end)
attachuwu:GetPropertyChangedSignal("CFrame"):Connect(function()
weldra.Enabled = false
wait(.35)
weldra.Enabled = true
end)
while not stopeverything do
	if not alreadyfixing then
		if not soundfixing then
			SongSync.Value = eee.TimePosition
		end
		Humanoid.HipHeight = 0
		Humanoid.Sit = false
		Humanoid.DisplayName = "​"
		Humanoid.PlatformStand = ISFLYING
		Humanoid.UseJumpPower = true
		Humanoid.JumpPower = 50
		Humanoid.BreakJointsOnDeath = false
		Humanoid.DisplayDistanceType = "Viewer"
		Humanoid.WalkSpeed = walkspeed
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		weldra.Part1 = attachuwu.Parent
		for i,v in pairs(Character:GetDescendants()) do
			if v:IsA("BasePart") then
				if not v:IsDescendantOf(Effects) and v ~= RootPart then
					v.Anchored = false
				elseif v == RootPart and lplr.Name == USERNAME then
					v.Anchored = false
				elseif v == RootPart and lplr.Name ~= USERNAME then
					v.Anchored = true
				end
			end
		end
	
		
		for i,v in pairs(Character:GetChildren()) do
			if v:IsA("BasePart") and v.Anchored == false and v.Position.Y < (workspace.FallenPartsDestroyHeight + 50) then
				local flot = Instance.new("BodyPosition")
				local spen = Instance.new("BodyGyro")
				local hu = math.huge
				flot.MaxForce = Vector3.new(hu,hu,hu)
				spen.MaxTorque = Vector3.new(hu,hu,hu)
				local spown = nil
				for o,b in pairs(workspace:GetDescendants()) do
					if not b:IsDescendantOf(Character) and b:IsA("SpawnLocation") then
						spown = b
					end
				end
				if spown then
					RootPart.CFrame = CFrame.new(spown.Position.X,spown.Position.Y+(spown.Size.Y/2)+6,spown.Position.Z)
				else
					local base = workspace:FindFirstChild("Base")
					if not base then
						base = workspace:FindFirstChild("Baseplate")
					end
					if base then
						RootPart.CFrame = CFrame.new(math.clamp(RootPart.Position.X,(-base.Size.X/2)+5,(base.Size.X/2)-5),base.Position.Y+(base.Size.Y/2)+6,math.clamp(RootPart.Position.Z,(-base.Size.X/2)+5,(base.Size.X/2)-5))
					else
						RootPart.CFrame = CFrame.new(math.clamp(RootPart.Position.X,-100,100),30,math.clamp(RootPart.Position.Z,-100,100))
					end
				end
				flot.Position = RootPart.Position
				flot.Parent = RootPart
				spen.CFrame = RootPart.CFrame
				spen.Parent = RootPart
				game:GetService("Debris"):AddItem(flot,1)
				game:GetService("Debris"):AddItem(spen,1)
			end
		end
		Torsovelocity = (RootPart.Velocity).Magnitude
		sine = sine + 1
		SINE = SINE + 1
		T = T + 1
		K = K + 1
		local sensitivity = 25
		if taunt.Value == "None" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0, rco * CFrame.new(.5 * math.cos(K / 50), 0, -.5 * math.sin(K / 50)) * CFrame.Angles(0, math.rad(2 * math.cos(K / 50)), 0), .25)
					Neck.C0 = Clerp(Neck.C0, nco * CFrame.Angles(math.rad(20), math.rad(5 * math.cos(K / 50)), 0), .25)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(135 + 8.5 * math.cos(K / 50)), 0, math.rad(25)) * rsco, .25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(K / 50)), 0, math.rad(-25 - 5 * math.cos(K / 25))) * lsco, .25)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -.5 + .1 * math.cos(K / 50), -.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(K / 74)), math.rad(80), 0) * CFrame.Angles(math.rad(5 * math.cos(K / 37)), 0, 0), .25)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 + .05 * math.sin(K / 50), 0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(K / 54)), math.rad(-80), 0) * CFrame.Angles(math.rad(-5 * math.cos(K / 41)), 0, 0), .25)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0, rco * CFrame.new(.5 * math.cos(K / 50), 0, -.5 * math.sin(K / 50)) * CFrame.Angles(math.rad(40), math.rad(2 * math.cos(K / 50)), 0), .25)
					Neck.C0 = Clerp(Neck.C0, nco * CFrame.new(0, -.25, 0) * CFrame.Angles(math.rad(-40), math.rad(5 * math.cos(K / 50)), 0), .25)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(-45), 0, math.rad(5 + 2 * math.cos(K / 19))) * rsco, .25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(-45), 0, math.rad(-5 - 2 * math.cos(K / 19))) * lsco, .25)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -.5, -.5) * CFrame.Angles(math.rad(-20 + 9 * math.cos(K / 74)), math.rad(80), 0) * CFrame.Angles(math.rad(5 * math.cos(K / 37)), 0, 0), .25)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-20 - 9 * math.cos(K / 54)), math.rad(-80), 0) * CFrame.Angles(math.rad(-5 * math.cos(K / 41)), 0, 0), .25)
				end
				Humanoid.HipHeight = 3
				att.Parent = c["Right Arm"]
				att.Position = Vector3.new(0, -1.5, -0.7)
				att.Orientation =  Vector3.new(-0, 90, -45)
			end
		elseif taunt.Value == "FurLC" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity/3.125 then
					Anim = "Idle"
					Humanoid.HipHeight=3
					owo +=1
					RootJoint.C0 = functions.nub(RootJoint.C0,ROOTC0*CFrame.new(0 + .5 * math.cos(owo / 50), 0, 0 - .5 * math.sin(owo / 30))*CFrame.Angles(math.rad(2),math.rad(0),math.rad(0 + 2 * math.cos(owo/80))), .7 / 3)
					Neck.C0 = functions.nub(Neck.C0,NECKC0*CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), .7 / 3)
					RightShoulder.C0 = functions.nub(RightShoulder.C0,CFrame.new(1.5, .5, 0) *CFrame.Angles(math.rad(135 - 10 * math.cos(owo/88)),math.rad(0 + 10 * math.cos(owo/77)),math.rad(20 + 10 * math.cos(owo/82))) * RIGHTSHOULDERC0, .7 / 3)
					LeftShoulder.C0 = functions.nub(LeftShoulder.C0,CFrame.new(-1.5, .5, 0) *CFrame.Angles(math.rad(4 + 5 * math.cos(owo/37)),math.rad(14.5 + 5 * math.cos(owo/47)),math.rad(-15.5 + 5 * math.cos(owo/40))) * LEFTSHOULDERC0, .7 / 3)
					RightHip.C0 = functions.nub(RightHip.C0,CFrame.new(1, -.5, -.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(owo / 45)), math.rad(80), math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(owo / 37)), math.rad(0), math.rad(0)), .7 / 3)
					LeftHip.C0 = functions.nub(LeftHip.C0,CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(owo / 45)), math.rad(-80), math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(owo / 41)), math.rad(0), math.rad(0)), .7 / 3)
				elseif Torsovelocity >= sensitivity/3.125 then
					Anim = "Walk"
					Humanoid.HipHeight = 3
					owo +=1
					RootJoint.C0 = functions.nub(RootJoint.C0,ROOTC0*CFrame.new(0 + .5 * math.cos(owo / 50), 0, 0 - .5 * math.sin(owo / 30)) * CFrame.Angles(math.rad(40), math.rad(0),math.rad(0 + 2 * math.cos(owo/80))), .7 / 3)
					Neck.C0 = functions.nub(Neck.C0,NECKC0* CFrame.new(0, -.25, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), .7 / 3)
					RightShoulder.C0 = functions.nub(RightShoulder.C0, CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(-45), math.rad(0), math.rad(5 + 2 * math.cos(owo / 19))) * RIGHTSHOULDERC0, .7 / 3)
					LeftShoulder.C0 = functions.nub(LeftShoulder.C0, CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(-45), math.rad(0), math.rad(-5 - 2 * math.cos(owo / 19))) * LEFTSHOULDERC0, .7 / 3)
					RightHip.C0 = functions.nub(RightHip.C0, CFrame.new(1, -.5, -.5) * CFrame.Angles(math.rad(-20 + 9 * math.cos(owo / 74)), math.rad(80), math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(owo / 37)), math.rad(0), math.rad(0)), .7 / 3)
					LeftHip.C0 = functions.nub(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-20 - 9 * math.cos(owo / 54)), math.rad(-80), math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(owo / 41)), math.rad(0), math.rad(0)), .7 / 3)
				end
				att.Parent = c["Right Arm"]
				att.Position = Vector3.new(0, -1.5, -0.7)
				att.Orientation =  Vector3.new(-0, 90, -45)
			end
		elseif taunt.Value == "Chill" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(sine/9)) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)),.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.05,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.25,.5,-.1) * CFrame.Angles(math.rad(45),math.rad(-45),math.rad(0)) * RIGHTSHOULDERC0,.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1,.75,.1) * CFrame.Angles(math.rad(-165),math.rad(0),math.rad(40)) * LEFTSHOULDERC0,.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(-12.5),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(12.5),math.rad(-90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/3)
				elseif Torsovelocity >= sensitivity then
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(sine/9)) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.05,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)),.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,-.1) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(135),math.rad(0),math.rad(0)) * LEFTSHOULDERC0,.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-.01) * CFrame.Angles(math.rad(-10),math.rad(80),math.rad(5+5*math.sin(sine/9))),1/2)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-.01) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(-5-5*math.sin(sine/9))),1/2)
				end
				att.Parent = c["Right Arm"]
				att.Position = Vector3.new(0, -1.5, -0.7)
				att.Orientation =  Vector3.new(-0, 90, -45)
			end
		elseif taunt.Value == "Err0r" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 + .5 * math.cos(sine/15)) * CFrame.Angles(math.rad(0),math.rad(-10*math.cos(sine/30)),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-15*math.cos(sine/30)),math.rad(0)),1/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(135+-15*math.cos(sine/30)),math.rad(0),math.rad(25+15*math.cos(sine/30))) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(5),math.rad(5),math.rad(-10+15*math.cos(sine/30))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(-10),math.rad(80),math.rad(10+10*math.sin(sine/15))),1/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(-10-10*math.sin(sine/15))),1/3)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 + .5 * math.cos(sine/15)) * CFrame.Angles(math.rad(40),math.rad(-5*math.cos(sine/30)),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.25,0) * CFrame.Angles(math.rad(-40),math.rad(0),math.rad(0)),0.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(5 + 2 * math.cos(sine/19))) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-5 - 2 * math.cos(sine/19))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-20 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-20 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
				end
				att.Parent = c["Right Arm"]
				att.Position = Vector3.new(0, -1.5, -0.7)
				att.Orientation =  Vector3.new(-0, 90, -45)
			end
		elseif taunt.Value == "upside_down" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					uwu +=1
					Humanoid.HipHeight = 3
					jojowelds.welds.rot.C0 = functions.Clerp(jojowelds.welds.rot.C0, jojodefaults.roto * CFrame.new(0, 0, .5 * cos(uwu / 15)) * ang(-45 * .5, rad(6 * cos(uwu / 15)), 0), 0.05)
					jojowelds.welds.net.C0 = functions.Clerp(jojowelds.welds.net.C0, jojodefaults.neco * ang(0, rad(0 + 6 * cos(uwu / 30)), 0), .25)
					jojowelds.welds.rt.C0 = functions.Clerp(jojowelds.welds.rt.C0, CFrame.new(1.5, .5, 0) * ang(rad(-180), rad(-35), rad(-45 + 0 * cos(uwu / 30))) * jojodefaults.rico, .25)
					jojowelds.welds.lt.C0 = functions.Clerp(jojowelds.welds.lt.C0, CFrame.new(-1.5, .5, 0) * ang(rad(180), rad(35), rad(45 + 0 * cos(uwu / 30))) * jojodefaults.leco, .25)
					jojowelds.welds.rh.C0 = functions.Clerp(jojowelds.welds.rh.C0, CFrame.new(1, -1, -.01) * ang(rad(15), rad(80), rad(25 + 0 * sin(uwu / 15))), .25)
					jojowelds.welds.lh.C0 = functions.Clerp(jojowelds.welds.lh.C0, CFrame.new(-1, -1, -.01) * ang(0, rad(-80), rad(0 - 0 * sin(uwu / 15))), .25)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					uwu +=1
					Humanoid.HipHeight = 3
					jojowelds.welds.rot.C0 = functions.Clerp(jojowelds.welds.rot.C0, jojodefaults.roto * moves.cf(0, 0, 0 - .5 * moves.sin(uwu / 18)) * moves.ang(moves.radt(28.947), moves.radt(0), moves.radt(0)), 0.7 / 3)
					jojowelds.welds.net.C0 = functions.Clerp(jojowelds.welds.net.C0, jojodefaults.neco * moves.cf(0, 0, 0) * moves.ang(moves.radt(-8), moves.radt(0), moves.radt(0)), .7 / 3)
					jojowelds.welds.rt.C0 = functions.Clerp(jojowelds.welds.rt.C0, moves.cf(1, .5, -.25) * moves.ang(0, moves.radt(-10), moves.radt(-90)) * jojodefaults.rico, .25)
					jojowelds.welds.lt.C0 = functions.Clerp(jojowelds.welds.lt.C0, moves.cf(-1.5, 0.5, 0) * moves.ang(moves.radt(-20), moves.radt(0), moves.radt(-10 - 10 * moves.cosp(uwu / 18))) * jojodefaults.leco, 0.7 / 3)
					jojowelds.welds.rh.C0 = functions.Clerp(jojowelds.welds.rh.C0, moves.cf(1, -1, -0.01) * moves.ang(moves.radt(-30), moves.radt(80), moves.radt(10 + 10 * moves.cosp(uwu / 18))), 1 / 3)
					jojowelds.welds.lh.C0 = functions.Clerp(jojowelds.welds.lh.C0, moves.cf(-1, -1, -0.01) * moves.ang(moves.radt(-20), moves.radt(-80), moves.radt(-10 - 10 * moves.cosp(uwu / 18))), 1 / 3)
				end
			end
		elseif taunt.Value == "CyberV1" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					uwu +=1
					Humanoid.HipHeight = 3
					RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0, 0, 0 + 0.25 * math.cos(sine / 12)) * CFrame.Angles(math.rad(4 + 2.5 * math.sin(sine / 12)), math.rad(0), math.rad(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, nc0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(15 + 4.5 * math.sin(sine / 12)), math.rad(0), math.rad(0 - 4 * math.sin(sine / 12))), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1, 0.5 + 0.025 * math.cos(sine / 12), -1) * CFrame.Angles(math.rad(0), math.rad(0 - 7.5 * math.sin(sine / 12)), math.rad(-90 + 7.5 * math.sin(sine / 12))) * rscp, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1, 0 + 0.025 * math.cos(sine / 12), -1) * CFrame.Angles(math.rad(25), math.rad(0 + 7.5 * math.sin(sine / 12)), math.rad(90 - 7.5 * math.sin(sine / 12))) * lscp, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, -0.01) * CFrame.Angles(math.rad(-7.5 * math.sin(sine / 12)), math.rad(75), math.rad(0)) * CFrame.Angles(math.rad(-8 - 2.5 * math.sin(sine / 12)), math.rad(0), math.rad(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -0.5, -0.5) * CFrame.Angles(math.rad(-7.5 * math.sin(sine / 12)), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(-8 - 2.5 * math.sin(sine / 12)), math.rad(0), math.rad(0)), 1 / Animation_Speed)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					uwu +=1
					Humanoid.HipHeight = 3
					jojowelds.welds.rot.C0 = functions.Clerp(jojowelds.welds.rot.C0, jojodefaults.roto * moves.cf(0, 0, 0 - .5 * moves.sin(uwu / 18)) * moves.ang(moves.radt(28.947), moves.radt(0), moves.radt(0)), 0.7 / 3)
					jojowelds.welds.net.C0 = functions.Clerp(jojowelds.welds.net.C0, jojodefaults.neco * moves.cf(0, 0, 0) * moves.ang(moves.radt(-8), moves.radt(0), moves.radt(0)), .7 / 3)
					jojowelds.welds.rt.C0 = functions.Clerp(jojowelds.welds.rt.C0, moves.cf(1, .5, -.25) * moves.ang(0, moves.radt(-10), moves.radt(-90)) * jojodefaults.rico, .25)
					jojowelds.welds.lt.C0 = functions.Clerp(jojowelds.welds.lt.C0, moves.cf(-1.5, 0.5, 0) * moves.ang(moves.radt(-20), moves.radt(0), moves.radt(-10 - 10 * moves.cosp(uwu / 18))) * jojodefaults.leco, 0.7 / 3)
					jojowelds.welds.rh.C0 = functions.Clerp(jojowelds.welds.rh.C0, moves.cf(1, -1, -0.01) * moves.ang(moves.radt(-30), moves.radt(80), moves.radt(10 + 10 * moves.cosp(uwu / 18))), 1 / 3)
					jojowelds.welds.lh.C0 = functions.Clerp(jojowelds.welds.lh.C0, moves.cf(-1, -1, -0.01) * moves.ang(moves.radt(-20), moves.radt(-80), moves.radt(-10 - 10 * moves.cosp(uwu / 18))), 1 / 3)
				end
				att.Parent = c["Torso"] --what ur welding on
				att.Position = Vector3.new(0,0,0.7) --pos
				att.Orientation = Vector3.new(0,0,0) --orient	
			end
		elseif taunt.Value == "CyberV2" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					Humanoid.HipHeight = 3
					RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0, 0, 0 + 0.25 * math.cos(sine / 12)) * CFrame.Angles(math.rad(4 + 2.5 * math.sin(sine / 12)), math.rad(0), math.rad(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, nc0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(15 + 4.5 * math.sin(sine / 12)), math.rad(0), math.rad(0 - 4 * math.sin(sine / 12))), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/50)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1, 0 + 0.025 * math.cos(sine / 12), -1) * CFrame.Angles(math.rad(25), math.rad(0 + 7.5 * math.sin(sine / 12)), math.rad(90 - 7.5 * math.sin(sine / 12))) * lscp, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, -0.01) * CFrame.Angles(math.rad(-7.5 * math.sin(sine / 12)), math.rad(75), math.rad(0)) * CFrame.Angles(math.rad(-8 - 2.5 * math.sin(sine / 12)), math.rad(0), math.rad(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -0.5, -0.5) * CFrame.Angles(math.rad(-7.5 * math.sin(sine / 12)), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(-8 - 2.5 * math.sin(sine / 12)), math.rad(0), math.rad(0)), 1 / Animation_Speed)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					Humanoid.HipHeight = 3
					RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0, 0, 0 + 0.25 * math.cos(sine / 12)) * CFrame.Angles(math.rad(15 + 2.5 * math.sin(sine / 12)), math.rad(0), math.rad(2.5 + 2.5 * math.sin(sine / 12))), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, nc0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(-10 + 4.5 * math.sin(sine / 12)), math.rad(0), math.rad(-2.5 - 2.5 * math.sin(sine / 12))), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/50)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1, 0 + 0.025 * math.cos(sine / 12), -1) * CFrame.Angles(math.rad(25), math.rad(0 + 7.5 * math.sin(sine / 12)), math.rad(90 - 7.5 * math.sin(sine / 12))) * lscp, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, -0.01) * CFrame.Angles(math.rad(-25-2.5 * math.sin(sine / 12)), math.rad(75), math.rad(0)) * CFrame.Angles(math.rad(-8 - 5.5 * math.sin(sine / 12)), math.rad(0), math.rad(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -0.5, -0.5) * CFrame.Angles(math.rad(-2.5 * math.sin(sine / 12)), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(-8 - 2.5 * math.sin(sine / 12)), math.rad(0), math.rad(0)), 1 / Animation_Speed)
				end
				att.Parent = c["Right Arm"]
				att.Position = Vector3.new(0, -1.5, -0.7)
				att.Orientation =  Vector3.new(-0, 90, -45)
			end
		elseif taunt.Value == "BloodWater" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					Humanoid.HipHeight=3
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0) * ANGLES(RAD(7 + 6.5 * SIN(SINE / 24)), RAD(10*SIN(SINE/24)), RAD(6*SIN(SINE/24))), 0.5 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5,0.5,0) * ANGLES(RAD(120 + 6.5 * SIN(SINE / 34)), RAD(5*SIN(SINE/34)), RAD(10 * SIN(SINE / 34))) * ANGLES(RAD(5), RAD(0), RAD(0)) * RIGHTSHOULDERC0, 0.5 / Animation_Speed)
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 1.5 + 0.5 * COS(SINE / 32)) * ANGLES(RAD(0), RAD(0), RAD(10)), 0.4 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(1), RAD(0), RAD(22)) * LEFTSHOULDERC0, 0.4 / Animation_Speed)
					RightHip.C0=Clerp(RightHip.C0,CF(1,-0.4,-0.5)*ANGLES(RAD(0 + 6.5 * SIN(SINE/12)),RAD(90),RAD(40*SIN(SINE/34)))*ANGLES(RAD(-3),RAD(0 - 1 * COS(SINE / 36)),RAD(-10 - 2 * COS(SINE / 39))),0.2)
					LeftHip.C0=Clerp(LeftHip.C0,CF(-1,-1,0)*ANGLES(RAD(10 + 4.6 * SIN(SINE/12)),RAD(-90),RAD(20*SIN(SINE/34)))*ANGLES(RAD(-3),RAD(0 - 1 * COS(SINE / 36)),RAD(10 + 6 * COS(SINE / 31))),0.2)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					Humanoid.HipHeight=3
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-15, 25) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(-15, 25)), RAD(MRANDOM(-15, 25))), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.55, 0.5, 0.5) * ANGLES(RAD(250), RAD(20), RAD(-80))* RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-35 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(-5)) * LEFTSHOULDERC0, 0.35 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
				end
				att.Parent = c["Right Arm"]
				att.Position = Vector3.new(0, -1.5, -0.7)
				att.Orientation =  Vector3.new(-0, 90, -45)
			end
		elseif taunt.Value == "Kicksher" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 4 + 0.6 * COS(SINE / 12)) * ANGLES(RAD(-10), RAD(5), RAD(0)), 0.6 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(20 - 2.5 * SIN(SINE / 12)), RAD(-5), RAD(0)), 0.5 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(20), RAD(-20), RAD(30))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20), RAD(20), RAD(-30)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8, -0.01) * ANGLES(RAD(0), RAD(90), RAD(25+10*COS(SINE/12))) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(-10-10*COS(SINE/12))) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 4 + 0.6 * COS(SINE / 12)) * ANGLES(RAD(20), RAD(0), RAD(0)), 0.6 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-20 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.5 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-20), RAD(0), RAD(30))* RIGHTSHOULDERC0, 0.15 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-20), RAD(0), RAD(-30)) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.8, -0.01) * ANGLES(RAD(0), RAD(90), RAD(-25+10*COS(SINE/12))) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.8, -0.01) * ANGLES(RAD(0), RAD(-90), RAD(20-10*COS(SINE/12))) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				end
			end
		elseif taunt.Value == "Uncolored" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					snap = math.random(1,3)
					if snap == 1 then
						Neck.C0 = Clerp(Neck.C0,NECKC0*CF(0,0,0+((1)-1))*angles(math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000)),math.rad(math.random(-10000,10000))),1/Animation_Speed)
					end
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0,0,2+.5*COS(SINE / 32))*ANGLES(RAD(-25 + 2*Cos(sine/42)),RAD(0),RAD(0)), 1 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-2.5+1*COS(SINE / 12)), RAD(MRANDOM(-5,5)), RAD(0)), 1 / Animation_Speed) 
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(-30), RAD(0), RAD(15 - 5.5 * COS(SINE / 20))) * RIGHTSHOULDERC0, 1 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(-30), RAD(0), RAD(-15 + 5.5 * COS(SINE / 20))) * LEFTSHOULDERC0, 1 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1, -0.2) * ANGLES(RAD(-30+2*Cos(sine/32)), RAD(80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1, -0.2) * ANGLES(RAD(-30+2*Cos(sine/46)), RAD(-80), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 1 / Animation_Speed)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0 - .25*Cos(sine/63)+.92*Sin(sine/95), 0, 4 - 2 * SIN(SINE / 53)) * ANGLES(RAD(70), RAD(0-RootPart.RotVelocity.y), RAD(0 - RootPart.RotVelocity.Y * 4.5 + 3 * COS(SINE / 47))), 0.15 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(15 - 2.5 * SIN(SINE / 12)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(12 - 4.10 * SIN(SINE / 12))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-.75, 0.5, 0.5) * ANGLES(RAD(-25+math.random(-23,23)), RAD(0+math.random(-23,23)), RAD(45+math.random(-23,23))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -.5 - 0.02 * SIN(SINE / 12), -0.5) * ANGLES(RAD(-10 - 2.5 * SIN(SINE / 21)), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.02 * SIN(SINE / 12), -0.01) * ANGLES(RAD(-20 - 2.5 * SIN(SINE / 51)), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
				end
				att.Parent = c["Torso"] --what ur welding on
				att.Position = Vector3.new(0,0,0.7) --pos
				att.Orientation = Vector3.new(0,0,0) --orient
			end
		elseif taunt.Value == "floating_man" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					uwu +=1
					Humanoid.HipHeight = 3
					jojowelds.welds.rot.C0 =  functions.Clerp(jojowelds.welds.rot.C0,jojodefaults.roto * CFrame.new(0 + .5 * cos(uwu/18),0,3 - .5 * sin(uwu/18)) * ang(moves.ra(0),moves.ra(0),moves.ra(0)),0.7/3)
					jojowelds.welds.net.C0 = functions.Clerp(jojowelds.welds.net.C0,jojodefaults.neco * ang(moves.ra(5*cos(uwu/18)),0,0),.25)
					jojowelds.welds.rt.C0 =  functions.Clerp(jojowelds.welds.rt.C0, CFrame.new(1.5,0.5,0) * ang(moves.ra(00),moves.ra(0),moves.ra(10+10*sin(uwu/18))) * jojodefaults.rico,0.7/3)
					jojowelds.welds.lt.C0 =  functions.Clerp(jojowelds.welds.lt.C0 ,CFrame.new(-1.5,0.5,0) * ang(moves.ra(0),moves.ra(0),moves.ra(-10-10*sin(uwu/18))) * jojodefaults.leco,0.7/3)
					jojowelds.welds.rh.C0 =  functions.Clerp(jojowelds.welds.rh.C0, CFrame.new(1 , -0.5, -0.6) * ang(moves.ra(0), moves.ra(90), moves.ra(0)) * ang(moves.ra(1.5), moves.ra(0), moves.ra(-20 - 5 * cos(uwu / 34))), .2 / 3)
					jojowelds.welds.lh.C0 =  functions.Clerp(jojowelds.welds.lh.C0, CFrame.new(-1, -1, 0) * ang(moves.ra(0), moves.ra(-90), moves.ra(0)) * ang(moves.ra(1), moves.ra(0), moves.ra(20 + 2 * cos(uwu / 38))), .2 / 3)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					uwu +=1
					Humanoid.HipHeight = 3
					jojowelds.welds.rot.C0 =  functions.Clerp(jojowelds.welds.rot.C0,jojodefaults.roto * moves.cf(0,0,0 - .5 * moves.sin(uwu/18)) * moves.ang(moves.radt(28.947),moves.radt(0),moves.radt(0)),0.7/3)
					jojowelds.welds.net.C0 = functions.Clerp(jojowelds.welds.net.C0,jojodefaults.neco * moves.cf(0,0,0) * moves.ang(moves.radt(-8),moves.radt(0),moves.radt(0)),.7/3)
					jojowelds.welds.rt.C0 =  functions.Clerp(jojowelds.welds.rt.C0,moves.cf(1.5,0.5,0) * moves.ang(moves.radt(-20),moves.radt(0),moves.radt(10+10*moves.cosp(uwu/18))) * jojodefaults.rico,0.7/3)
					jojowelds.welds.lt.C0 =  functions.Clerp(jojowelds.welds.lt.C0,moves.cf(-1.5,0.5,0) * moves.ang(moves.radt(-20),moves.radt(0),moves.radt(-10-10*moves.cosp(uwu/18))) * jojodefaults.leco,0.7/3)
					jojowelds.welds.rh.C0 =  functions.Clerp(jojowelds.welds.rh.C0,moves.cf(1,-1,-0.01) * moves.ang(moves.radt(-30),moves.radt(80),moves.radt(10+10*moves.cosp(uwu/18))),1/3)
					jojowelds.welds.lh.C0 =  functions.Clerp(jojowelds.welds.lh.C0,moves.cf(-1,-1,-0.01) * moves.ang(moves.radt(-20),moves.radt(-80),moves.radt(-10-10*moves.cosp(uwu/18))),1/3)
				end
				att.Parent = c["Torso"] --what ur welding on
				att.Position = Vector3.new(0,0,0.7) --pos
				att.Orientation = Vector3.new(0,0,0) --orient	
			end
		elseif taunt.Value == "Alastor" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 , 0 , 3 - .5 * math.sin(sine/25)) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.8 / 3)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3))), .7 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/25)), math.rad(math.random(-0.25,3)), math.rad(math.random(0.25,3)))* RIGHTSHOULDERC0, .7 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(-45 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(45 - 5 * math.cos(sine/25))) * LEFTSHOULDERC0,.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1, -1,-.01) * CFrame.Angles(math.rad(-15 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)),.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.25,0) * CFrame.Angles(math.rad(-40),math.rad(0),math.rad(0)),.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/25)), math.rad(math.random(-0.25,3)), math.rad(math.random(0.25,3)))* RIGHTSHOULDERC0, .7 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90-4*math.sin(sine/25)), math.rad(5+2* math.sin(sine/25+math.random(-0.25,3))), math.rad(-2+5*math.sin(sine / 25))) * LEFTSHOULDERC0, .7 / 3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-20 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-20 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
				end
			end
		elseif taunt.Value == "Glitch" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 + .5 * math.cos(sine/9)) * CFrame.Angles(math.rad(-2.5*math.sin(sine/9)),math.rad(0),math.rad(0)),1/2)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(10-10*math.sin(sine/9)),math.rad(0),math.rad(0)),1/2)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5+.25*math.sin(sine/9),0) * CFrame.Angles(math.rad(135+5*math.sin(sine/9)),math.rad(0),math.rad(25)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5+.25*math.sin(sine/9),0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10+10*math.cos(sine/9))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(-10),math.rad(80),math.rad(5+5*math.sin(sine/9))),1/2)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(-5-5*math.sin(sine/9))),1/2)
				elseif Torsovelocity >= sensitivity then
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 + .5 * math.cos(sine/9)) * CFrame.Angles(math.rad(20-2.5*math.sin(sine/9)),math.rad(0),math.rad(0)),1/2)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new() * CFrame.Angles(math.rad(-10-10*math.sin(sine/9)),math.rad(0),math.rad(0)),1/2)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5+.25*math.sin(sine/9),0) * CFrame.Angles(math.rad(-50+5*math.sin(sine/9)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5+.25*math.sin(sine/9),0) * CFrame.Angles(math.rad(110),math.rad(0),math.rad(0)) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(-10),math.rad(80),math.rad(5+5*math.sin(sine/9))),1/2)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(-5-5*math.sin(sine/9))),1/2)
				end
				att.Parent = c["Right Arm"]
				att.Position = Vector3.new(0, -1.5, -0.7)
				att.Orientation =  Vector3.new(-0, 90, -45)
			end
		elseif taunt.Value == "SolidLC" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					if NeckSnap then
						Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(sine/100)),0),1)
						NeckSnap = false
					else
						Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(sine/100)),0),.25)
					end
					if math.random(1,60) == 1 then
						Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.cos(sine/100))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
					end
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50))*CFrame.Angles(math.rad(-25+5*math.sin(sine/50)),0,0),.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(30+5*math.sin(sine/50)),math.rad(0),math.rad(0)),0.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-20 + 8.5 * math.cos(sine/50)),math.rad(0),math.rad(-25 - 5 * math.cos(sine/25))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-5 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(13 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
				elseif Torsovelocity >= sensitivity then
					att.Parent = c["Right Arm"]
					att.Position = Vector3.new(0, -1.5, -0.7)
					att.Orientation =  Vector3.new(-0, 90, -45)
					if NeckSnap then
						Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(sine/100)),0),1)
						NeckSnap = false
					else
						Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(sine/100)),0),.25)
					end
					if math.random(1,60) == 1 then
						Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.cos(sine/100))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
					end
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0 + .5 * math.cos(sine/50),0,3 - .5 * math.sin(sine/50))*CFrame.Angles(math.rad(40),0,0),.25)
					Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(sine/19)))*LEFTSHOULDERC0,.25)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5)*CFrame.Angles(math.rad(-20+9*math.cos(sine/74)),math.rad(80),0)*CFrame.Angles(math.rad(5*math.cos(sine/37)),0,0),.25)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-20-9*math.cos(sine/54)),math.rad(-80),0)*CFrame.Angles(math.rad(-5*math.cos(sine/41)),0,0),.25)
				end
				att.Parent = c["Right Arm"]
				att.Position = Vector3.new(0, -1.5, -0.7)
				att.Orientation = Vector3.new(-0, 90, -55)
			end
		elseif taunt.Value == "HoneyLC" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity/3.125 then
					Anim = "Idle"
					Humanoid.HipHeight = 0
					RightHip.C0=Clerp(RightHip.C0,CFrame.new(1,0.2 - 0.1 * math.cos(sine / 20),-0.3)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))*CFrame.Angles(math.rad(3),math.rad(15 - 2 * math.cos(sine / 56)),math.rad(50 - 2 * math.cos(sine / 32))),.1)
					LeftHip.C0=Clerp(LeftHip.C0,CFrame.new(-1,-1 - 0.1 * math.cos(sine / 20),0)*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))*CFrame.Angles(math.rad(3),math.rad(-1 - 2 * math.cos(sine / 56)),math.rad(20 + 2 * math.cos(sine / 32))),.1)
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,-0 + 0.03 * math.cos(sine / 32),-1.2 + 0.1 * math.cos(sine / 20))*CFrame.Angles(math.rad(45 - 2 * math.cos(sine / 32)),math.rad(0),math.rad(-30 + 2 * math.cos(sine / 56))),.1)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.Angles(math.rad(23 - 2 * math.cos(sine / 37)),math.rad(0 + 5 * math.cos(sine / 43) - 5 * math.cos(sine / 0.25)),math.rad(22 - 2 * math.cos(sine / 56))),.1)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5 + 0.025 * math.cos(sine / 45),0)*CFrame.Angles(math.rad(5 + 3 * math.cos(sine / 43)),math.rad(-14 - 5 * math.cos(sine / 52)),math.rad(63 + 9 * math.cos(sine / 45))),.1)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.35,1 + 0.025 * math.cos(sine / 45),-0.2)*CFrame.Angles(math.rad(148 - 2 * math.cos(sine / 51)),math.rad(0 - 4 * math.cos(sine / 64)),math.rad(22 - 2 * math.cos(sine / 45))),.1)
				elseif Torsovelocity >= sensitivity/3.125 then
					Anim = "Walk"
					Humanoid.HipHeight = 0
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 - 0.15 * math.cos(sine / 47), -0.5, 0.5 + 0.1 * math.cos(sine / 28)) * CFrame.Angles(math.rad(70), math.rad(0 - RootPart.RotVelocity.Y), math.rad(0 - RootPart.RotVelocity.Y * 4.5 + 3 * math.cos(sine / 47))), .2 / 3)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(-17 - 5 * math.cos(sine / 52)), math.rad(0 - 3 * math.cos(sine / 37)), math.rad(0 + 2 * math.cos(sine / 78))), .2 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5 + 0.05 * math.cos(sine / 28), 0) * CFrame.Angles(math.rad(-8 - 4 * math.cos(sine / 59)), math.rad(-20 + 7 * math.cos(sine / 62)), math.rad(20 + 5 * math.cos(sine / 50)))* RIGHTSHOULDERC0, .2 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 28), 0) * CFrame.Angles(math.rad(-8 - 3 * math.cos(sine / 55)), math.rad(20 + 8 * math.cos(sine / 67)), math.rad(-20 - 4 * math.cos(sine / 29))) * LEFTSHOULDERC0, .2 / 3)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1 , -0.5, -0.6) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(1.5), math.rad(0), math.rad(-20 - 5 * math.cos(sine / 34))), .2 / 3)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(1), math.rad(0), math.rad(20 + 2 * math.cos(sine / 38))), .2 / 3)
				end
			end
		elseif taunt.Value == "itseem" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					Humanoid.HipHeight = 1.5
					local headsnap = math.random(1,60);
					local headsnapping=false;
					if headsnap == 1 then
						Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(500,500)), math.rad(math.random(500,500)), math.rad(math.random(500,500))), 1)headsnapping=true headsnapping=false
					end
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 , 0 , 0 - .5 * math.sin(sine/25)) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.8 / 3)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3))), .7 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5 + 0.1 * math.cos(sine / 12),0) * CFrame.Angles(math.rad(-53.75+1.75 * math.cos(sine / 12)),math.rad(0),math.rad(5)) * rscp,1 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5 + 0.1 * math.cos(sine / 12),-0) * CFrame.Angles(math.rad(15 - 1.5 * math.cos(sine / 12)),math.rad(0 - 6 * math.cos(sine / 12)),math.rad(0 - 6 * math.cos(sine / 12))) * lscp,1 / 3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-.01) * CFrame.Angles(math.rad(10),math.rad(80),math.rad(10+10*math.sin(sine/50))),1/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-.01) * CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10-10*math.sin(sine/50))),1/3)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					Humanoid.HipHeight = 1.5
					local headsnap = math.random(1,60);
					local headsnapping=false;
					if headsnap == 1 then
						Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(500,500)), math.rad(math.random(500,500)), math.rad(math.random(500,500))), 1)headsnapping=true headsnapping=false
					end
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 , 0 , 0 - .5 * math.sin(sine/25)) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.8 / 3)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3))), .7 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5 + 0.1 * math.cos(sine / 12),0) * CFrame.Angles(math.rad(-53.75+1.75 * math.cos(sine / 12)),math.rad(0),math.rad(5)) * rscp,1 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5 + 0.1 * math.cos(sine / 12),-0) * CFrame.Angles(math.rad(15 - 1.5 * math.cos(sine / 12)),math.rad(0 - 6 * math.cos(sine / 12)),math.rad(0 - 6 * math.cos(sine / 12))) * lscp,1 / 3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-20 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-20 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),.7/3)
					end
				att.Parent = c["Right Arm"]
				att.Position = Vector3.new(0, -1.5, -0.7)
				att.Orientation = Vector3.new(-0, 90, -65)
			end
		elseif taunt.Value == "uwu" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity/3.125 then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,-.5*math.sin(sine/25)) * CFrame.Angles(math.rad(-90+5*math.cos(sine/25)),math.rad(0),math.rad(0)),.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.1,0) * CFrame.Angles(math.rad(25+5*math.cos(sine/25)),math.rad(0),math.rad(0)),.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1,.75,.1) * CFrame.Angles(math.rad(-165.1-5*math.cos(sine/25)),math.rad(0),math.rad(-40)) * RIGHTSHOULDERC0,.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1,.75,.1) * CFrame.Angles(math.rad(-165-5*math.cos(sine/25)),math.rad(0),math.rad(40)) * LEFTSHOULDERC0,.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(0+10*math.cos(sine/25)),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(25+10*math.cos(sine/25)),math.rad(-90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/3)
				elseif Torsovelocity >= sensitivity/3.125 then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,-.5*math.sin(sine/25)) * CFrame.Angles(math.rad(-90+5*math.cos(sine/25)),math.rad(0),math.rad(0)),.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.1,0) * CFrame.Angles(math.rad(25+5*math.cos(sine/25)),math.rad(0),math.rad(0)),.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1,.75,.1) * CFrame.Angles(math.rad(-165.1-5*math.cos(sine/25)),math.rad(0),math.rad(-40)) * RIGHTSHOULDERC0,.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1,.75,.1) * CFrame.Angles(math.rad(-165-5*math.cos(sine/25)),math.rad(0),math.rad(40)) * LEFTSHOULDERC0,.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(0+10*math.cos(sine/25)),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(25+10*math.cos(sine/25)),math.rad(-90),math.rad(0)) * CFrame.Angles(math.rad(10),math.rad(0),math.rad(0)),.7/3)
				end
				att.Parent = c["Torso"] --what ur welding on
				att.Position = Vector3.new(0,0,0.7) --pos
				att.Orientation = Vector3.new(0,0,0) --orient
			end
		elseif taunt.Value == "nebula" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity/3.125 then
					Anim = "Idle"
					Humanoid.HipHeight = 1.5
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 , 0 , 0 - .5 * math.sin(sine/25)) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.8 / 3)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3))), .7 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(140 + 5 * math.cos(SINE /32)), math.rad(0), math.rad(0)) * RIGHTSHOULDERC0, 0.8 / 10)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5)) * LEFTSHOULDERC0, 0.8 / 10)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1 , -1, 0) * CFrame.Angles(math.rad(0), math.rad(80+10* math.sin(sine / 78)), math.rad(0)) * CFrame.Angles(math.rad(-3+1* math.sin(sine / 58)), math.rad(0), math.rad(2.5+8 * math.sin(sine / 43))),0.8)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -0.5, -0.5) * CFrame.Angles(math.rad(0), math.rad(-80-10* math.sin(sine / 81)), math.rad(0)) * CFrame.Angles(math.rad(-3+1* math.sin(sine / 63)), math.rad(0), math.rad(0+15 * math.sin(sine / 49))),0.8)
				elseif Torsovelocity >= sensitivity/3.125 then
					Anim = "Walk"
					Humanoid.HipHeight = 1.5
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 - 0.15 * math.cos(sine / 47), -0.5, 0.5 + 0.1 * math.cos(sine / 28)) * CFrame.Angles(math.rad(70), math.rad(0 - RootPart.RotVelocity.Y), math.rad(0 - RootPart.RotVelocity.Y * 4.5 + 3 * math.cos(sine / 47))), .2 / 3)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(-17 - 5 * math.cos(sine / 52)), math.rad(0 - 3 * math.cos(sine / 37)), math.rad(0 + 2 * math.cos(sine / 78))), .2 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5 + 0.05 * math.cos(sine / 28), 0) * CFrame.Angles(math.rad(-8 - 4 * math.cos(sine / 59)), math.rad(-20 + 7 * math.cos(sine / 62)), math.rad(20 + 5 * math.cos(sine / 50)))* RIGHTSHOULDERC0, .2 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 28), 0) * CFrame.Angles(math.rad(-8 - 3 * math.cos(sine / 55)), math.rad(20 + 8 * math.cos(sine / 67)), math.rad(-20 - 4 * math.cos(sine / 29))) * LEFTSHOULDERC0, .2 / 3)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1 , -0.5, -0.6) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(1.5), math.rad(0), math.rad(-20 - 5 * math.cos(sine / 34))), .2 / 3)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(1), math.rad(0), math.rad(20 + 2 * math.cos(sine / 38))), .2 / 3)
				end
			end
		elseif taunt.Value == "purple" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					if math.random(1,32+sound.PlaybackLoudness/7) == 1 then
						Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(math.random(-100000-sound.PlaybackLoudness/7,100000+sound.PlaybackLoudness/7)), math.rad(math.random(-99999-sound.PlaybackLoudness/7,99999+sound.PlaybackLoudness/7)), math.rad(math.random(-200-sound.PlaybackLoudness/7,48375935+sound.PlaybackLoudness/7))),1/2)
					end
					if math.random(1,20+sound.PlaybackLoudness/7) == 1 then
						RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5 + 0.05 * math.sin(sine / 12), 0) * CFrame.Angles(math.rad(math.random(-90-sound.PlaybackLoudness/7,90+sound.PlaybackLoudness/7)), math.rad(math.random(-30-sound.PlaybackLoudness/7,30+sound.PlaybackLoudness/7)), math.rad(math.random(-50-sound.PlaybackLoudness/7,50+sound.PlaybackLoudness/7)))* RIGHTSHOULDERC0,1/2)
						LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5 + 0.05 * math.sin(sine / 12), 0) * CFrame.Angles(math.rad(math.random(-10000-sound.PlaybackLoudness/7,10000+sound.PlaybackLoudness/7)), math.rad(math.random(-900-sound.PlaybackLoudness/7,900+sound.PlaybackLoudness/7)), math.rad(math.random(-20-sound.PlaybackLoudness/7,20+sound.PlaybackLoudness/7)))* LEFTSHOULDERC0,1/2)
					end
					Humanoid.HipHeight = 1.5
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 1.5 + 1 * math.cos(sine / 39)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)),0.8)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),1/2)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/25)), math.rad(math.random(-0.25,3)), math.rad(math.random(0.25,3)))* RIGHTSHOULDERC0, .7 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(40+sound.PlaybackLoudness/7.5), math.rad(0), math.rad(-10)) * LEFTSHOULDERC0,1)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1 , -1, 0) * CFrame.Angles(math.rad(0), math.rad(80+10* math.sin(sine / 78)), math.rad(0)) * CFrame.Angles(math.rad(-3+1* math.sin(sine / 58)), math.rad(0), math.rad(2.5+8 * math.sin(sine / 43))),0.8)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -0.5, -0.5) * CFrame.Angles(math.rad(0), math.rad(-80-10* math.sin(sine / 81)), math.rad(0)) * CFrame.Angles(math.rad(-3+1* math.sin(sine / 63)), math.rad(0), math.rad(0+15 * math.sin(sine / 49))),0.8)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					Humanoid.HipHeight = 1.5
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 - 0.15 * math.cos(sine / 47), -0.5, 0.5 + 0.1 * math.cos(sine / 28)) * CFrame.Angles(math.rad(70), math.rad(0 - RootPart.RotVelocity.Y), math.rad(0 - RootPart.RotVelocity.Y * 4.5 + 3 * math.cos(sine / 47))), .2 / 3)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(-17 - 5 * math.cos(sine / 52)), math.rad(0 - 3 * math.cos(sine / 37)), math.rad(0 + 2 * math.cos(sine / 78))), .2 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5 + 0.05 * math.cos(sine / 28), 0) * CFrame.Angles(math.rad(-8 - 4 * math.cos(sine / 59)), math.rad(-20 + 7 * math.cos(sine / 62)), math.rad(20 + 5 * math.cos(sine / 50)))* RIGHTSHOULDERC0, .2 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 28), 0) * CFrame.Angles(math.rad(-8 - 3 * math.cos(sine / 55)), math.rad(20 + 8 * math.cos(sine / 67)), math.rad(-20 - 4 * math.cos(sine / 29))) * LEFTSHOULDERC0, .2 / 3)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1 , -0.5, -0.6) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(1.5), math.rad(0), math.rad(-20 - 5 * math.cos(sine / 34))), .2 / 3)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(1), math.rad(0), math.rad(20 + 2 * math.cos(sine / 38))), .2 / 3)
				end
			end
		elseif taunt.Value == "addict" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					if math.random(1,20+sound.PlaybackLoudness/7) == 1 then
						RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5 + 0.05 * math.sin(sine / 12), 0) * CFrame.Angles(math.rad(math.random(-90-sound.PlaybackLoudness/7,90+sound.PlaybackLoudness/7)), math.rad(math.random(-30-sound.PlaybackLoudness/7,30+sound.PlaybackLoudness/7)), math.rad(math.random(-50-sound.PlaybackLoudness/7,50+sound.PlaybackLoudness/7)))* RIGHTSHOULDERC0,1/2)
						LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5 + 0.05 * math.sin(sine / 12), 0) * CFrame.Angles(math.rad(math.random(-10000-sound.PlaybackLoudness/7,10000+sound.PlaybackLoudness/7)), math.rad(math.random(-900-sound.PlaybackLoudness/7,900+sound.PlaybackLoudness/7)), math.rad(math.random(-20-sound.PlaybackLoudness/7,20+sound.PlaybackLoudness/7)))* LEFTSHOULDERC0,1/2)
					end
					Humanoid.HipHeight = 1.5
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 1.5 + 1 * math.cos(sine / 39)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)),0.8)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(15 - 2.5 * math.sin(SINE / 12)), math.rad(math.random(-25,25)), math.rad(0)),0.15)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5 + 0.05 * math.sin(sine / 12), 0) * CFrame.Angles(math.rad(100 + 2 * math.cos(sine / 12)), math.rad(0), math.rad(15 + 3 * math.cos(sine / 12) - 3 *  math.sin(sine / 12))) *               CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)) * RIGHTSHOULDERC0,1/2)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(math.random(-25,25)), math.rad(-12)) * LEFTSHOULDERC0,0.15)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-17 + 9.4 * math.cos(sine / 26)), math.rad(80), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),1)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -.5, -0.5) * CFrame.Angles(math.rad(-22 + 10.8 * math.cos(sine / 32)), math.rad(-80), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),1)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					Humanoid.HipHeight = 1.5
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 - 0.15 * math.cos(sine / 47), -0.5, 0.5 + 0.1 * math.cos(sine / 28)) * CFrame.Angles(math.rad(70), math.rad(0 - RootPart.RotVelocity.Y), math.rad(0 - RootPart.RotVelocity.Y * 4.5 + 3 * math.cos(sine / 47))), .2 / 3)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(-17 - 5 * math.cos(sine / 52)), math.rad(0 - 3 * math.cos(sine / 37)), math.rad(0 + 2 * math.cos(sine / 78))), .2 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/25)), math.rad(math.random(-0.25,3)), math.rad(math.random(0.25,3)))* RIGHTSHOULDERC0, .7 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 28), 0) * CFrame.Angles(math.rad(-8 - 3 * math.cos(sine / 55)), math.rad(20 + 8 * math.cos(sine / 67)), math.rad(-20 - 4 * math.cos(sine / 29))) * LEFTSHOULDERC0, .2 / 3)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1 , -0.5, -0.6) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(1.5), math.rad(0), math.rad(-20 - 5 * math.cos(sine / 34))), .2 / 3)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(1), math.rad(0), math.rad(20 + 2 * math.cos(sine / 38))), .2 / 3)
				end
			end
		elseif taunt.Value == "omg" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					Humanoid.HipHeight = 0
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, -0.1, -0.1 + 0.05 * math.cos(sine / 12)) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.15 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(160),0,math.rad(15-5*math.sin(sine/25)))* RIGHTSHOULDERC0,.25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5 + 0.025 * math.cos(sine / 12), 0) * CFrame.Angles(math.rad(0), math.rad(0 + 7.5 * math.sin(sine / 12)), math.rad(-12 - 7.5 * math.sin(sine / 12))) * LEFTSHOULDERC0,0.15 / 3)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.05 * math.cos(sine / 12), -0.01) * CFrame.Angles(math.rad(20), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(-8), math.rad(0), math.rad(0)), 0.15 / 3)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.05 * math.cos(sine / 12), -0.01) * CFrame.Angles(math.rad(5), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(-8), math.rad(0), math.rad(0)), 0.15 / 3)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.Angles(math.rad(20), math.rad(-10 - 2.5 * math.sin(sine / 10)), math.rad(20 * math.cos(sine / 10))), 1 / 3)
				elseif Torsovelocity >= sensitivity then
					Humanoid.HipHeight = 0
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, -0.175 + 0.025 * math.cos(sine / 3.5) + -math.sin(sine / 3.5) / 7) * CFrame.Angles(math.rad(9-2.5 * math.cos(sine / 3.5)), math.rad(0), math.rad(10 * math.cos(sine / 7))), 0.15)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+math.random(-15,15)), math.rad(0+math.random(-15,15)), math.rad(0+math.random(-15,15))), 0.35 / 3)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -0.925 - 0.5 * math.cos(sine / 7) / 2, 0.5 * math.cos(sine / 7) / 2) * CFrame.Angles(math.rad(-15 - 35 * math.cos(sine / 7)) + -math.sin(sine / 7) / 2.5, math.rad(90 - 2 * math.cos(sine / 7)), math.rad(0)) * CFrame.Angles(math.rad(0 + 2.5 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -0.925 + 0.5 * math.cos(sine / 7) / 2, -0.5 * math.cos(sine / 7) / 2) * CFrame.Angles(math.rad(-15 + 35 * math.cos(sine / 7)) + math.sin(sine / 7) / 2.5, math.rad(-90 - 2 * math.cos(sine / 7)), math.rad(0)) * CFrame.Angles(math.rad(0 - 2.5 * math.cos(sine / 7)), math.rad(0), math.rad(0)), 0.3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-60 - 5 * math.cos(sine / 12)),math.rad(0 - 2.5 * math.cos(sine / 12)),math.rad(5 + 2.5 * math.cos(sine / 12))) * RIGHTSHOULDERC0,1 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1, 0.5 + 0.05 * math.sin(sine / 30), 0.025 * math.cos(sine / 20)) * CFrame.Angles(math.rad(-70) * math.cos(sine / 7) , math.rad(-90),	math.rad(-5)), 0.1)
				end
			end
		elseif taunt.Value == "hell" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Humanoid.HipHeight = 2.5
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(50 + 4 * math.sin(sine/100)),math.rad(0),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20),math.rad(10*math.cos(sine/100)),math.rad(0)),1)
					if math.random(1,60) == 1 then
						Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.cos(sine/100))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
					end
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(40.6-4*math.sin(sine/50)),math.rad(0),math.rad(0)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(40),math.rad(0),math.rad(-10-10*math.sin(sine/50))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(10),math.rad(80),math.rad(5+10*math.sin(sine/45))),1/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-5-10*math.sin(sine/45))),1/3)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					Humanoid.HipHeight = 2.5
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 - 0.15 * math.cos(sine / 47), -0.5, 0.5 + 0.1 * math.cos(sine / 28)) * CFrame.Angles(math.rad(70), math.rad(0 - RootPart.RotVelocity.Y), math.rad(0 - RootPart.RotVelocity.Y * 4.5 + 3 * math.cos(sine / 47))), .2 / 3)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(-17 - 5 * math.cos(sine / 52)), math.rad(0 - 3 * math.cos(sine / 37)), math.rad(0 + 2 * math.cos(sine / 78))), .2 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5 + 0.05 * math.cos(sine / 28), 0) * CFrame.Angles(math.rad(-8 - 4 * math.cos(sine / 59)), math.rad(-20 + 7 * math.cos(sine / 62)), math.rad(20 + 5 * math.cos(sine / 50)))* RIGHTSHOULDERC0, .2 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 28), 0) * CFrame.Angles(math.rad(-8 - 3 * math.cos(sine / 55)), math.rad(20 + 8 * math.cos(sine / 67)), math.rad(-20 - 4 * math.cos(sine / 29))) * LEFTSHOULDERC0, .2 / 3)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1 , -0.5, -0.6) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(1.5), math.rad(0), math.rad(-20 - 5 * math.cos(sine / 34))), .2 / 3)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(1), math.rad(0), math.rad(20 + 2 * math.cos(sine / 38))), .2 / 3)
				end
				att.Parent = c["Right Arm"]
				att.Position = Vector3.new(0, -1.5, -0.7)
				att.Orientation =  Vector3.new(-0, 90, -45)
			end
		elseif taunt.Value == "corrupt" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					Humanoid.HipHeight = 2
					RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CFrame.new(0, 0, .5 * math.cos(T / 50)) * CFrame.Angles(math.rad(25), math.rad(2 * math.cos(T / 50)), 0), .25)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(15), math.rad(0), 0), .25)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(25), 0, math.rad(5 + 2 * math.cos(T / 50))) * rsco, .25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(25), 0, math.rad(-5 - 2 * math.sin(T / 50))) * lsco, .25)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -.5, -.5) * CFrame.Angles(math.rad(9 * math.cos(T / 50)), math.rad(80), 0), .25)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-5 + 9 * math.sin(T / 50)), math.rad(-80), 0), .25)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					Humanoid.HipHeight = 2
					RootJoint.C0 = Clerp(RootJoint.C0, ROOTC0 * CFrame.new(0, 0, .5 * math.cos(T / 50)) * CFrame.Angles(math.rad(30), 0, 0), .25)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5), math.rad(0), 0), .25)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(-15), 0, math.rad(5 + 2 * math.cos(T / 50))) * rsco, .25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(-15), 0, math.rad(-5 - 2 * math.sin(T / 50))) * lsco, .25)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -.5, -.5) * CFrame.Angles(math.rad(-10 + 9 * math.cos(T / 50)), math.rad(80), 0), .25)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-15 + 9 * math.sin(T / 50)), math.rad(-80), 0), .25)
				end
				att.Parent = c["Torso"] --what ur welding on
				att.Position = Vector3.new(0,0,0.7) --pos
				att.Orientation = Vector3.new(0,0,0) --orient
			end
		elseif taunt.Value == "sis" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity/3.125 then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,3 - .5 * math.sin(sine/50)) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(20),math.rad(10*math.cos(sine/100)),math.rad(0)),1)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-199-4*math.sin(sine/50)),math.rad(0),math.rad(10)) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(-10-10*math.sin(sine/50))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(10),math.rad(80),math.rad(10+10*math.sin(sine/50))),1/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10-10*math.sin(sine/50))),1/3)
				elseif Torsovelocity >= sensitivity/3.125 then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 - 0.15 * math.cos(sine / 47), -0.5, 0.5 + 0.1 * math.cos(sine / 28)) * CFrame.Angles(math.rad(70), math.rad(0 - RootPart.RotVelocity.Y), math.rad(0 - RootPart.RotVelocity.Y * 4.5 + 3 * math.cos(sine / 47))), .2 / 3)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(-17 - 5 * math.cos(sine / 52)), math.rad(0 - 3 * math.cos(sine / 37)), math.rad(0 + 2 * math.cos(sine / 78))), .2 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5 + 0.05 * math.cos(sine / 28), 0) * CFrame.Angles(math.rad(-8 - 4 * math.cos(sine / 59)), math.rad(-20 + 7 * math.cos(sine / 62)), math.rad(20 + 5 * math.cos(sine / 50)))* RIGHTSHOULDERC0, .2 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5 + 0.1 * math.cos(sine / 28), 0) * CFrame.Angles(math.rad(-8 - 3 * math.cos(sine / 55)), math.rad(20 + 8 * math.cos(sine / 67)), math.rad(-20 - 4 * math.cos(sine / 29))) * LEFTSHOULDERC0, .2 / 3)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1 , -0.5, -0.6) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(1.5), math.rad(0), math.rad(-20 - 5 * math.cos(sine / 34))), .2 / 3)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(1), math.rad(0), math.rad(20 + 2 * math.cos(sine / 38))), .2 / 3)
				end
				att.Parent = c["Right Arm"]
				att.Position = Vector3.new(0, -1.5, -0.7)
				att.Orientation =  Vector3.new(-0, 90, -45)
			end
		elseif taunt.Value == "V1" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Anim == "Walk" and Torsovelocity > sensitivity/1.5 then
					RootJoint.C1 = Clerp(RootJoint.C1,rc0 * CFrame.new(0,0,0.1 + 0.05 * math.cos(sine / 6)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),2 / 3)
					Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0) - Head.RotVelocity.Y / 30),0.2 / 3)
					RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,.95-.2*math.sin(sine/12),-.15*math.sin(sine/12)) * CFrame.Angles(math.rad(-5),math.rad(90),math.rad(0)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-10+35 * math.cos(sine / 12))),0.6 / 3)
					LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,.95+.2*math.sin(sine/12),.15*math.sin(sine/12)) * CFrame.Angles(math.rad(-5),math.rad(-90),math.rad(0)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10+35 * math.cos(sine / 12))),0.6 / 3)
				end
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					Humanoid.HipHeight = 0
					RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0,0,0 + 0.05 * math.cos(sine / 12)) * CFrame.Angles(math.rad(15),math.rad(0),math.rad(0)),1 / 3)
					Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(-15 - 3 * math.cos(sine / 12)),math.rad(5),math.rad(0)),1 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5 + 0.1 * math.cos(sine / 12),0) * CFrame.Angles(math.rad(-53.75+1.75 * math.cos(sine / 12)),math.rad(0),math.rad(5)) * rscp,1 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5 + 0.1 * math.cos(sine / 12),-0) * CFrame.Angles(math.rad(15 - 1.5 * math.cos(sine / 12)),math.rad(0 - 6 * math.cos(sine / 12)),math.rad(0 - 6 * math.cos(sine / 12))) * lscp,1 / 3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1.1 - 0.05 * math.cos(sine / 12),0) * CFrame.Angles(math.rad(15),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(-4),math.rad(0),math.rad(0)),1 / 3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1.1 - 0.05 * math.cos(sine / 12),0) * CFrame.Angles(math.rad(10),math.rad(-70),math.rad(0)) * CFrame.Angles(math.rad(-5),math.rad(0),math.rad(0)),1 / 3)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					Humanoid.HipHeight = 0
					RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0,0,0 + 0.05 * math.cos(sine / 12)) * CFrame.Angles(math.rad(20),math.rad(0 + 2.5 * math.cos(sine / 12)),math.rad(0 - 2.5 * math.cos(sine / 12))),1 / 3)
					Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(-20 - 3 * math.cos(sine / 12)),math.rad(0 - 2.5 * math.cos(sine / 12)),math.rad(0 - 2.5 * math.cos(sine / 12))),1 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-60 - 5 * math.cos(sine / 12)),math.rad(0 - 2.5 * math.cos(sine / 12)),math.rad(5 + 2.5 * math.cos(sine / 12))) * rscp,1 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0 - 0.2 * math.cos(sine / 12)) * CFrame.Angles(math.rad(20 - 45 * math.cos(sine / 12)),math.rad(0 - 10 * math.cos(sine / 12)),math.rad(0 + 2.5 * math.cos(sine / 12))) * lscp,1 / 3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1 ,-1,0) * CFrame.Angles(math.rad(0),math.rad(85),math.rad(0)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1 / 3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(0),math.rad(-85),math.rad(0)) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1 / 3)
				end
			end
		elseif taunt.Value == "SpeedOfLight" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Humanoid.HipHeight = 1.5
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0,0,math.cos(sine/15))*CFrame.Angles(math.rad(20* math.sin(sine/15)),0,0),.25)
					Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(10-5*math.cos(sine/12)),math.rad(10*math.cos(sine/12)),math.rad(5*math.cos(sine/12))),.25)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5+0.1*math.cos(sine/12),0)*CFrame.Angles(math.rad(-75+1.75*math.cos(sine/12)),0,math.rad(5))*RIGHTSHOULDERC0,.25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1, 0.5, -0.6) * CFrame.Angles(math.rad(165), math.rad(0), math.rad(50)) * LEFTSHOULDERC0, 0.15 / 3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.4,-0.5)*CFrame.Angles(math.rad(0 + 6.5 * math.sin(sine/12)),math.rad(90),math.rad(40*math.sin(sine/34)))*CFrame.Angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 36)),math.rad(-10 - 2 * math.cos(sine / 39))),0.2)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(10 + 4.6 * math.sin(sine/12)),math.rad(-90),math.rad(20*math.sin(sine/34)))*CFrame.Angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 36)),math.rad(10 + 6 * math.cos(sine / 31))),0.2)
				elseif Torsovelocity >= sensitivity then
					Humanoid.HipHeight = 1.5
					Anim = "Walk"
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(10 - 2* math.sin(sine / 3)), math.rad(0), math.rad(0-5 * math.sin(sine / 6))),0.8)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0,1)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-12)) * LEFTSHOULDERC0,0.8)
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, -0.1+0.15* math.sin(sine / 3)) * CFrame.Angles(math.rad(15+3 * math.sin(sine / 3)), math.rad(0), math.rad(0+5 * math.sin(sine / 6))),0.8)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1 , -1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5 + 70 * math.sin(sine / 6))),0.8)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5 + 70 * math.sin(sine / 6))),0.8)
				end
			end
		elseif taunt.Value == "MaddoxLC" then
			HipVal = 3
			change = 1
			sensitivity = 25
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if attack == false then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					Humanoid.HipHeight = HipVal
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0,0,0 - .5 * math.sin(sine/20))*CFrame.Angles(math.rad(-30.9-5*math.cos(sine/20)),0,0),.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(35-2*math.cos(sine/20)),math.rad(0),math.rad(0)),0.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(130), math.rad(0), math.rad(15))* RIGHTSHOULDERC0, 1 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-20 + 8.5 * math.cos(sine/20)),math.rad(0),math.rad(-25 - 5 * math.cos(sine/20))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0) * CFrame.Angles(math.rad(0 + 38 * math.cos(sine/20)),math.rad(80),math.rad(0))*CFrame.Angles(0,0,math.rad(15 - 25 * math.cos(sine/20))),0.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-30.9 + 38 * math.cos(sine/20)),math.rad(-80),math.rad(0))*CFrame.Angles(0,0,math.rad(-15 + 25 * math.cos(sine/20))),0.7/3)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					Humanoid.HipHeight = HipVal
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0,0,0 - .5 * math.sin(sine/20))*CFrame.Angles(math.rad(40-1*math.cos(sine/20)),0,0),.25)
					Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(sine/19)))*LEFTSHOULDERC0,.25)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-50 + 35 * math.cos(sine/20)),math.rad(80),math.rad(0))*CFrame.Angles(0,0,math.rad(15 - 25 * math.cos(sine/20))),0.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-35 + 35 * math.cos(sine/20)),math.rad(-80),math.rad(0))*CFrame.Angles(0,0,math.rad(-15 + 25 * math.cos(sine/20))),0.7/3)
				end
			end
		elseif taunt.Value == "MaddoxLCv2" then
			HipVal = 3
			change = 1
			sensitivity = 25
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if attack == false then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					Humanoid.HipHeight = HipVal
					moving=false
					uwu +=1
					jojowelds.welds.rot.C0 =functions. Clerp(jojowelds.welds.rot.C0,jojodefaults.roto * CFrame.new(0,0,0 + .5 * math.cos(uwu/25))*CFrame.Angles(math.rad(0 - 1 * math.cos(uwu/54*1.2)),math.rad(0 - 2 * math.cos(uwu/54*1.5)),math.rad(-35)),1)
					jojowelds.welds.net.C0 =functions. Clerp(jojowelds.welds.net.C0, jojodefaults.neco * CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(0 - 3 * math.cos(uwu/54*1.2)),math.rad(0 - 4 * math.cos(uwu/54*1.5)),math.rad(35)),1)
					jojowelds.welds.rt.C0 = functions.Clerp(jojowelds.welds.rt.C0,CFrame.new(1.5,.5,0) * CFrame.Angles(math.rad(75 + 8.5 * math.cos(uwu/25)),math.rad(-20),math.rad(40)) * jojodefaults.rico,1)
					jojowelds.welds.lt.C0 =functions. Clerp(jojowelds.welds.lt.C0,CFrame.new(-1.5,.5,0) * CFrame.Angles(math.rad(25 + 8.5 * math.cos(uwu/25)),math.rad(0),math.rad(-25 - 5 * math.cos(uwu/25))) * jojodefaults.leco,1)
					jojowelds.welds.rh.C0 = functions.Clerp(jojowelds.welds.rh.C0,CFrame.new(1,-.5,-.5) * CFrame.Angles(math.rad(-15 + 9 * math.sin(uwu/25)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.sin(uwu/25)),math.rad(0),math.rad(0)),1)
					jojowelds.welds.lh.C0 =functions. Clerp(jojowelds.welds.lh.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-15 + 9 * math.sin(uwu/25)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.sin(uwu/25)),math.rad(0),math.rad(0)),1)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					Humanoid.HipHeight = HipVal
					moving=true
					uwu +=1
					jojowelds.welds.rot.C0 =functions. Clerp(jojowelds.welds.rot.C0,jojodefaults.roto * CFrame.new(0,0,0 + .5 * math.cos(uwu/25))*CFrame.Angles(math.rad(45),math.rad(0 - 2 * math.cos(uwu/54*1.5)),math.rad(-30)),1)
					jojowelds.welds.net.C0 =functions. Clerp(jojowelds.welds.net.C0, jojodefaults.neco * CFrame.new(0,0 ,0 + ((1) - 1)) * CFrame.Angles(math.rad(-45 - 3 * math.cos(uwu/54*1.2)),math.rad(0 - 4 * math.cos(uwu/54*1.5)),math.rad(30)),1)
					jojowelds.welds.rt.C0 = functions.Clerp(jojowelds.welds.rt.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(-2),math.rad(14)) * jojodefaults.rico,1)
					jojowelds.welds.lt.C0 =functions. Clerp(jojowelds.welds.lt.C0,CFrame.new(-.5,.5,-.5) * CFrame.Angles(math.rad(89),math.rad(0),math.rad(89)) * jojodefaults.leco,1)
					jojowelds.welds.rh.C0 = functions.Clerp(jojowelds.welds.rh.C0,CFrame.new(1,-.5,0) * CFrame.Angles(math.rad(-15 + 9 * math.sin(uwu/25)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.sin(uwu/25)),math.rad(0),math.rad(0)),1)
					jojowelds.welds.lh.C0 =functions. Clerp(jojowelds.welds.lh.C0,CFrame.new(-1,-1,-.7) * CFrame.Angles(math.rad(-15 + 9 * math.sin(uwu/25)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.sin(uwu/25)),math.rad(0),math.rad(0)),1)
				end
			end
		elseif taunt.Value == "walking_man" then
			local Sine = 0
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Humanoid.HipHeight = 0
					Humanoid.WalkSpeed = 50
					local headsnap = math.random(1,60);
					local headsnapping=false;
					if headsnap == 1 then
						Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(500,500)), math.rad(math.random(500,500)), math.rad(math.random(500,500))), 1)headsnapping=true headsnapping=false
					end
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, 0 + 0.05 * math.cos(sine / 12)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-0)), 1 / 3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) *CFrame.Angles(math.rad(20 - 2.5 * math.sin(Sine / 12)), math.rad(0), math.rad(30 *math.cos(sine/12))), 1 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(-10-10*math.sin(Sine/50))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1 - 0.05 * math.cos(sine / 12), -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(-8), math.rad(0), math.rad(0)), 1 / 3)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - 0.05 * math.cos(sine / 12), -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(-8), math.rad(0), math.rad(0)), 1 / 3)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					Humanoid.HipHeight = 0
					Humanoid.WalkSpeed = 50
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0 + ((1) - 1)) * CFrame.Angles(math.rad(10 - 2* math.sin(sine / 3)), math.rad(0), math.rad(0-5 * math.sin(sine / 6))),0.8)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0,1)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-12)) * LEFTSHOULDERC0,0.8)
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, -0.1+0.15* math.sin(sine / 3)) * CFrame.Angles(math.rad(15+3 * math.sin(sine / 3)), math.rad(0), math.rad(0+5 * math.sin(sine / 6))),0.8)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1 , -1, 0) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-5 + 70 * math.sin(sine / 6))),0.8)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(5 + 70 * math.sin(sine / 6))),0.8)
				end
			end
		elseif taunt.Value == "floating_man_x2" then
			Humanoid.HipHeight = 1.5
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity/3.125 then
					Anim = "Idle"
					Humanoid.HipHeight = 1.5
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(7 + 6.5 * math.sin(sine / 24)), math.rad(10*math.sin(sine/24)), math.rad(-55 + 0 * math.sin(sine/24))), 0.5 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0,0, 1*math.cos(sine/15))*CFrame.Angles(math.rad(-45*.5*math.sin(sine/15)),0,0),.25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(0- 5.5 * math.sin(sine /12)), math.rad(5 * math.sin(sine /12)), math.rad(-22 + 4.4 * math.sin(sine/12))) * LEFTSHOULDERC0,0.15)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.4,-0.5)*CFrame.Angles(math.rad(0 + 6.5 * math.sin(sine/12)),math.rad(90),math.rad(40*math.sin(sine/34)))*CFrame.Angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 36)),math.rad(-10 - 2 * math.cos(sine / 39))),0.2)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(10 + 4.6 * math.sin(sine/12)),math.rad(-90),math.rad(20*math.sin(sine/34)))*CFrame.Angles(math.rad(-3),math.rad(0 - 1 * math.cos(sine / 36)),math.rad(10 + 6 * math.cos(sine / 31))),0.2)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					Humanoid.HipHeight = 1.5
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0,0,0 - .5 * math.sin(sine/12))*CFrame.Angles(math.rad(40+1*math.cos(sine/12)),0,0),.25)
					Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.new(0,-.25,0)*CFrame.Angles(math.rad(-40),0,0),.25)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(-45),0,math.rad(-5-2*math.cos(sine/19)))*LEFTSHOULDERC0,.25)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-5 - 9 * math.cos(sine/12)),math.rad(80),math.rad(0)),0.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-9 - 9 * math.cos(sine/12)),math.rad(-80),math.rad(0)),0.7/3)
				end
			end
		elseif taunt.Value == "hi" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				Humanoid.HipHeight = 1
				if Torsovelocity < sensitivity then
					local ncs = false
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0,0,-.5*math.sin(sine/12.5))*CFrame.Angles(math.rad(40),0,0),.25)
					if ncs then
						Neck.C0 = Clerp(Neck.C0, NECKC0*CFrame.Angles(math.rad(-25),math.rad(10*math.sin(sine/25)),0),1)
						ncs = false
					else
						Neck.C0 = Clerp(Neck.C0, NECKC0*CFrame.Angles(math.rad(-25),math.rad(10*math.sin(sine/25)),0),.25)
					end
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(40),0,math.rad(-10-10*math.sin(sine/25)))*LEFTSHOULDERC0,.25)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-.01)*CFrame.Angles(math.rad(10),math.rad(80),math.rad(10*math.sin(sine/25))),.25)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-.01)*CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10*math.sin(sine/25))),.25)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					Humanoid.HipHeight = 1
					local ncs = false
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0,0,-.5*math.sin(sine/12.5))*CFrame.Angles(math.rad(40),0,0),.25)
					if ncs then
						Neck.C0 = Clerp(Neck.C0, NECKC0*CFrame.Angles(math.rad(-25),math.rad(10*math.sin(sine/25)),0),1)
						ncs = false
					else
						Neck.C0 = Clerp(Neck.C0, NECKC0*CFrame.Angles(math.rad(-25),math.rad(10*math.sin(sine/25)),0),.25)
					end
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.55, 0.5, 0.5) * CFrame.Angles(math.rad(250), math.rad(20), math.rad(-80))* RIGHTSHOULDERC0, 1 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90-4*math.sin(sine/25)), math.rad(5+2* math.sin(sine/25+math.random(-0.25,3))), math.rad(-2+5*math.sin(sine / 25))) * LEFTSHOULDERC0, .7 / 3)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-30-4*math.sin(sine/25-math.random(0.25,3))), math.rad(80), math.rad(0)), .7 / 3)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 , 0) * CFrame.Angles(math.rad(-20-4*math.sin(sine/25-math.random(-0.25,3))), math.rad(-80), math.rad(0)), .7 / 3)
				end
			end
		elseif taunt.Value == "Lord" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					Humanoid.HipHeight = 2
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,math.cos(sine/25),-math.sin(sine/25))*CFrame.Angles(math.rad(5*math.sin(sine/25)),0,0),.25)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.Angles(math.rad(5*math.cos(sine/25)),0,0),.25)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(160),0,math.rad(15-5*math.sin(sine/25)))* RIGHTSHOULDERC0,.25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(0,0,math.rad(-15+5*math.sin(sine/25)))* LEFTSHOULDERC0,.25)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1-.1*math.sin(sine/25),-.01)*CFrame.Angles(0,math.rad(80),0),.25)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-.5-.25*math.sin(sine/25),-.51)*CFrame.Angles(math.rad(-10),math.rad(-80),0),.25)
				elseif Torsovelocity >= sensitivity then
					Humanoid.HipHeight = 2
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,math.cos(sine/25),-math.sin(sine/25))*CFrame.Angles(math.rad(5*math.sin(sine/25)),0,math.rad(70)),.25)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.Angles(0,0,math.rad(-70))*CFrame.Angles(math.rad(5*math.cos(sine/25)),0,0),.25)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1,.5,-.25)*CFrame.Angles(0,math.rad(-10),math.rad(-90))* RIGHTSHOULDERC0,.25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(0,0,math.rad(-20+5*math.sin(sine/25)))* LEFTSHOULDERC0,.25)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1-.1*math.sin(sine/25),-.01)*CFrame.Angles(0,math.rad(80),0),.25)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-.5-.25*math.sin(sine/25),-.51)*CFrame.Angles(math.rad(-10),math.rad(-80),0),.25)
				end
			end
		elseif taunt.Value == "Regele" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					Humanoid.HipHeight = 3
					uwu +=1
					jojowelds.welds.rot.C0 = functions.Clerp(jojowelds.welds.rot.C0, jojodefaults.roto * CFrame.new(0, math.cos(uwu / 18), -math.sin(uwu / 18)) * CFrame.Angles(math.rad(5 * math.sin(uwu / 25)), 0, 0), .25)
					jojowelds.welds.net.C0 = functions.Clerp(jojowelds.welds.net.C0, jojodefaults.neco * CFrame.Angles(math.rad(5 * math.cos(uwu / 18)), 0, 0), .25)
					jojowelds.welds.rt.C0 = functions.Clerp(jojowelds.welds.rt.C0, CFrame.new(1.5, .5, 0) * CFrame.Angles(0, 0, math.rad(15 - 5 * math.sin(uwu / 18))) * jojodefaults.rico, .25)
					jojowelds.welds.lt.C0 = functions.Clerp(jojowelds.welds.lt.C0, CFrame.new(-1.5, .5, 0) * CFrame.Angles(0, 0, math.rad(-15 + 5 * math.sin(uwu / 18))) * jojodefaults.leco, .25)
					jojowelds.welds.rh.C0 = functions.Clerp(jojowelds.welds.rh.C0, CFrame.new(1, -1 - .1 * math.sin(uwu / 18), -.01) * CFrame.Angles(0, math.rad(80), 0), .25)
					jojowelds.welds.lh.C0 = functions.Clerp(jojowelds.welds.lh.C0, CFrame.new(-1, -.5 - .25 * math.sin(uwu / 18), -.51) * CFrame.Angles(math.rad(-10), math.rad(-80), 0), .25)
				elseif Torsovelocity >= sensitivity then
					Humanoid.HipHeight = 3
					uwu +=1
					jojowelds.welds.rot.C0 = functions.Clerp(jojowelds.welds.rot.C0, jojodefaults.roto * CFrame.new(0, math.cos(uwu / 18), -math.sin(uwu / 18)) * CFrame.Angles(math.rad(5 * math.sin(uwu / 18)), 0, math.rad(70)), .25)
					jojowelds.welds.net.C0 = functions.Clerp(jojowelds.welds.net.C0, jojodefaults.neco * CFrame.Angles(0, 0, math.rad(-70)) * CFrame.Angles(math.rad(5 * math.cos(uwu / 18)), 0, 0), .25)
					jojowelds.welds.rt.C0 = functions.Clerp(jojowelds.welds.rt.C0, CFrame.new(1, .5, -.25) * CFrame.Angles(0, math.rad(-10), math.rad(-90)) * jojodefaults.rico, .25)
					jojowelds.welds.lt.C0 = functions.Clerp(jojowelds.welds.lt.C0, CFrame.new(-1.5, .5, 0) * CFrame.Angles(0, 0, math.rad(-20 + 5 * math.sin(uwu / 18))) * jojodefaults.leco, .25)
					jojowelds.welds.rh.C0 = functions.Clerp(jojowelds.welds.rh.C0, CFrame.new(1, -1 - .1 * math.sin(uwu / 18), -.01) * CFrame.Angles(0, math.rad(80), 0), .25)
					jojowelds.welds.lh.C0 = functions.Clerp(jojowelds.welds.lh.C0, CFrame.new(-1, -.5 - .25 * math.sin(uwu / 18), -.51) * CFrame.Angles(math.rad(-10), math.rad(-80), 0), .25)
				end
				att.Parent = c["Torso"] --what ur welding on
				att.Position = Vector3.new(0,0,0.7) --pos
				att.Orientation = Vector3.new(0,0,0) --orient
			end
		elseif taunt.Value == "friday" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity/3.125 then
					Anim = "Idle"
					Humanoid.HipHeight = 2.5
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,0 + .5 * math.cos(sine/4)) * CFrame.Angles(math.rad(0),math.rad(-10*math.cos(sine/13)),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(-15*math.cos(sine/13)),math.rad(0)),1/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(135+-15*math.cos(sine/13)),math.rad(0),math.rad(25+15*math.cos(sine/13))) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(5),math.rad(5),math.rad(-10+15*math.cos(sine/13))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,-0.01) * CFrame.Angles(math.rad(-10),math.rad(80),math.rad(10+10*math.sin(sine/4))),1/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,-0.01) * CFrame.Angles(math.rad(0),math.rad(-80),math.rad(-10-10*math.sin(sine/4))),1/3)
				elseif Torsovelocity >= sensitivity/3.125 then
					Anim = "Walk"
					Humanoid.HipHeight = 2.5
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0,0,0 + .5 * math.cos(sine/15)) * CFrame.Angles(math.rad(40),math.rad(-5*math.cos(sine/30)),math.rad(0)),0.7/3)
					Neck.C0 = Clerp(Neck.C0,NECKC0 * CFrame.new(0,-.25,0) * CFrame.Angles(math.rad(-40),math.rad(0),math.rad(0)),0.7/3)
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(5 + 2 * math.cos(sine/19))) * RIGHTSHOULDERC0,0.7/3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,0.5,0) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-5 - 2 * math.cos(sine/19))) * LEFTSHOULDERC0,0.7/3)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-0.5,-0.5) * CFrame.Angles(math.rad(-20 + 9 * math.cos(sine/74)),math.rad(80),math.rad(0)) * CFrame.Angles(math.rad(0 + 5 * math.cos(sine/37)),math.rad(0),math.rad(0)),0.7/3)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0) * CFrame.Angles(math.rad(-20 - 9 * math.cos(sine/54)),math.rad(-80),math.rad(0)) * CFrame.Angles(math.rad(0 - 5 * math.cos(sine/41)),math.rad(0),math.rad(0)),0.7/3)
				end
				att.Parent = c["Right Arm"]
				att.Position = Vector3.new(0, -1.5, -0.7)
				att.Orientation =  Vector3.new(-0, 90, -45)
			end
		elseif taunt.Value == "ILord" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Humanoid.HipHeight = 2.3
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0,0,-.5*math.sin(sine/25))*CFrame.Angles(math.rad(20),0,0),.25)
					if NeckSnap then
						Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(sine/50)),0),1)
						NeckSnap = false
					else
						Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(20),math.rad(10*math.sin(sine/50)),0),.25)
					end
					if math.random(1,60) == 1 then
						Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(20+math.random(-20,20)),math.rad((10*math.sin(sine/50))+math.random(-20,20)),math.rad(math.random(-20,20))),1)
					end
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-10),0,0)*RIGHTSHOULDERC0,.25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.cos(sine/25)))*LEFTSHOULDERC0,.25)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0)*CFrame.Angles(math.rad(10),math.rad(80),math.rad(10+10*math.cos(sine/25))),.25)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(20),math.rad(-80),math.rad(-10-10*math.cos(sine/25))),.25)
				elseif Torsovelocity >= sensitivity then
					Humanoid.HipHeight = 2.3
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0*CFrame.new(0,0,-.5*math.sin(sine/25))*CFrame.Angles(math.rad(20),0,0),.25)
					if NeckSnap then
						Neck.C0 = Clerp(Neck.C0,NECKC0,1)
						NeckSnap = false
					else
						Neck.C0 = Clerp(Neck.C0,NECKC0,.25)
					end
					if math.random(1,60) == 1 then
						Neck.C0 = Clerp(Neck.C0,NECKC0*CFrame.Angles(math.rad(math.random(-20,20)),math.rad(math.random(-20,20)),math.rad(math.random(-20,20))),1)
					end
					RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,.5,0)*CFrame.Angles(math.rad(-10),0,0)*RIGHTSHOULDERC0,.25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,.5,0)*CFrame.Angles(math.rad(20),0,math.rad(-10-10*math.cos(sine/25)))*LEFTSHOULDERC0,.25)
					RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1,-1,0)*CFrame.Angles(math.rad(-20),math.rad(80),math.rad(10+10*math.cos(sine/25))),.25)
					LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1,-1,0)*CFrame.Angles(math.rad(-10),math.rad(-80),math.rad(-10-10*math.cos(sine/25))),.25)
				end
			end
		elseif taunt.Value == "kArmA" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					local headsnap = math.random(1,60);
					local headsnapping=false;
					if headsnap == 1 then
						Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(500,500)), math.rad(math.random(500,500)), math.rad(math.random(500,500))), 1)headsnapping=true headsnapping=false
					end
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 , 0 , 3 - .5 * math.sin(sine/25)) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.8 / 3)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3))), .7 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/25)), math.rad(math.random(-0.25,3)), math.rad(math.random(0.25,3)))* RIGHTSHOULDERC0, .7 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(20), math.rad(5+2* math.sin(sine/25+math.random(-0.25,3))), math.rad(-2+5*math.sin(sine / 25))) * LEFTSHOULDERC0, .7 / 3)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-20-4*math.sin(sine/25-math.random(0.25,3))), math.rad(80), math.rad(0)), .7 / 3)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 , 0) * CFrame.Angles(math.rad(-10-4*math.sin(sine/25-math.random(-0.25,3))), math.rad(-80), math.rad(0)), .7 / 3)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					local headsnap = math.random(1,60);
					local headsnapping=false;
					if headsnap == 1 then
						Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(math.random(500,500)), math.rad(math.random(500,500)), math.rad(math.random(500,500))), 1)headsnapping=true headsnapping=false
					end
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0 , 0 , 3 - .5 * math.sin(sine/25)) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.8 / 3)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(25-math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3)), math.rad(math.random(0.25,3))), .7 / 3)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-41.6-4*math.sin(sine/25)), math.rad(math.random(-0.25,3)), math.rad(math.random(0.25,3)))* RIGHTSHOULDERC0, .7 / 3)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90-4*math.sin(sine/25)), math.rad(5+2* math.sin(sine/25+math.random(-0.25,3))), math.rad(-2+5*math.sin(sine / 25))) * LEFTSHOULDERC0, .7 / 3)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(-30-4*math.sin(sine/25-math.random(0.25,3))), math.rad(80), math.rad(0)), .7 / 3)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 , 0) * CFrame.Angles(math.rad(-20-4*math.sin(sine/25-math.random(-0.25,3))), math.rad(-80), math.rad(0)), .7 / 3)
				end
			end
		elseif taunt.Value == "uwuman" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity/3.125 then
					Anim = "Idle"
					Humanoid.HipHeight=3
					uwu +=1
					jojowelds.welds.rot.C0 = functions.Clerp(jojowelds.welds.rot.C0,jojodefaults.roto*CFrame.new(0,.25*math.cos(uwu/16),.4*math.sin(uwu/16))*CFrame.Angles(math.rad(10-2.5*math.cos(uwu/16)),0,0),.1)
					jojowelds.welds.net.C0 = functions.Clerp(jojowelds.welds.net.C0, jojodefaults.neco*CFrame.Angles(math.rad(16.5-1.5*math.cos(uwu/16)),math.rad(2.5-5.5*math.cos(uwu/16)),math.rad(-16.5*math.cos(uwu/15+.4*math.cos(uwu/20)))),.1)
					jojowelds.welds.rt.C0 = functions.Clerp(jojowelds.welds.rt.C0,CFrame.new(1.45,.6+.05*math.sin(uwu/16),0)*CFrame.Angles(math.rad(5+5*math.cos(uwu/16)),math.rad(-5),math.rad(28+4*math.sin(uwu/16)))*jojodefaults.rico,.1)
					jojowelds.welds.lt.C0 = functions.Clerp(jojowelds.welds.lt.C0,CFrame.new(-1.45,.6+.05*math.sin(uwu/16),0)*CFrame.Angles(math.rad(5+5*math.cos(uwu/16)),math.rad(5),math.rad(-28-4*math.sin(uwu/16)))*jojodefaults.leco,.1)
					jojowelds.welds.rh.C0 = functions.Clerp(jojowelds.welds.rh.C0,CFrame.new(1,-.45+.1*math.sin(uwu/16),-.4)*CFrame.Angles(math.rad(-21.5+10*math.sin(uwu/16)),math.rad(65),math.rad(2.5)),.1)
					jojowelds.welds.lh.C0 = functions.Clerp(jojowelds.welds.lh.C0,CFrame.new(-1,-.85+.1*math.sin(uwu/16),-.1)*CFrame.Angles(math.rad(-11.5+5*math.sin(uwu/16)),math.rad(-65),math.rad(-2.5)),.1)
				elseif Torsovelocity >= sensitivity/3.125 then
					Anim = "Walk"
					Humanoid.HipHeight = 3
					uwu +=1
					local SidewaysMovement = ((RootPart.Velocity*RootPart.CFrame.RightVector).X+(RootPart.Velocity*RootPart.CFrame.RightVector).Z)/50
					local ForwardMovement =  ((RootPart.Velocity*RootPart.CFrame.LookVector).X+(RootPart.Velocity*RootPart.CFrame.LookVector).Z)/50
					jojowelds.welds.rot.C0 = functions.Clerp(jojowelds.welds.rot.C0,jojodefaults.roto*CFrame.new(0,0,.6*math.sin(uwu/16)*SidewaysMovement*ForwardMovement)*CFrame.new(SidewaysMovement+(1.5*SidewaysMovement)*math.sin(uwu/16),ForwardMovement-ForwardMovement*math.cos(uwu/16),-.185+.045*math.cos(uwu/56))*CFrame.Angles(math.rad((-15*ForwardMovement*math.sin(uwu/16))+(ForwardMovement*20)),math.rad(-SidewaysMovement*50),math.rad(math.cos(uwu/16))),.1)
					jojowelds.welds.net.C0 = functions.Clerp(jojowelds.welds.net.C0, jojodefaults.neco*CFrame.Angles(math.rad((25+20*ForwardMovement*math.sin(uwu/16))+(-ForwardMovement)*18),math.rad(SidewaysMovement*5),math.rad(-SidewaysMovement*45-1)),.1)
					jojowelds.welds.rt.C0 = functions.Clerp(jojowelds.welds.rt.C0,CFrame.new(1.45+.0*math.cos(uwu/16),.5,0)*CFrame.Angles(math.rad((10*ForwardMovement*math.cos(uwu/16))-ForwardMovement*25),math.rad(ForwardMovement*5),math.rad(18-(SidewaysMovement*28)+ForwardMovement*-10*math.sin(uwu/16)))*jojodefaults.rico,.1)
					jojowelds.welds.lt.C0 = functions.Clerp(jojowelds.welds.lt.C0,CFrame.new(-1.45+.0*math.cos(uwu/16),.5,0)*CFrame.Angles(math.rad((10*ForwardMovement*math.cos(uwu/16))-ForwardMovement*25),math.rad(-ForwardMovement*5),math.rad(-18-(SidewaysMovement*28)+ForwardMovement*10*math.sin(uwu/16)))*jojodefaults.leco,.1)
					jojowelds.welds.rh.C0 = functions.Clerp(jojowelds.welds.rh.C0,CFrame.new(1,-.8,-.15)*CFrame.Angles(math.rad(-20-(20*math.cos(uwu/16))*ForwardMovement),math.rad(85),math.rad((5*ForwardMovement)-SidewaysMovement*15)),.1)
					jojowelds.welds.lh.C0 = functions.Clerp(jojowelds.welds.lh.C0,CFrame.new(-1,-.6,-.3)*CFrame.Angles(math.rad(-20-(20*math.cos(uwu/16))*ForwardMovement),math.rad(-85),math.rad((-5*ForwardMovement)-SidewaysMovement*15)),.1)
				end
				att.Parent = c["Torso"] --what ur welding on
				att.Position = Vector3.new(0,0,0.7) --pos
				att.Orientation = Vector3.new(0,0,0) --orient
			end
elseif taunt.Value == "uwuman2" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0 * CFrame.new(0,0,0),0.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-0.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),0.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(0.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-0.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			if attack == false then
				if Torsovelocity < sensitivity/3.125 then
					Anim = "Idle"
					Humanoid.HipHeight=3
					uwu +=1
					jojowelds.welds.rot.C0 = functions.Clerp(jojowelds.welds.rot.C0,jojodefaults.roto*CFrame.new(0,.25*math.cos(uwu/16),.4*math.sin(uwu/16))*CFrame.Angles(math.rad(10-2.5*math.cos(uwu/16)),0,0),.1)
					jojowelds.welds.net.C0 = functions.Clerp(jojowelds.welds.net.C0, jojodefaults.neco*CFrame.Angles(math.rad(16.5-1.5*math.cos(uwu/16)),math.rad(2.5-5.5*math.cos(uwu/16)),math.rad(-16.5*math.cos(uwu/15+.4*math.cos(uwu/20)))),.1)
					jojowelds.welds.rt.C0 = functions.Clerp(jojowelds.welds.rt.C0,CFrame.new(1.45,.6+.05*math.sin(uwu/16),0)*CFrame.Angles(math.rad(5+5*math.cos(uwu/16)),math.rad(-5),math.rad(28+4*math.sin(uwu/16)))*jojodefaults.rico,.1)
					jojowelds.welds.lt.C0 = functions.Clerp(jojowelds.welds.lt.C0,CFrame.new(-1.45,.6+.05*math.sin(uwu/16),0)*CFrame.Angles(math.rad(5+5*math.cos(uwu/16)),math.rad(5),math.rad(-28-4*math.sin(uwu/16)))*jojodefaults.leco,.1)
					jojowelds.welds.rh.C0 = functions.Clerp(jojowelds.welds.rh.C0,CFrame.new(1,-.45+.1*math.sin(uwu/16),-.4)*CFrame.Angles(math.rad(-21.5+10*math.sin(uwu/16)),math.rad(65),math.rad(2.5)),.1)
					jojowelds.welds.lh.C0 = functions.Clerp(jojowelds.welds.lh.C0,CFrame.new(-1,-.85+.1*math.sin(uwu/16),-.1)*CFrame.Angles(math.rad(-11.5+5*math.sin(uwu/16)),math.rad(-65),math.rad(-2.5)),.1)
				elseif Torsovelocity >= sensitivity/3.125 then
					Anim = "Walk"
					Humanoid.HipHeight = 3
					uwu +=1
					local SidewaysMovement = ((RootPart.Velocity*RootPart.CFrame.RightVector).X+(RootPart.Velocity*RootPart.CFrame.RightVector).Z)/50
					local ForwardMovement =  ((RootPart.Velocity*RootPart.CFrame.LookVector).X+(RootPart.Velocity*RootPart.CFrame.LookVector).Z)/50
					jojowelds.welds.rot.C0 = functions.Clerp(jojowelds.welds.rot.C0,jojodefaults.roto*CFrame.new(0,0,.6*math.sin(uwu/16)*SidewaysMovement*ForwardMovement)*CFrame.new(SidewaysMovement+(1.5*SidewaysMovement)*math.sin(uwu/16),ForwardMovement-ForwardMovement*math.cos(uwu/16),-.185+.045*math.cos(uwu/56))*CFrame.Angles(math.rad((-15*ForwardMovement*math.sin(uwu/16))+(ForwardMovement*20)),math.rad(-SidewaysMovement*50),math.rad(math.cos(uwu/16))),.1)
					jojowelds.welds.net.C0 = functions.Clerp(jojowelds.welds.net.C0, jojodefaults.neco*CFrame.Angles(math.rad((25+20*ForwardMovement*math.sin(uwu/16))+(-ForwardMovement)*18),math.rad(SidewaysMovement*5),math.rad(-SidewaysMovement*45-1)),.1)
					jojowelds.welds.rt.C0 = functions.Clerp(jojowelds.welds.rt.C0,CFrame.new(1.45+.0*math.cos(uwu/16),.5,0)*CFrame.Angles(math.rad((10*ForwardMovement*math.cos(uwu/16))-ForwardMovement*25),math.rad(ForwardMovement*5),math.rad(18-(SidewaysMovement*28)+ForwardMovement*-10*math.sin(uwu/16)))*jojodefaults.rico,.1)
					jojowelds.welds.lt.C0 = functions.Clerp(jojowelds.welds.lt.C0,CFrame.new(-1.45+.0*math.cos(uwu/16),.5,0)*CFrame.Angles(math.rad((10*ForwardMovement*math.cos(uwu/16))-ForwardMovement*25),math.rad(-ForwardMovement*5),math.rad(-18-(SidewaysMovement*28)+ForwardMovement*10*math.sin(uwu/16)))*jojodefaults.leco,.1)
					jojowelds.welds.rh.C0 = functions.Clerp(jojowelds.welds.rh.C0,CFrame.new(1,-.8,-.15)*CFrame.Angles(math.rad(-20-(20*math.cos(uwu/16))*ForwardMovement),math.rad(85),math.rad((5*ForwardMovement)-SidewaysMovement*15)),.1)
					jojowelds.welds.lh.C0 = functions.Clerp(jojowelds.welds.lh.C0,CFrame.new(-1,-.6,-.3)*CFrame.Angles(math.rad(-20-(20*math.cos(uwu/16))*ForwardMovement),math.rad(-85),math.rad((-5*ForwardMovement)-SidewaysMovement*15)),.1)
				end
walkspeed = 150
				att.Parent = c["Torso"] --what ur welding on
				att.Position = Vector3.new(0,0,0.7) --pos
				att.Orientation = Vector3.new(0,0,0) --orient
			end
		elseif taunt.Value == "MaddoxLCv3" then
walkspeed = 50
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					att.Parent = c["Torso"] --what ur welding on
					att.Position = Vector3.new(0,0,0.7) --pos
					att.Orientation = Vector3.new(0,0,0) --orient
					RootJoint.C0 = Qlerp(RootJoint.C0, ROOTC0 * CFrame.new(0, -.08 * math.sin(T / 60), -.1 + .1 * math.cos(T / 60)) * CFrame.Angles(math.rad(5 * math.sin(T / 60)), 0, math.rad(-5)), .25)
					Neck.C0 = Qlerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(4 + 2 * math.sin(T / 60)), 0, math.rad(5)), .25)
					RightShoulder.C0 = Qlerp(RightShoulder.C0, CFrame.new(1.5, 0.5 + .1 * math.cos(T / 60), 0) * CFrame.Angles(math.rad(-2 * math.cos(T / 60)), 0, math.rad(5 * math.cos(T / 60))) * RIGHTSHOULDERC0, .25)
					LeftShoulder.C0 = Qlerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5 + .1 * math.cos(T / 60), 0) * CFrame.Angles(math.rad(-2 * math.cos(T / 60)), 0, math.rad(-5 * math.cos(T / 60))) * LEFTSHOULDERC0, .25)
					RightHip.C0 = Qlerp(RightHip.C0, CFrame.new(1, -.9 - .1 * math.cos(T / 60), -0.01) * CFrame.Angles(0, math.rad(85), math.rad(5 * math.sin(T / 60))), .25)
					LeftHip.C0 = Qlerp(LeftHip.C0, CFrame.new(-1, -.9 - .1 * math.cos(T / 60), -0.01) * CFrame.Angles(0, math.rad(-85), math.rad(-5 * math.sin(T / 60))), .25)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					att.Parent = c["Torso"] --what ur welding on
					att.Position = Vector3.new(0,0,0.7) --pos
					att.Orientation = Vector3.new(0,0,0) --orient
					RootJoint.C0 = Qlerp(RootJoint.C0, ROOTC0 * CFrame.new(0, 0, .055 * math.sin(T / 5)) * CFrame.Angles(math.rad(15), 0, math.rad(5 * math.sin(T / 10))), .25)
					Neck.C0 = Qlerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-5), 0, math.rad(-5 * math.sin(T / 10))), .25)
					RightShoulder.C0 = Qlerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(25 * math.sin(T / 10)), 0, math.rad(5)) * RIGHTSHOULDERC0, .25)
					LeftShoulder.C0 = Qlerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-25 * math.sin(T / 10)), 0, math.rad(-5)) * LEFTSHOULDERC0, .25)
					RightHip.C0 = Qlerp(RightHip.C0, CFrame.new(1, -.8 - .25 * math.cos(T / 10), -.35 + .3 * math.sin(T / 10)) * CFrame.Angles(0, math.rad(90 - 5 * math.sin(T / 10)), math.rad(-45 * math.sin(T / 10))), .25)
					LeftHip.C0 = Qlerp(LeftHip.C0, CFrame.new(-1, -.8 + .25 * math.cos(T / 10), -.35 - .3 * math.sin(T / 10)) * CFrame.Angles(0, math.rad(-90 - 5 * math.sin(T / 10)), math.rad(-45 * math.sin(T / 10))), .25)
				end
			end
		elseif taunt.Value == "MaddoxLCv3_8" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0, rco * CFrame.new(0, 0, .5 * math.cos(T / 24)) * CFrame.Angles(math.rad(-14 * math.sin(T / 24)), 0, 0), .25)
					Neck.C0 = Clerp(Neck.C0, nco * CFrame.Angles(math.rad(3 * math.cos(T / 24)), 0, math.rad(5 * math.sin(T / 48))), .25)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(135 + 15 * math.sin(T / 24)), 0, math.rad(26)) * rsco, .25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, .5 + .3 * math.cos(T / 24), 0) * CFrame.Angles(math.rad(-14 * math.sin(T / 24)), 0, math.rad(-10 + 10 * math.sin(T / 24))) * lsco, .25)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -.5, -.5) * CFrame.Angles(math.rad(-10), math.rad(80), math.rad(5 + 15 * math.sin(T / 24))), .25)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, -.01) * CFrame.Angles(0, math.rad(-80), math.rad(-5 - 15 * math.sin(T / 24))), .25)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0, rco * CFrame.new(0, 0, .5 * math.cos(T / 24)) * CFrame.Angles(math.rad(45 - 5 * math.sin(T / 24)), 0, 0), .25)
					Neck.C0 = Clerp(Neck.C0, nco * CFrame.Angles(math.rad(-45 + 3 * math.sin(T / 24)), 0, math.rad(5 * math.sin(T / 48))), .25)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(-45 - 3 * math.sin(T / 24)), 0, 0) * rsco, .25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(-45 - 3 * math.sin(T / 24)), 0, 0) * lsco, .25)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, -.01) * CFrame.Angles(math.rad(-10), math.rad(80), math.rad(-15)), .25)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, -.01) * CFrame.Angles(0, math.rad(-80), math.rad(15)), .25)
				end
				Humanoid.HipHeight = 2
				att.Parent = c["Right Arm"]
				att.Position = Vector3.new(0, -1.5, -0.7)
				att.Orientation =  Vector3.new(-0, 90, -45)
			end
		elseif taunt.Value == "MaddoxLCv3_9" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0, rco * CFrame.new(0, 0, 0.5 * math.sin(T / 15)) * CFrame.Angles(math.rad(-15 * math.cos(T / 30)), math.rad(-15 * math.cos(T / 30)), 0), .25)
					Neck.C0 = Clerp(Neck.C0, nco * CFrame.Angles(math.rad(15 * math.sin(T / 30)), 0, math.rad(-15 * math.sin(T / 30))), .25)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, .5 - .125 * math.sin(T / 30), 0) * CFrame.Angles(math.rad(135 + -15 * math.cos(T / 30)), 0, math.rad(25 + 15 * math.cos(T / 30))) * rsco, .25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, .5 - .125 * math.cos(T / 30), 0) * CFrame.Angles(math.rad(15 * math.cos(T / 30)), math.rad(5), math.rad(-10 + 15 * math.cos(T / 30))) * lsco, .25)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -.5 + .25 * math.sin(T / 30), -.5) * CFrame.Angles(math.rad(-15), math.rad(80), math.rad(15 + 15 * math.sin(T / 30))), .25)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 + .25 * math.cos(T / 30), 0) * CFrame.Angles(0, math.rad(-80), math.rad(-10 - 10 * math.sin(T / 30))), .25)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0, rco * CFrame.new(0, 0, 0.5 * math.sin(T / 15)) * CFrame.Angles(math.rad(45), math.rad(0 - 2 * math.sin(T / 30)), 0), .25)
					Neck.C0 = Clerp(Neck.C0, nco * CFrame.new(0, 0, 0 + 1 - 1) * CFrame.Angles(math.rad(-45 + 3 * math.sin(T / 54 * 1.2)), math.rad(0 - 4 * math.sin(T / 30)), 0), .25)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-45), math.rad(-2), 0) * rsco, .25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-45), math.rad(2), 0) * lsco, .25)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -.5 + .1 * math.cos(T / 15), -.5) * CFrame.Angles(math.rad(-15 + 9 * math.cos(T / 15)), math.rad(80), 0) * CFrame.Angles(0, 0, 0), .25)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 + .1 * math.sin(T / 15), 0) * CFrame.Angles(math.rad(-15 + 9 * math.cos(T / 15)), math.rad(-80), 0) * CFrame.Angles(0, 0, 0), .25)
				end
				Humanoid.HipHeight = 2
				att.Parent = c["Right Arm"]
				att.Position = Vector3.new(0, -1.5, -0.7)
				att.Orientation =  Vector3.new(-0, 90, -45)
			end
		elseif taunt.Value == "MaddoxLCv3_10" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0, rco * CFrame.new(0, .5 * math.sin(T / 50), .5 * math.cos(T / 50)) * CFrame.Angles(math.rad(15 * math.cos(T / 50)), 0, 0), .25)
					Neck.C0 = Clerp(Neck.C0, nco * CFrame.Angles(math.rad(20 - 13 * math.cos(T / 50)), math.rad(5 * math.cos(T / 50)), 0), .25)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(.6, .4, -.8) * CFrame.Angles(math.rad(-10 + 2 * math.cos(T / 50)), 0, math.rad(-90)) * rsco, .25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-.6, .4, -.7) * CFrame.Angles(math.rad(5 * math.cos(T / 50)), 0, math.rad(90)) * lsco, .25)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -.5 + .1 * math.cos(T / 50), -.5) * CFrame.Angles(0, math.rad(80), 0) * CFrame.Angles(0, 0, math.rad(-3 + 15 * math.sin(T / 50))), .25)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -.9 + .1 * math.sin(T / 50), 0) * CFrame.Angles(0, math.rad(-80), 0) * CFrame.Angles(0, 0, math.rad(-3 - 15 * math.sin(T / 50))), .25)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0, rco * CFrame.new(0, 0, .5 * math.cos(T / 50)) * CFrame.Angles(math.rad(56), math.rad(2 * math.cos(T / 50)), 0), .25)
					Neck.C0 = Clerp(Neck.C0, nco * CFrame.new(0, -.25, 0) * CFrame.Angles(math.rad(-40), math.rad(5 * math.cos(T / 50)), 0), .25)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(-16), 0, math.rad(5 + 2 * math.cos(T / 19))) * rsco, .25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(-16), 0, math.rad(-5 - 2 * math.cos(T / 19))) * lsco, .25)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -.5, -.5) * CFrame.Angles(math.rad(-20 + 9 * math.cos(T / 74)), math.rad(80), 0) * CFrame.Angles(math.rad(5 * math.cos(T / 37)), 0, 0), .25)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(-20 - 9 * math.cos(T / 54)), math.rad(-80), 0) * CFrame.Angles(math.rad(-5 * math.cos(T / 41)), 0, 0), .25)
				end
				Humanoid.HipHeight = 2
				att.Parent = c["Torso"] --what ur welding on
				att.Position = Vector3.new(0,0,0.7) --pos
				att.Orientation = Vector3.new(0,0,0) --orient	
			end
		elseif taunt.Value == "MaddoxLCv3_11" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0, rco * CFrame.new(0, 0, .5 * math.sin(T / 15)) * CFrame.Angles(math.rad(7.5 * math.cos(T / 15)), 0, 0), .25)
					Neck.C0 = Clerp(Neck.C0, nco * CFrame.Angles(math.rad(15 + 5 * math.cos(T / 15)), math.rad(10 * math.cos(T / 15 * .5)), 0), .25)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, .5 - .25 * math.cos(T / 15), 0) * CFrame.Angles(0, 0, math.rad(15 - 17 * math.cos(T / 15))) * rsco, .25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, .5 - .25 * math.cos(T / 15), 0) * CFrame.Angles(0, 0, math.rad(-15 + 17 * math.cos(T / 15))) * lsco, .25)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -.5 + .1 * math.cos(T / 15), -.5) * CFrame.Angles(math.rad(-15), math.rad(80), 0) * CFrame.Angles(math.rad(-3 + 5 * math.cos(T / 15)), 0, 0), .25)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 + .05 * math.sin(T / 15), 0) * CFrame.Angles(0, math.rad(-80), 0) * CFrame.Angles(math.rad(-3 + 5 * math.cos(T / 15)), 0, 0), .25)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0, rco * CFrame.new(0, 0, .5 * math.sin(T / 15)) * CFrame.Angles(math.rad(56), 0, 0), .25)
					Neck.C0 = Clerp(Neck.C0, nco * CFrame.Angles(math.rad(-45 + 5 * math.cos(T / 15)), math.rad(10 * math.cos(T / 15 * .5)), 0), .25)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, .5 - .125 * math.cos(T / 15), 0) * CFrame.Angles(math.rad(-16), 0, math.rad(4 - 5 * math.cos(T / 15))) * rsco, .25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, .5 - .125 * math.cos(T / 15), 0) * CFrame.Angles(math.rad(-16), 0, math.rad(-4 + 5 * math.cos(T / 15))) * lsco, .25)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -.5 + .1 * math.cos(T / 15), -.5) * CFrame.Angles(math.rad(-15), math.rad(80), 0) * CFrame.Angles(math.rad(-3 + 5 * math.cos(T / 15)), 0, 0), .25)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 + .05 * math.sin(T / 15), 0) * CFrame.Angles(0, math.rad(-80), 0) * CFrame.Angles(math.rad(-3 + 5 * math.cos(T / 15)), 0, 0), .25)
				end
				Humanoid.HipHeight = 2
				att.Parent = c["Torso"] --what ur welding on
				att.Position = Vector3.new(0,0,0.7) --pos
				att.Orientation = Vector3.new(0,0,0) --orient	
			end
		elseif taunt.Value == "MaddoxLCv3_13" then
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0, rco * CFrame.new(0, -.25 * math.sin(T / 18), 1 * math.cos(T / 18)) * CFrame.Angles(math.rad(7.5 * math.cos(T / 18)), math.rad(7.5 * math.sin(T / 18 * .5)), 0), .25)
					Neck.C0 = Clerp(Neck.C0, nco * CFrame.Angles(math.rad(15 + 5 * math.sin(T / 18)), math.rad(5 * math.sin(T / 18 * .5)), 0), .25)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, .5 + .25 * math.sin(T / 18), 0) * CFrame.Angles(math.rad(170 - 1 * math.sin(T / 18)), 0, math.rad(0)) * rsco, .25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, .5 + .25 * math.cos(T / 18), 0) * CFrame.Angles(math.rad(-17 * math.sin(T / 18)), 0, math.rad(-15)) * lsco, .25)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -.5 - .1 * math.cos(T / 18), -.5) * CFrame.Angles(math.rad(5 - 25 * math.sin(T / 18)), math.rad(80), 0) * CFrame.Angles(math.rad(-3), 0, 0), .25)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1 - .05 * math.sin(T / 18), 0) * CFrame.Angles(math.rad(-25 * math.sin(T / 18)), math.rad(-80), 0) * CFrame.Angles(math.rad(-3), 0, 0), .25)
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0, rco * CFrame.new(0, 0, 1 * math.cos(T / 18)) * CFrame.Angles(math.rad(60), 0, math.rad(0 - 2 * math.sin(T / 18 * .5))), .25)
					Neck.C0 = Clerp(Neck.C0, nco * CFrame.new(0, 0, 0 + 1 - 1) * CFrame.Angles(math.rad(-60 + 3 * math.sin(T / 18 * .5)), math.rad(0 + 4 * math.sin(T / 18 * .5)), 0), .25)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(-30), math.rad(-2), 0) * rsco, .25)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(-30), math.rad(2), math.rad(-5 * math.sin(T / 18))) * lsco, .25)
					RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -.5, 0) * CFrame.Angles(math.rad(-15 - 9 * math.sin(T / 18)), math.rad(80), 0) * CFrame.Angles(math.rad(0 - 5 * math.sin(T / 18)), 0, 0), .25)
					LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -.5, -.5) * CFrame.Angles(math.rad(-15 - 9 * math.sin(T / 18)), math.rad(-80), 0) * CFrame.Angles(math.rad(0 - 5 * math.sin(T / 18)), 0, 0), .25)
				end
				Humanoid.HipHeight = 2
				att.Parent = c["Right Arm"]
				att.Position = Vector3.new(0, -1.5, -0.7)
				att.Orientation =  Vector3.new(-0, 90, -45)
			end
		elseif taunt.Value == "snakeskid" then
		walkspeed = 50
			att.Parent = c["Torso"] --what ur welding on
			att.Position = Vector3.new(0,0,0.7) --pos
			att.Orientation = Vector3.new(0,0,0) --orient	
			RootJoint.C1 = Clerp(RootJoint.C1,ROOTC0,.2/3)
			Neck.C1 = Clerp(Neck.C1,CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(-90),math.rad(0),math.rad(180)),.2/3)
			RightHip.C1 = Clerp(RightHip.C1,CFrame.new(.5,1,0,-4.37113918e-08,0,1,0,1,0,-1,0,-4.37113918e-08),1)
			LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(-.5,1,0,-4.37113918e-08,-0,-1,0,1,-0,1,0,-4.37113918e-08),1)
			RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
			LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			if not attack then
				if Torsovelocity < sensitivity then
					Anim = "Idle"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, 0+.15*SIN(sine/32)) * ANGLES(RAD(0), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(40), RAD(-10), RAD(0)), 0.15 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(10+5*SIN(sine/24))) * RIGHTSHOULDERC0, 0.15 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(0), RAD(0), RAD(-10-5*SIN(sine/24))) * LEFTSHOULDERC0, 0.15 / Animation_Speed)
					RightHip.C0 = Clerp(RightHip.C0, CF(1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1-.15*SIN(sine/32), 0) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(-8+2.5*SIN(sine/32)), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					snap = math.random(1,72)
					if snap == 1 then	
						Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(-100000-sound.PlaybackLoudness/7,100000+sound.PlaybackLoudness/7)), RAD(MRANDOM(-99999-sound.PlaybackLoudness/7,99999+sound.PlaybackLoudness/7)), RAD(MRANDOM(-200-sound.PlaybackLoudness/7,48375935+sound.PlaybackLoudness/7))), 1 / Animation_Speed) 
					end
				elseif Torsovelocity >= sensitivity then
					Anim = "Walk"
					RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(0, 0, -0.1) * ANGLES(RAD(5), RAD(0), RAD(0)), 0.15 / Animation_Speed)
					Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(MRANDOM(1, 2) - 2.5 * SIN(SINE / 12)), RAD(MRANDOM(1, 2)), RAD(MRANDOM(1, 2))), 1 / Animation_Speed)
					RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(35 * COS(SINE / WALKSPEEDVALUE)), RAD(0), RAD(5)) * RIGHTSHOULDERC0, 0.35 / Animation_Speed)
					LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0 - 0.2 * math.cos(sine / 12)) * CFrame.Angles(math.rad(20 + 45 * math.cos(sine / 12)), math.rad(0 - 10 * math.cos(sine / 12)), math.rad(0 + 2.5 * math.cos(sine / 12))) * lscp, 1 / 3)
					RightHip.C0 = Clerp(RightHip.C0, CF(1 , -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ 0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(-15)), 2 / Animation_Speed)
					LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -1 - 0.15 * COS(SINE / WALKSPEEDVALUE*2), -0.2+ -0.2 * COS(SINE / WALKSPEEDVALUE)) * ANGLES(RAD(0), RAD(-90), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(15)), 2 / Animation_Speed)
				end
			end
		else
			if attack == false then
			end
			if taunt.Value == "Fave" then
				att.Parent = c["Torso"] --what ur welding on
				att.Position = Vector3.new(0,0,0.7) --pos
				att.Orientation = Vector3.new(0,0,0) --orient
				RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0,0,0),1)
				Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(),1)
				RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,0.5,0) * rscp,1)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.3,0.7,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-135)) * lscp,1)
				RightHip.C0 = Clerp(RightHip.C0,CFrame.new(.5,-2,0),1)
				LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-.9,-1.9,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-25)),1)
				RightHip.C1 = Clerp(RightHip.C1,CFrame.new(),1)
				LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(),1)
			end
			if taunt.Value == "Krump" then
				att.Parent = c["Torso"] --what ur welding on
				att.Position = Vector3.new(0,0,0.7) --pos
				att.Orientation = Vector3.new(0,0,0) --orient
				RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0+1*math.sin(sine/3),0+1*math.cos(sine/3),-.75) * CFrame.Angles(math.rad(0),math.rad(-10),math.rad(0)),1)
				Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new(),1)
				RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(1.5,1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)) * rscp,1)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-1.5,1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90)) * lscp,1)
				RightHip.C0 = Clerp(RightHip.C0,CFrame.new(1.5,-1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(70)),1)
				LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-.5,-1.25,-.25) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(10)),1)
				RightHip.C1 = Clerp(RightHip.C1,CFrame.new(),1)
				LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(),1)
			elseif taunt.Value == "Memer" then
				att.Parent = c["Torso"] --what ur welding on
				att.Position = Vector3.new(0,0,0.7) --pos
				att.Orientation = Vector3.new(0,0,0) --orient
				RootJoint.C0 = Clerp(RootJoint.C0,rc0 * CFrame.new(0 , 0 , 0) * CFrame.Angles(math.rad(math.random(-9000,9000)), math.rad(math.random(-9000,9000)), math.rad(math.random(-9000,9000))),1)
				Neck.C0 = Clerp(Neck.C0,nc0 * CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(90)) * rscp,1)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-90)) * lscp,1)
				RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, -0.01) * CFrame.Angles(math.rad(0), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),1)
				LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-1, -1, -0.01) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),1)
				RightHip.C1 = Clerp(RightHip.C1,CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
				LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new() * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),1)
			elseif taunt.Value == "Smog" then
				att.Parent = c["Torso"] --what ur welding on
				att.Position = Vector3.new(0,0,0.7) --pos
				att.Orientation = Vector3.new(0,0,0) --orient
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) * CFrame.new(-0.699999988079071 + -0.25 * math.cos(T / 12.5), 0.5 + 0.20000000298023224 * math.cos(T / 6.25), 0 + 0 * math.cos(T / 12.5)) * CFrame.Angles(math.rad(-25 + -90 * math.cos(T / 12.5)), math.rad(0 + -25 * math.cos(T / 12.5)), math.rad(-145 + -35 * math.cos(T / 12.5))), 0.2)
				RootJoint.C0 = Clerp(RootJoint.C0, CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0) * CFrame.new(0 + 0 * math.cos(T / 12.5), 0 + 0 * math.cos(T / 12.5), -0.5 + -0.5 * math.cos(T / 6.25)) * CFrame.Angles(math.rad(0 + 0 * math.cos(T / 12.5)), math.rad(0 + -9 * math.cos(T / 12.5)), math.rad(0 + 0 * math.cos(T / 12.5))), 0.2)
				LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) * CFrame.new(-0.5 + 0 * math.cos(T / 12.5), 0.5 + 0.5 * math.cos(T / 6.25), 0 + 0 * math.cos(T / 12.5)) * CFrame.Angles(math.rad(-9 + 15 * math.cos(T / 12.5)), math.rad(15 + 0 * math.cos(T / 6.25)), math.rad(9 + 0 * math.cos(T / 12.5))), 0.2)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0) * CFrame.new(0.699999988079071 + -0.25 * math.cos(T / 12.5), 0.5 + 0.20000000298023224 * math.cos(T / 6.25), 0 + 0 * math.cos(T / 12.5)) * CFrame.Angles(math.rad(-7.5 + 90 * math.cos(T / 12.5)), math.rad(0 + -25 * math.cos(T / 12.5)), math.rad(145 + -35 * math.cos(T / 12.5))), 0.2)
				RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0) * CFrame.new(0.5 + 0 * math.cos(T / 12.5), 0.5 + 0.5 * math.cos(T / 6.25), 0 + 0 * math.cos(T / 12.5)) * CFrame.Angles(math.rad(-9 + -15 * math.cos(T / 12.5)), math.rad(-15 + 0 * math.cos(T / 6.25)), math.rad(-9 + 0 * math.cos(T / 12.5))), 0.2)
				Neck.C0 = Clerp(Neck.C0, CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0) * CFrame.new(0 + 0 * math.cos(T / 12.5), 0 + 0 * math.cos(T / 12.5), 0 + 0 * math.cos(T / 12.5)) * CFrame.Angles(math.rad(-25 + 15 * math.cos(T / 6.25)), math.rad(0 + -25 * math.cos(T / 12.5)), math.rad(0 + 0 * math.cos(T / 12.5))), 0.2)
			elseif taunt.Value == "Sit" then
				att.Parent = c["Torso"] --what ur welding on
				att.Position = Vector3.new(0,0,0.7) --pos
				att.Orientation = Vector3.new(0,0,0) --orient
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CFrame.new(0, 0, -1.70) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)),0.5)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.5)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CFrame.new(1.5, 0.3, 0.10) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)) * RIGHTSHOULDERC0,0.5)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CFrame.new(-1.5, 0.3, 0.10) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)) * LEFTSHOULDERC0,0.15)
				RightHip.C0 = Clerp(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(math.rad(45), math.rad(90), math.rad(0)) * CFrame.Angles(math.rad(-8), math.rad(0), math.rad(0)),0.5)
				LeftHip.C0 = Clerp(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(math.rad(45), math.rad(-90), math.rad(0)) * CFrame.Angles(math.rad(-8), math.rad(0), math.rad(0)),0.5)
			elseif taunt.Value == "nulled" then	
				att.Parent = c["Torso"] --what ur welding on
				att.Position = Vector3.new(0,0,0.7) --pos
				att.Orientation = Vector3.new(0,0,0) --orient		
				change = 1
				LOOPx = LOOPx + 5
				RootJoint.C0 = Clerp(RootJoint.C0,ROOTC0 * CF(-0.25 * COS(LOOPx / 50), 0, -0.5 - 0.5 * COS(LOOPx / 25)) * ANGLES(RAD(0), RAD(0), RAD(45 * SIN(LOOPx / 50))) * ANGLES(RAD(45 + 22.5 * COS(LOOPx / 25)), RAD(0), RAD(0)), 2 / Animation_Speed)
				Neck.C0 = Clerp(Neck.C0, NECKC0 * CF(0, 0, 0 + ((1) - 1)) * ANGLES(RAD(-45 - 22.5 * COS(LOOPx / 25)), RAD(0), RAD(-45 * SIN(LOOPx / 50))), 2 / Animation_Speed)
				RightShoulder.C0 = Clerp(RightShoulder.C0, CF(1.5, 0.5, 0) * ANGLES(RAD(175+65 * SIN(LOOPx / 25)), RAD(0), RAD(-45 * SIN(LOOPx / 12.5))) * CF(0,-0.5,0) * RIGHTSHOULDERC0, 1 / Animation_Speed)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0, CF(-1.5, 0.5, 0) * ANGLES(RAD(175+65 * SIN(LOOPx / 25)), RAD(0), RAD(45 * SIN(LOOPx / 12.5))) * CF(0,-0.5,0) * LEFTSHOULDERC0, 1 / Animation_Speed)
				RightHip.C0 = Clerp(RightHip.C0, CF(1, -0.5 + 0.5 * COS(LOOPx / 25), -0.5 - 0.5 * COS(LOOPx / 25)) * ANGLES(RAD(0), RAD(70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
				LeftHip.C0 = Clerp(LeftHip.C0, CF(-1, -0.5 + 0.5 * COS(LOOPx / 25), -0.5 - 0.5 * COS(LOOPx / 25)) * ANGLES(RAD(0), RAD(-70), RAD(0)) * ANGLES(RAD(0), RAD(0), RAD(0)), 2 / Animation_Speed)
			elseif taunt.Value == "OOOOO" then
				att.Parent = c["Torso"] --what ur welding on
				att.Position = Vector3.new(0,0,0.7) --pos
				att.Orientation = Vector3.new(0,0,0) --orient
				RootJoint.C0 = Clerp(RootJoint.C0,rc0*CFrame.new(math.random(-1,1)/2,math.random(-1,1)/2,math.random(-1,1)/2)*CFrame.Angles(math.rad(math.random(-45,45)),math.rad(math.random(-45,45)),0),1)
				Neck.C0 = Clerp(Neck.C0,nc0,1)
				RightShoulder.C0 = Clerp(RightShoulder.C0,CFrame.new(2,0,0) * rscp * CFrame.Angles(math.rad(-90),0,0),1)
				LeftShoulder.C0 = Clerp(LeftShoulder.C0,CFrame.new(-2,0,0) * lscp * CFrame.Angles(math.rad(-90),0,0),1)
				RightHip.C0 = Clerp(RightHip.C0,CFrame.new(.5,-2,0),1)
				LeftHip.C0 = Clerp(LeftHip.C0,CFrame.new(-.5,-2,0),1)
				RightHip.C1 = Clerp(RightHip.C1,CFrame.new(),1)
				LeftHip.C1 = Clerp(LeftHip.C1,CFrame.new(),1)
				RightShoulder.C1 = Clerp(RightShoulder.C1,CFrame.new(-.5,.5,0,0,0,1,0,1,-0,-1,0,0),1)
				LeftShoulder.C1 = Clerp(LeftShoulder.C1,CFrame.new(.5,.499975681,0,0,0,-1,0,1,0,1,0,0),1)
			end
		end
	end
	swait()
end
