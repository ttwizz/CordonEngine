local module = {
		
		--// Customizations
		HolsteringEnabled = false;
		HolsterClient = false;
		HolsterTo = "Right Leg"; -- Put the name of the body part you wanna holster to
		HolsterPos = CFrame.new(0.55,0.5,-0.1) * CFrame.Angles(math.rad(280),math.rad(0),math.rad(0));
		
		--// Idle Pos
		RightArmPos = CFrame.new(-1.43696284, 0.795551658, -1.29999995, 1, 0, 0, 0, 0, 1, 0, -1, 0);
		LeftArmPos = CFrame.new(1.29297853, -0.421640724, -1.14954376, -4.37113847e-08, -4.37113883e-08, 1, -0.99999994, 1.91068547e-15, -4.37113883e-08, 0, -0.99999994, -4.37113847e-08);
		GunPos = CFrame.new(-0.25,-0.9,-0.4) * CFrame.Angles(math.rad(-90),math.rad(0),0,0);
		ShieldPos = CFrame.new(0, -0.645670414, 0, -4.37113883e-08, 1.19248806e-08, 1, -1, -5.21253064e-16, -4.37113883e-08, 0, -0.99999994, 1.19248798e-08);
		
		--// Aim Pos
		RightAimPos = CFrame.new(-0.46519196, 1.01375341, -0.818025351, 1, 0, 0, 0, 0, 1, 0, -1, 0);
		LeftAimPos = CFrame.new(1.26586926, -1.75220251, -0.402274489, -4.37113847e-08, -4.37113883e-08, 1, -0.70710665, -0.707106829, -6.18172322e-08, 0.707106829, -0.70710665, 1.0658141e-14);
		NeckAimPos = CFrame.new(0, -0.5, 0, -0.932063401, 0, -0.36229521, -0.36229521, 0, 0.932063401, 0, 1, 0);
		
		--// Sprint Pos
		RightSprintPos = CFrame.new(-1.02511525, -1.01276767, -0.773925781, 1, 0, 0, 0, -1, 1.19248806e-08, 0, -1.19248806e-08, -1);
		LeftSprintPos = CFrame.new(1.22754693, 0.0286092013, -1.14954376, -4.37113847e-08, -4.37113883e-08, 1, -0.99999994, 1.91068547e-15, -4.37113883e-08, 0, -0.99999994, -4.37113847e-08);
		
		--// Patrol Pos
		RightPatrolPos = CFrame.new(-0.899999976, -0.0156189203, -1.29999995, 0.766044438, 0, -0.642787576, 0.556670308, 0.500000179, 0.663413882, 0.321393907, -0.866025329, 0.383022368);
		LeftPatrolPos = CFrame.new(0.49999997, 1.35604727, -1.39584899, 0.987478971, -0.00248758495, -0.157731101, 0.14826563, 0.35611701, 0.922604144, 0.0538756363, -0.934438348, 0.352026761);
		
		--// Shoot Pos
		ShootPos = CFrame.new(0, 0, 0.400000006, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		
	}

return module