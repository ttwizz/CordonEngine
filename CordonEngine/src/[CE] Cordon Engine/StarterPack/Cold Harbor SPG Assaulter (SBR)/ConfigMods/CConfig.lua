--// Services
local ts = game:GetService("TweenService")

local module = {
	
	--// Positioning
		RightArmPos = CFrame.new(-0.833141267, 0.712866187, -1.55439997, 0.99999994, 0, 0, 0, -4.37113883e-08, 1, 0, -1, -4.37113883e-08);
		LeftArmPos = CFrame.new(1.05448234, 1.38951778, -2.68849277, 0.875340223, -0.16773127, 0.453481704, -0.483504236, -0.30026567, 0.822231114, -0.00174888968, -0.938992321, -0.343933403);
		GunPos = CFrame.new(0.204508483, -0.422405183, 1.2574358, 0.99999994, 0, 0, 0, -4.37113883e-08, -1, 0, 1, -4.37113883e-08);
		SprintPos = CFrame.new(0, 0, 0, 0.748408914, -0.36141631, 0.556113422, 0.252163291, 0.930573106, 0.265419006, -0.613430977, -0.05841057, 0.787585199);
	
	--// Fake Arm Positioning
		FakeRightPos = CFrame.new(-0.947661817, 1.14884949, -1.26904488, 1, 0, 0, 0, 1.19248806e-08, 1, 0, -1, 1.19248806e-08);
		FakeLeftPos = CFrame.new(1.05718744, 1.83566964, -1.67744327, 0.820266843, -0.0301536806, 0.571185529, -0.56725347, -0.171009913, 0.805592358, 0.0733867958, -0.984807789, -0.157378539);
		FakeGripPos = CFrame.new(0.157520294, -0.226234198, 0.751968384, 1, 0, 0, 0, 1.19248806e-08, -1, 0, 1, 1.19248806e-08);
		
	--// Ready Positions
		ReadyHighPos = CFrame.new(0.800000012, -3, 0, 1, 1.03739011e-23, 0, -3.54808257e-24, 0.342020094, -0.939692616, -9.74827843e-24, 0.939692616, 0.342020094);
		ReadyLowPos = CFrame.new(-0.249832153, 0.301519841, 0, 0.969846249, -0.220088065, 0.104687028, 0.173648179, 0.925416529, 0.336824059, -0.171010062, -0.308488846, 0.935729682);
		
	--// GL Positions
		GLLeftPos = CFrame.new(0.781048477, 0.828451991, -2.52641916, 0.875340223, -0.16773127, 0.453481704, -0.483504236, -0.30026567, 0.822231114, -0.00174888968, -0.938992321, -0.343933403);
		
	--// Ammo Config
		Ammo = 30;
		StoredAmmo = 30;
		MagCount = 2;
		ExplosiveAmmo = 3;
		
	--// Round Types
		RoundType = "5.56x45mm";
		
	--// Damage Config
		BaseDamage = 38;
		LimbDamage = 32;
		ArmorDamage = 15;
		HeadDamage = 100;
		EShieldDamage = 10;
		
	-- Recoil Config
		gunRecoilMin = 25; -- How much the gun recoils backwards when not aiming
		gunRecoilMax = 50; -- How much the gun recoils backwards when not aiming
		
		AimGunRecoilMin = 7.5; -- How much the gun recoils backwards when aiming
		AimGunRecoilMax = 15; -- How much the gun recoils backwards when aiming
		
		KickbackMin = 6; -- Upward gun rotation when not aiming
		KickbackMax = 8; -- Upward gun rotation when not aiming
		
		AimKickbackMin = 3; -- Upward gun rotation when aiming
		AimKickbackMax = 5; -- Upward gun rotation when aiming
		
		SideKickMin = -3.5;
		SideKickMax = 3.5;
		
		AimSideKickMin = -2.5;
		AimSideKickMax = 2.5;
		
		CamShakeMin = 5;
		CamShakeMax = 6;
		
		AimCanShakeMin = 3;
		AimCamShakeMax = 4;
	
	--// Handling
		Firerate = 60 / 720; -- 60 = 1 Minute, 700 = Rounds per that 60 seconds. DO NOT TOUCH THE 60!
	
		FireMode = 1; -- 1 = Semi, 2 = Auto, 3 = Burst, 4 = Bolt Action, 5 = Shot, 6 = RPG
		
	--// Firemode Config
		CanSelectFire = true;
		BurstEnabled = false;
		SemiEnabled = true;
		AutoEnabled = true;
		BoltAction = false;
		ShotEnabled = false;
		RPGEnabled = false;
		ExplosiveEnabled = false;
		
	--// Shot & Burst Config
		BurstNum = 3; -- How many bullets per burst
		ShotNum = 5; -- How many bullets per shot
		
	--// Aim Config
		AimZoom = 60;
		AltAimZoom = 40;
		AimZoomSpeed = 0.5;
		AimSpeedMult = 10;
		
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
		
		BulletHopUpMult = 0.005; -- Hop up mutliplier
		
	--// Calculations
		TracerChance = 60;
		
	--// Cosmetic
		AntiTK = true;
		MouseSense = 0.5;
		
		CanAim = true;
		CanBolt = false;
		CanSlideLock = false;
		CanAutoBolt = false;
		
		LaserAttached = true;
		LightAttached = true;
		TracerEnabled = true;
		
		SprintWalkIntensity = 0.18;
		SprintWalkAnimSpeed = 15;
		
	--// Explosive Settings
		BlastPressue = 500000;
		BlastRadius = 10;
		DestroyJointRadius = 0; -- This destroys vehicles. Set to zero if you want it to not destroy vehicles but damage players
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
				ts:Create(objs[2],TweenInfo.new(0.25),{C1 = require(script).armData[2]}):Play() -- require(script).FakeRightPos (For fake arms) | require(script).RightArmPos (For real arms)
				ts:Create(objs[3],TweenInfo.new(0.25),{C1 = require(script).armData[3]}):Play() -- require(script).FakeLeftPos (For fake arms) | require(script).LeftArmPos (For real arms)
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
			ts:Create(objs[2],TweenInfo.new(0.5),{C1 = CFrame.new(-1.83314121, 0.112866193, -0.954399943, 0.758022368, -0.558526218, -0.336824089, 0.157115281, -0.344846308, 0.925416529, -0.633021891, -0.75440675, -0.173648208)}):Play()
			ts:Create(objs[3],TweenInfo.new(0.5),{C1 = CFrame.new(-0.570892751, 0.765644431, -2.10391617, 0.545084536, -0.836516321, 0.0558858961, -0.482962906, -0.258818835, 0.836516321, -0.685295284, -0.482962966, -0.545084476)}):Play()
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
			
			ts:Create(objs[3],TweenInfo.new(0.4),{C1 = CFrame.new(-0.970892727, 0.365644425, -3.30391622, 0.545084536, -0.836516321, 0.0558858961, -0.482962906, -0.258818835, 0.836516321, -0.685295284, -0.482962966, -0.545084476)}):Play()
			ts:Create(objs[2],TweenInfo.new(0.13),{C1 = CFrame.new(-1.83314121, 0.112866193, -1.15439999, 0.758022368, -0.558526218, -0.336824089, 0.157115281, -0.344846308, 0.925416529, -0.633021891, -0.75440675, -0.173648208)}):Play()
			wait(0.1)
			ts:Create(objs[2],TweenInfo.new(0.4),{C1 = CFrame.new(-1.83314121, 0.112866193, -0.954399943, 0.758022368, -0.558526218, -0.336824089, 0.157115281, -0.344846308, 0.925416529, -0.633021891, -0.75440675, -0.173648208)}):Play()
			ts:Create(objs[3],TweenInfo.new(0.5),{C1 = CFrame.new(-2.63354445, 0.365644455, -0.92290014, -0.0482801795, -0.826441228, 0.560948968, 0.376857162, 0.505025029, 0.776484549, -0.925012231, 0.248886406, 0.287067622)}):Play()
			wait(0.55)
			ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(-1.98033559, 0.365644455, -1.12859631, -0.281058222, -0.892398655, -0.353031129, -0.101086289, -0.338284373, 0.935598731, -0.954351902, 0.298644274, 0.00486823916)}):Play()
			wait(0.22)
			ts:Create(objs[3],TweenInfo.new(0.3),{C1 = CFrame.new(-0.970892727, 0.365644425, -3.30391622, 0.545084536, -0.836516321, 0.0558858961, -0.482962906, -0.258818835, 0.836516321, -0.685295284, -0.482962966, -0.545084476)}):Play()
			wait(0.22)
			objs[6]:WaitForChild("MagIn"):Play()
			ts:Create(objs[3],TweenInfo.new(0.2),{C1 = CFrame.new(-0.570892751, 0.765644431, -2.10391617, 0.545084536, -0.836516321, 0.0558858961, -0.482962906, -0.258818835, 0.836516321, -0.685295284, -0.482962966, -0.545084476)}):Play()
			wait(0.16)
			ts:Create(objs[2],TweenInfo.new(0.13),{C1 = CFrame.new(-1.83314121, 0.112866186, -0.954399943, 0.758022368, -0.558526218, -0.336824089, 0.0448053852, -0.470608532, 0.881203771, -0.650687635, -0.683063805, -0.331706822)}):Play()
			ts:Create(objs[3],TweenInfo.new(0.13),{C1 = CFrame.new(-0.543338716, 0.753075361, -2.10391617, 0.491499543, -0.870869577, -0.00377259403, -0.594625771, -0.338752329, 0.729154944, -0.63627702, -0.356136084, -0.684338093)}):Play()
			wait(0.13)
			MagC:Destroy()
			objs[4].Transparency = 0
		end;
	
		BoltBackAnim = function(char, speed, objs)
			ts:Create(objs[3],TweenInfo.new(0.25),{C1 = CFrame.new(-0.833141267, 0.773836195, -2.03858113, 0.99999994, 0, 0, 0, -0.342020392, 0.939692557, 0, -0.939692557, -0.342020392)}):Play()
			ts:Create(objs[2],TweenInfo.new(0.25),{C1 = CFrame.new(0.913142264, 0.148002237, -1.70057297, 0.830184042, -0.282718122, 0.480483919, -0.557166755, -0.450079024, 0.697849274, 0.0189610645, -0.84705317, -0.531169653)}):Play()
			wait(0.26)
			objs[5]:WaitForChild("BoltBack"):Play()
			ts:Create(objs[2],TweenInfo.new(0.2),{C1 = CFrame.new(0.628990233, -0.319528729, -1.57020211, 0.830184042, -0.282718122, 0.480483919, -0.557166755, -0.450079024, 0.697849274, 0.0189610645, -0.84705317, -0.531169653)}):Play()
			ts:Create(objs[1],TweenInfo.new(0.2),{C1 = CFrame.new(0, 0, 0.381301403, 1, 0, 0, 0, 1, 0, 0, 0, 1)}):Play()
			ts:Create(objs[3],TweenInfo.new(0.2),{C1 = CFrame.new(-0.833141267, 0.690030336, -2.03858113, 0.99999994, 0, 0, 0, -0.342020392, 0.939692557, 0, -0.939692557, -0.342020392)}):Play()
			wait(0.2)
		end;
		
		BoltForwardAnim = function(char, speed, objs)
			objs[5]:WaitForChild("BoltForward"):Play()
			ts:Create(objs[1],TweenInfo.new(0.1),{C1 = CFrame.new()}):Play()
			ts:Create(objs[2],TweenInfo.new(0.1),{C1 = CFrame.new(0.628990233, -0.87456286, -1.57020211, 0.830184042, -0.282718122, 0.480483919, -0.557166755, -0.450079024, 0.697849274, 0.0189610645, -0.84705317, -0.531169653)}):Play()
			ts:Create(objs[3],TweenInfo.new(0.2),{C1 = CFrame.new(-0.833141267, 1.07258713, -2.03858113, 0.99999994, 0, 0, 0, -0.342020392, 0.939692557, 0, -0.939692557, -0.342020392)}):Play()
			wait(0.2)
		end;
		
		BoltingBackAnim = function(char, speed, objs)
			ts:Create(objs[1],TweenInfo.new(0.1),{C1 = CFrame.new(0, 0, 0.273770154, 1, 0, 0, 0, 1, 0, 0, 0, 1)}):Play()
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
		
		fireAnim = function(char, speed, objs)
			-- You can do pretty much anything here like for a sidearm, you can have the hammer animate or any number of things :)
		end
	
	}

return module