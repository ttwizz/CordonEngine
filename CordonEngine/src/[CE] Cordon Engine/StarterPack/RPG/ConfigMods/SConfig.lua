local module = {
		
		--// Customizations
		HolsteringEnabled = true;
		HolsterClient = false;
		HolsterTo = "Torso"; -- Put the name of the body part you wanna holster to
		HolsterPos = CFrame.new(1,0,0.6) * CFrame.Angles(math.rad(90),0,math.rad(90));
		
		--// Idle Pos
		RightArmPos = CFrame.new(-0.899999976, 0.442174166, -1.29999995, 1, 0, 0, 0, 0, 1, 0, -1, 0);
		LeftArmPos = CFrame.new(0.52253747, 0.805652261, -1.71921682, 0.834928393, -0.365136772, 0.411788642, -0.494929731, -0.170903921, 0.851960361, -0.240705758, -0.915132225, -0.323409557);
		GunPos = CFrame.new(-0.431267798, 0.165358186, -0.683851123, 1, 0, 0, 0, 0, 1, 0, -1, 0);
		
		--// Aim Pos
		RightAimPos = CFrame.new(-0.899999976, 0.442174166, -0.699999988, 1, 0, 0, 0, 0, 1, 0, -1, 0);
		LeftAimPos = CFrame.new(0.722537458, 1.00565231, -1.1192168, 0.834928393, -0.365136772, 0.411788642, -0.494929731, -0.170903921, 0.851960361, -0.240705758, -0.915132225, -0.323409557);
		NeckAimPos = CFrame.new(0, -0.5, 0, -0.932063401, 0, -0.36229521, -0.36229521, 0, 0.932063401, 0, 1, 0);
		
		--// Sprint Pos
		RightSprintPos = CFrame.new(-1.2697432, 0.442174196, -1.23528087, 0.707106769, 0, -0.707106769, 0.640856326, 0.422618449, 0.640856326, 0.29883638, -0.906307697, 0.29883638);
		LeftSprintPos = CFrame.new(0.737934947, 0.953627944, -1.63405645, 0.834928393, -0.365136772, 0.411788642, -0.267359495, 0.38490212, 0.883385122, -0.481054664, -0.847658873, 0.223742932);
		
		--// Patrol Pos
		RightPatrolPos = CFrame.new(-1.2697432, 0.442174196, -1.23528087, 0.707106769, 0, -0.707106769, 0.640856326, 0.422618449, 0.640856326, 0.29883638, -0.906307697, 0.29883638);
		LeftPatrolPos = CFrame.new(0.737934947, 0.953627944, -1.63405645, 0.834928393, -0.365136772, 0.411788642, -0.267359495, 0.38490212, 0.883385122, -0.481054664, -0.847658873, 0.223742932);
		
		--// Ready Pos
		ReadyHighPos = CFrame.new(0.200000018, -1.60000002, 0.400000006, 1, 0, 0, 0, 0.342020154, -0.939692616, 0, 0.939692616, 0.342020154);
		ReadyLowPos = CFrame.new(0, -0.151961327, -0.454007119, 0.939692616, -0.116977766, 0.321393788, 0, 0.939692616, 0.342020124, -0.342020124, -0.321393788, 0.883022189);
		
		--// Shoot Pos
		ShootPos = CFrame.new(0, 0, 0.400000006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		
	}

return module