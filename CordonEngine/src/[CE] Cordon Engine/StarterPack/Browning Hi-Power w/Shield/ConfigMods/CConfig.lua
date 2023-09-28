--// Services
local ts = game:GetService("TweenService")

local module = {
	
	--// Positioning
		RightArmPos = CFrame.new(-1.39188492, 1.23657894, -1.07592201, 1, 0, 0, 0, 1.19248806e-08, 1, 0, -1, 1.19248806e-08);
		LeftArmPos = CFrame.new(1.02509487, -0.745255351, -1.24241686, -4.37113883e-08, 1.19248806e-08, 1, -1, -5.21253064e-16, -4.37113883e-08, 0, -0.99999994, 1.19248798e-08);
		GunPos = CFrame.new(0.204508483, -0.422405183, 1.2574358, 0.99999994, 0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08);
		SprintPos = CFrame.new();
		ShieldPos = CFrame.new(-1.08879256, 0, -0.0457468331, -4.37113847e-08, -1, 4.37113883e-08, 0, -4.37113847e-08, -0.99999994, 0.99999994, -4.37113883e-08, 1.91068547e-15);
	
	--// Fake Arm Positioning
		FakeRightPos = CFrame.new(-0.947661817, 1.14884949, -1.26904488, 1, 0, 0, 0, 1.19248806e-08, 1, 0, -1, 1.19248806e-08);
		FakeLeftPos = CFrame.new(1.05718744, 1.83566964, -1.67744327, 0.820266843, -0.0301536806, 0.571185529, -0.56725347, -0.171009913, 0.805592358, 0.0733867958, -0.984807789, -0.157378539);
		FakeGripPos = CFrame.new(0.157520294, -0.226234198, 0.751968384, 1, 0, 0, 0, 1.19248806e-08, -1, 0, 1, 1.19248806e-08);
		
	--// Ready Positions
		ReadyHighPos = CFrame.new(0.800000012, -3, 0, 1, 1.03739011e-23, 0, -3.54808257e-24, 0.342020094, -0.939692616, -9.74827843e-24, 0.939692616, 0.342020094);
		ReadyLowPos = CFrame.new(-0.249832153, 0.301519841, 0, 0.969846249, -0.220088065, 0.104687028, 0.173648179, 0.925416529, 0.336824059, -0.171010062, -0.308488846, 0.935729682);
		
	--// Ammo Config
		Ammo = 15;
		StoredAmmo = 15;
		MagCount = math.huge;
		ExplosiveAmmo = 3;
		
	--// Round Types
		RoundType = "9x19mm";
		
	--// Damage Config
		BaseDamage = 35;
		LimbDamage = 25;
		ArmorDamage = 20;
		HeadDamage = 105;
		EShieldDamage = 10;
		
	-- Recoil Config
		gunRecoilMin = 25; -- How much the gun recoils backwards when not aiming
		gunRecoilMax = 50; -- How much the gun recoils backwards when not aiming
		
		AimGunRecoilMin = 7.5; -- How much the gun recoils backwards when aiming
		AimGunRecoilMax = 15; -- How much the gun recoils backwards when aiming
		
		KickbackMin = 3; -- Upward gun rotation when not aiming
		KickbackMax = 4; -- Upward gun rotation when not aiming
		
		AimKickbackMin = 2; -- Upward gun rotation when aiming
		AimKickbackMax = 3; -- Upward gun rotation when aiming
		
		SideKickMin = -3.5;
		SideKickMax = 3.5;
		
		AimSideKickMin = -2.5;
		AimSideKickMax = 2.5;
		
		CamShakeMin = 5;
		CamShakeMax = 6;
		
		AimCanShakeMin = 3;
		AimCamShakeMax = 4;
	
	--// Handling
		Firerate = 60 / 900; -- 60 = 1 Minute, 700 = Rounds per that 60 seconds. DO NOT TOUCH THE 60!
	
		FireMode = 1; -- 1 = Semi, 2 = Auto, 3 = Burst, 4 = Bolt Action, 5 = Shot, 6 = Explosive
		
	--// Firemode Config
		CanSelectFire = false;
		BurstEnabled = false;
		SemiEnabled = true;
		AutoEnabled = false;
		BoltAction = false;
		ShotEnabled = false;
		RPGEnabled = false;
		ExplosiveEnabled = false;
		
	--// Shot & Burst Config
		BurstNum = 3; -- How many bullets per burst
		ShotNum = 5; -- How many bullets per shot
		
	--// Aim Config
		AimZoom = 70;
		AltAimZoom = 50;
		AimZoomSpeed = 0.5;
		AimSpeedMult = 14;
		
	--// Mouse Config
		MouseSensitivity = 0.5; -- Number between 0.1 and 1
		SensitivityIncrement = 0.05; -- No touchy
		
	-- Tracer Config
		TracerTransparency = 0.3;
		TracerLightEmission = 1;
		TracerTextureLength = 1;
		TracerLifetime = 0.12;
		TracerFaceCamera = true;
		TracerColor = BrickColor.new("Deep orange");
		
	--// Bullet Physics
		BulletPhysics = Vector3.new(0,55,0); -- Drop fixation: Lower number = more drop
		BulletSpeed = 2000; -- Bullet Speed
		BulletSpread = 0; -- How much spread the bullet has
		
		ExploPhysics = Vector3.new(0,20,0); -- Drop for explosive rounds
		ExploSpeed = 600; -- Speed for explosive rounds
		
		BulletHopUpMult = 0.008; -- Hop up mutliplier
		
	--// Calculations
		TracerChance = 100;
		
	--// Cosmetic
		AntiTK = false;
		MouseSense = 0.5;
		
		CanAim = true;
		CanBolt = true;
		CanSlideLock = true;
		CanAutoBolt = true;
		
		LaserAttached = true;
		LightAttached = true;
		TracerEnabled = true;
		
		SprintWalkIntensity = 0.18;
		SprintWalkAnimSpeed = 15;
		
	--// Explosive Settings
		BlastPressue = 500000;
		BlastRadius = 10;
		DestroyJointRadius = 10;
		ExplosionType = Enum.ExplosionType.NoCraters; -- Might wanna leave it like this
		
	--// Laser Config
		LaserColor = BrickColor.new("Lime green");
		LaserEmission = 1;
		LaserInfluence = 0;
		LaserTransparency = NumberSequence.new(0.3);
		
	--// Extras
		RestMode = false;
		AttachmentsEnabled = false;
		UIScope = false;
		
	--// Keybindings
		ADSKeybind = Enum.UserInputType.MouseButton2;
		AltADSKey = Enum.KeyCode.Z;
		ShootKeybind = Enum.UserInputType.MouseButton1;
		SprintKey = Enum.KeyCode.LeftShift;
		CycleSightKey = Enum.KeyCode.T;
		FireSelectKey = Enum.KeyCode.V;
		ReloadKey = Enum.KeyCode.R;
		PatrolKey = Enum.KeyCode.P;
		LaserKey = Enum.KeyCode.L;
		LightKey = Enum.KeyCode.K;
		BoltKey = Enum.KeyCode.F;
		
	--// Animations
		IdleAnim = function(char, speed, objs, armData)
			if not armData[1] then
				ts:Create(objs[2],TweenInfo.new(0.25),{C1 = require(script).RightArmPos}):Play() -- require(script).FakeRightPos (For fake arms) | require(script).RightArmPos (For real arms)
				ts:Create(objs[3],TweenInfo.new(0.25),{C1 = require(script).LeftArmPos}):Play() -- require(script).FakeLeftPos (For fake arms) | require(script).LeftArmPos (For real arms)
				wait(0.18)
			else
				ts:Create(objs[2],TweenInfo.new(0.25),{C1 = armData[2][1]}):Play() -- require(script).FakeRightPos (For fake arms) | require(script).RightArmPos (For real arms)
				ts:Create(objs[3],TweenInfo.new(0.25),{C1 = armData[2][2]}):Play() -- require(script).FakeLeftPos (For fake arms) | require(script).LeftArmPos (For real arms)
				wait(0.18)
			end
		end;
		
		FireModeAnim = function(char, speed, objs)
			ts:Create(objs[1],TweenInfo.new(0.25),{C1 = CFrame.new(0.340285569, 0, -0.0787199363, 0.962304771, 0.271973342, 0, -0.261981696, 0.926952124, -0.268561482, -0.0730415657, 0.258437991, 0.963262498)}):Play()
			wait(0.1)
			ts:Create(objs[2],TweenInfo.new(0.25),{C1 = CFrame.new(0.67163527, -0.310947895, -1.34432662, 0.766044378, -2.80971371e-008, 0.642787576, -0.620885074, -0.258818865, 0.739942133, 0.166365519, -0.965925872, -0.198266774)}):Play()
			wait(0.25)
			objs[4]:WaitForChild("Click"):Play()		
		end;
		
		ReloadAnim = function(char, speed, objs)
			ts:Create(objs[2],TweenInfo.new(0.5),{C1 = CFrame.new(-0.902175903, 0.295501232, -1.07592201, 0.973990917, -0.226587087, 2.70202394e-09, -0.0646390691, -0.277852833, 0.958446443, -0.217171595, -0.933518112, -0.285272509)}):Play()
			ts:Create(objs[3],TweenInfo.new(0.5),{C1 = CFrame.new(0.511569798, -0.0621779114, -1.63076854, 0.787567914, -0.220087856, 0.575584888, -0.615963876, -0.308488727, 0.724860668, 0.0180283934, -0.925416589, -0.378522098)}):Play()
			wait(0.5)		
			
			local MagC = objs[4]:clone()
			MagC:FindFirstChild("Mag"):Destroy()
			MagC.Parent = objs[10]
			MagC.Name = "MagC"
			local MagCW = Instance.new("Motor6D")
			MagCW.Part0 = MagC
			MagCW.Part1 = objs[5]
			MagCW.Parent = MagC
			MagCW.C1 = MagC.CFrame:toObjectSpace(objs[4].CFrame)
			objs[4].Transparency = 1
			
			objs[6]:WaitForChild("MagOut"):Play()		
			
			ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(0.511569798, -0.0621778965, -2.69811869, 0.787567914, -0.220087856, 0.575584888, -0.51537323, 0.276813388, 0.811026871, -0.337826759, -0.935379863, 0.104581922)}):Play()
			ts:Create(objs[2],TweenInfo.new(0.1),{C1 = CFrame.new(-0.902175903, 0.295501232, -1.29060709, 0.973990917, -0.226587087, 2.70202394e-09, -0.0646390691, -0.277852833, 0.958446443, -0.217171595, -0.933518112, -0.285272509)}):Play()
			wait(0.1)
			ts:Create(objs[2],TweenInfo.new(0.3),{C1 = CFrame.new(-0.902175903, 0.295501232, -1.07592201, 0.973990917, -0.226587087, 2.70202394e-09, -0.0646390691, -0.277852833, 0.958446443, -0.217171595, -0.933518112, -0.285272509)}):Play()
			wait(0.3)
			objs[6]:WaitForChild("MagIn"):Play()
			ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(0.511569798, -0.0621779114, -1.63076854, 0.787567914, -0.220087856, 0.575584888, -0.615963876, -0.308488727, 0.724860668, 0.0180283934, -0.925416589, -0.378522098)}):Play()
			wait(0.4)
			MagC:Destroy()
			objs[4].Transparency = 0
			if objs[7].C1 ~= CFrame.new() then
				ts:Create(objs[2],TweenInfo.new(0.3),{C1 = CFrame.new(-0.902175903, 0.295501232, -1.07592201, 0.98480773, -0.171010077, -0.0301536508, 0, -0.173647955, 0.984807789, -0.173648179, -0.969846308, -0.171009853)}):Play()
				wait(0.3)
				objs[7].Parent:WaitForChild("BoltForward"):Play()
				ts:Create(objs[7],TweenInfo.new(0.03),{C1 = CFrame.new()}):Play()
				ts:Create(objs[2],TweenInfo.new(0.1),{C1 = CFrame.new(-0.902175903, 0.395501226, -1.07592201, 0.98480773, -0.171010077, -0.0301536508, 0, -0.173647955, 0.984807789, -0.173648179, -0.969846308, -0.171009853)}):Play()
				wait(0.15)
			end
		end;
	
		BoltBackAnim = function(char, speed, objs)
			ts:Create(objs[3],TweenInfo.new(0.25),{C1 = CFrame.new(-0.545864582, 0.107121736, -1.54817235, 1, 0, 0, 0, -0.57357657, 0.819151938, 0, -0.819151938, -0.57357657)}):Play()
			wait(0.1)
			ts:Create(objs[2],TweenInfo.new(0.25),{C1 = CFrame.new(-0.888827562, -0.51987344, -1.24565327, 0.243073002, -0.829167843, -0.50338465, -0.69982928, -0.509251773, 0.500900328, -0.671680093, 0.230527997, -0.704061508)}):Play()
			wait(0.4)
			objs[5]:WaitForChild("BoltBack"):Play()
			ts:Create(objs[2],TweenInfo.new(0.25),{C1 = CFrame.new(-1.01168203, -0.793034732, -0.93986088, 0.243073002, -0.829167843, -0.50338465, -0.69982928, -0.509251773, 0.500900328, -0.671680093, 0.230527997, -0.704061508)}):Play()
			ts:Create(objs[1],TweenInfo.new(0.25),{C1 = CFrame.new(0, 0, 0.163194418, 1, 0, 0, 0, 1, 0, 0, 0, 1)}):Play()
			ts:Create(objs[3],TweenInfo.new(0.25),{C1 = CFrame.new(-0.545864582, -0.139682382, -1.54817235, 1, 0, 0, 0, -0.57357657, 0.819151938, 0, -0.819151938, -0.57357657)}):Play()
			wait(0.3)
		end;
		
		BoltForwardAnim = function(char, speed, objs)
			objs[5]:WaitForChild("BoltForward"):Play()
			ts:Create(objs[1],TweenInfo.new(0.1),{C1 = CFrame.new()}):Play()
			ts:Create(objs[2],TweenInfo.new(0.1),{C1 = CFrame.new(-1.01168203, -1.67752218, -0.93986088, 0.243073002, -0.829167843, -0.50338465, -0.69982928, -0.509251773, 0.500900328, -0.671680093, 0.230527997, -0.704061508)}):Play()
			ts:Create(objs[3],TweenInfo.new(0.2),{C1 = CFrame.new(-0.545864582, 0.162408859, -1.54817235, 1, 0, 0, 0, -0.57357657, 0.819151938, 0, -0.819151938, -0.57357657)}):Play()
			wait(0.2)
		end;
		
		BoltingBackAnim = function(char, speed, objs)
			ts:Create(objs[1],TweenInfo.new(0.1),{C1 = CFrame.new(0, 0, 0.247189522, 1, 0, 0, 0, 1, 0, 0, 0, 1)}):Play()
		end;
		
		BoltingForwardAnim = function(char, speed, objs)
			ts:Create(objs[1],TweenInfo.new(0.1),{C1 = CFrame.new()}):Play()
		end;
		
		nadeReload = function(char, speed, objs)
			ts:Create(objs[1], TweenInfo.new(0.6), {C1 = CFrame.new(-0.902175903, -1.15645337, -1.32277012, 0.984807789, -0.163175702, -0.0593911409, 0, -0.342020363, 0.939692557, -0.17364797, -0.925416529, -0.336824328)}):Play()
			ts:Create(objs[2], TweenInfo.new(0.6), {C1 = CFrame.new(0.805950999, 0.654529691, -1.92835355, 0.787567914, -0.220087856, 0.575584888, -0.323594928, 0.647189975, 0.690240026, -0.524426222, -0.72986728, 0.438486755)}):Play()
			wait(0.6)
			ts:Create(objs[2], TweenInfo.new(0.6), {C1 = CFrame.new(0.805950999, 0.559619546, -1.73060048, 0.802135408, -0.348581612, 0.484839559, -0.597102284, -0.477574915, 0.644508123, 0.00688350201, -0.806481719, -0.59121877)}):Play()
			wait(0.6)		
		end;
	
		aimAnim = function(char,speed,objs)
			ts:Create(objs[3], TweenInfo.new(0.3), {C1 = CFrame.new(2.0274179, -1.75665474, -1.23571336, -4.37113883e-08, 1.19248806e-08, 1, -0.707106471, -0.707106948, -2.2476442e-08, 0.707106948, -0.707106411, 3.93407902e-08)}):Play()
		end;
		
		unaimAnim = function(char,speed,objs)
			ts:Create(objs[3], TweenInfo.new(0.3), {C1 = require(script).LeftArmPos}):Play()
		end;
		
		sprintAnim = function(char,speed,objs)
			ts:Create(objs[2], TweenInfo.new(0.3), {C1 = CFrame.new(-0.752569079, -1.76127887, -1.36318338, 1, 0, 0, 0, -1, 1.49011612e-07, 0, -1.49011612e-07, -1)}):Play()
			ts:Create(objs[3], TweenInfo.new(0.3), {C1 = CFrame.new(1.3207469, -0.745255351, -1.24241686, -4.37113883e-08, 1.19248806e-08, 1, -1, -5.21253064e-16, -4.37113883e-08, 0, -0.99999994, 1.19248798e-08)}):Play()
		end;
		
		unsprintAnim = function(char,speed,objs)
			ts:Create(objs[2], TweenInfo.new(0.3), {C1 = require(script).RightArmPos}):Play()
			ts:Create(objs[3], TweenInfo.new(0.3), {C1 = require(script).LeftArmPos}):Play()
		end
	
	}

return module