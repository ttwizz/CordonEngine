--// Services
local ts = game:GetService("TweenService")

local global =
{
	--// Default Assignments
		EnableKeyActivation = false; -- Whether or not you use tools or Keybindings like 1 and 2
		UniversalStances = true; -- If true, you can use stances (stand, crouch, prone) without the guns being equipped
		ReplicatedBullets = true; -- If true, bullets/tracers will be seen by everyone
		ToggleableLeaning = true; --  If true, pressing Q or E will toggle and press again to unlean
		ReplicatedFlashlight = true; -- Whether or not everyone sees the flashlight or just the player
		ReplicatedLaser = true; -- Whether or not everyone sees the laser or just the player
		CanHeal = true; -- Allows one use of a syringe that refills health completely
		SoundIso = true; -- Sound Isolation: The further you are, the more distant the shot sounds
		DustUpFX = true; -- Dust when you shoot near a surface and it kicks up dust like irl
		LightsOut = true; -- Whether or not you can shoot out lights
		CanGrenade = false; -- Whether or not you can use the grenade feature
		NVGEnabled = true; -- Whether or not NVG can be used
		StaminaEnabled = false; -- Whether or not stamina will be measured/effect mechanics
		CanKnife = false; -- Whether or not a player can use the knife feature
		ShowArmor = false; -- Whether or not to show the armor UI
		FakeArmsEnabled = false; -- Whether or not it'll take carms from Accessories
		StartUpBolt = true; -- Whether or not the guns will automatically bolt when you equip them.
		RicochetEnabled = false; -- Wheather or not ricochet will be enabled
		HttpPosts = false; -- Whether or not kill logs will be sent to your discord server via webhook
		
	--// Key Activation Bindings
		PrimaryWeapon = "M4A1";
		SecondaryWeapon = "RPG";
		
	--// Block Settings
		BlockNegate = 0.5; -- How much block each bullet docks
		ParryNegate = 0.25; -- How much block while parrying each bullet docks
		
	--// Armor Settings
		ArmorHead = 10; -- Based on percentage
		ArmorBase = 30; -- Based on percentage
		ArmorLimb = 40; -- Based on percentage
		
	--// Stamina Settings
		StaminaMult = 0.1; -- Amount of stamina you will lose per second of sprinting (Full Stamina = 1)
		StaminaRegenMult = 0.05; -- How much stamina is regened over StaminaRegenTime amount of time
		StaminaRegenTime = 3; -- Amount of time before each regen cycle
	
	--// NVG Settings
		OverlayID = 2197557355;
		OverlayColor = Color3.fromRGB(6, 167, 167);
		OverlayBrightness = 0.7;
		Exposure = 3;
		
	--// Tracer Effects
		NightTimeTracers = false; -- Only spawn tracers at night if true
		MinTime = 18; -- Lighting clock time threshold start
		MaxTime = 6; -- Lighting clock time threshold end

	--// Screen FX
		AmmoUIEnabled = true;
		OverlayEnabled = true;
		
	--// Ragdoll
		RagdollEnabled = true;
		
	--// Glass Effects
		CanBreakGlass = false;
		
	--// Keybindings
		AltAimKey = Enum.KeyCode.Z;
		KnifeKey = Enum.KeyCode.H;
		BinoKey = Enum.KeyCode.Y;
		GLKey = Enum.KeyCode.B;
		HealKey = Enum.KeyCode.M;
		GrenadeKey = Enum.KeyCode.G;
		NVGKey = Enum.KeyCode.N;
		
	--// Nade Physics					
		NadeTrailEnabled = false;
	
		NadePhysics = Vector3.new(0,20,0); -- Drop for explosive rounds
		NadeSpeed = 180; -- Speed for explosive rounds
		
		BlastPressue = 500000;
		BlastRadius = 15;
		DestroyJointRadius = 0; -- This destroys vehicles. Set to zero if you want it to not destroy vehicles but damage players
		ExplosionType = Enum.ExplosionType.NoCraters; -- Might wanna leave it like this
		
	--// Nade Modes
		NadeMode = 1; -- 1 = Frag, 2 = Flash, 3 = Smoke, 4 = C4 (Flash and Smoke are not yet available)
		
		FragAmmo = 3;
		FlashAmmo = 0;
		SmokeAmmo = 0;
		C4Ammo = 2;
		
	--// Smoke Configs
		Duration = 20; -- How long smoke from a smoke grenade lasts for
		
	--// C4 Configs
		C4DeletePart = true; -- Whether or not the C4 should destroy the part it's attached to
		C4WhiteListActive = true;
		C4WhiteList = {"Breachable";};
		C4BlastPressue = 500000;
		C4BlastRadius = 20;
		C4DestroyJointRadius = 0; -- This destroys vehicles. Set to zero if you want it to not destroy vehicles but damage players
		C4ExplosionType = Enum.ExplosionType.NoCraters; -- Might wanna leave it like this
		
	--// Mechanic Configurations
		WalkIntensity = 0.08;
		WalkAnimSpeed = 12;
		
		AimWalkIntensity = 0.005;
		AimWalkAnimSpeed = 9;
	
	--// Bullet Physics
		BulletPhysics = 65;
		BulletSpeed = 2000; -- Bullet Speed
		BulletDrift = 5;
	
	--// Cosmetic
		RenderDist = 2000;
		
	--// Global Weapon Settings
		JamChance = 0.8; -- Set to 0 if you don't want jamming
		BinoZoom = 30;
	
	--// Damage Shake
		CanDamageShake = true;
		
		gunRecoilMin = 50; -- How much the gun recoils backwards when not aiming
		gunRecoilMax = 100; -- How much the gun recoils backwards when not aiming
		
		AimGunRecoilMin = 25; -- How much the gun recoils backwards when aiming
		AimGunRecoilMax = 50; -- How much the gun recoils backwards when aiming
		
		KickbackMin = 10; -- Upward gun rotation when not aiming
		KickbackMax = 15; -- Upward gun rotation when not aiming
		
		AimKickbackMin = 5; -- Upward gun rotation when aiming
		AimKickbackMax = 10; -- Upward gun rotation when aiming
		
		SideKickMin = -10;
		SideKickMax = 10;
		
		AimSideKickMin = -5;
		AimSideKickMax = 5;
		
		CamShakeMin = 15;
		CamShakeMax = 10;
		
		AimCanShakeMin = 5;
		AimCamShakeMax = 10;
		
	--// Global Animation
		AttachAnim = function(char, speed, objs)
			ts:Create(objs[1],TweenInfo.new(0.25),{C1 = CFrame.new(-2.03314137, -0.687133849, -1.55439997, 0.573576391, 3.58062735e-08, -0.819152057, 0.742403746, -0.422618479, 0.519836724, -0.346188754, -0.906307697, -0.242404029)}):Play() -- require(script).FakeRightPos (For fake arms) | require(script).RightArmPos (For real arms)
			ts:Create(objs[2],TweenInfo.new(0.25),{C1 = CFrame.new(1.17716026, 1.64094019, -2.55759192, 0.875340223, -0.16773127, 0.453481704, -0.16372475, 0.779667258, 0.604411244, -0.454943508, -0.603311658, 0.655012369)}):Play() -- require(script).FakeLeftPos (For fake arms) | require(script).LeftArmPos (For real arms)
			wait(0.18)
		end

}

return global