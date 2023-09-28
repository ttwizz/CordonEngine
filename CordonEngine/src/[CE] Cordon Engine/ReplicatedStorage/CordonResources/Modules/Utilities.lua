local L_1_ = {}
L_1_.Weld = function(L_2_arg1, L_3_arg2, L_4_arg3, L_5_arg4)
	local L_6_ = Instance.new("Motor6D", L_2_arg1)
	L_6_.Part0 = L_2_arg1
	L_6_.Part1 = L_3_arg2
	L_6_.Name = L_2_arg1.Name
	L_6_.C0 = L_4_arg3 or L_2_arg1.CFrame:inverse() * L_3_arg2.CFrame
	L_6_.C1 = L_5_arg4 or CFrame.new()
	return L_6_
end
L_1_.CheckForHumanoid = function(L_7_arg1)
	local L_8_ = false
	local L_9_ = nil
	if L_7_arg1 then
		if (L_7_arg1:FindFirstChildOfClass("Humanoid") or L_7_arg1.Parent:FindFirstChildOfClass("Humanoid") or L_7_arg1.Parent.Parent:FindFirstChildOfClass("Humanoid")) then
			L_8_ = true
			if L_7_arg1:FindFirstChildOfClass("Humanoid") then
				L_9_ = L_7_arg1:FindFirstChildOfClass("Humanoid")
			elseif L_7_arg1.Parent:FindFirstChildOfClass("Humanoid") then
				L_9_ = L_7_arg1.Parent:FindFirstChildOfClass("Humanoid")
			elseif L_7_arg1.Parent.Parent:FindFirstChildOfClass("Humanoid") then
				L_9_ = L_7_arg1.Parent.Parent:FindFirstChildOfClass("Humanoid")
			end
		else
			L_8_ = false
		end
	end
	return L_8_, L_9_
end
L_1_.CheckForHealth = function(L_10_arg1)
	local L_11_ = false
	local L_12_ = nil
	if L_10_arg1 then
		print(L_10_arg1.Name)
		if (L_10_arg1.Parent and L_10_arg1.Parent:FindFirstChild("Health") or L_10_arg1.Parent.Parent and L_10_arg1.Parent.Parent:FindFirstChild("Health") or L_10_arg1.Parent.Parent.Parent and L_10_arg1.Parent.Parent.Parent:FindFirstChild("Health") or L_10_arg1.Parent.Parent.Parent.Parent and L_10_arg1.Parent.Parent.Parent.Parent:FindFirstChild("Health")) then
			L_11_ = true
			if L_10_arg1:FindFirstChild("Health") then
				L_12_ = L_10_arg1:FindFirstChild("Health")
			elseif L_10_arg1.Parent:FindFirstChild("Health") then
				L_12_ = L_10_arg1.Parent:FindFirstChild("Health")
			elseif L_10_arg1.Parent.Parent:FindFirstChild("Health") then
				L_12_ = L_10_arg1.Parent.Parent:FindFirstChild("Health")
			elseif L_10_arg1.Parent.Parent.Parent:FindFirstChild("Health") then
				L_12_ = L_10_arg1.Parent.Parent.Parent:FindFirstChild("Health")
			elseif L_10_arg1.Parent.Parent.Parent.Parent:FindFirstChild("Health") then
				L_12_ = L_10_arg1.Parent.Parent.Parent.Parent:FindFirstChild("Health")
			end
		else
			L_11_ = false
		end
	end
	return L_11_, L_12_
end
L_1_.Lerp = function(L_13_arg1, L_14_arg2, L_15_arg3)
	return L_13_arg1 * (1 - L_15_arg3) + L_14_arg2 * L_15_arg3
end
L_1_.getHitSurfaceCFrame = function(L_16_arg1, L_17_arg2)
	local L_18_ = {
		{
			"Back",
			L_17_arg2.CFrame * CFrame.new(0, 0, L_17_arg2.Size.z)
		};
		{
			"Bottom",
			L_17_arg2.CFrame * CFrame.new(0, -L_17_arg2.Size.y, 0)
		};
		{
			"Front",
			L_17_arg2.CFrame * CFrame.new(0, 0, -L_17_arg2.Size.z)
		};
		{
			"Left",
			L_17_arg2.CFrame * CFrame.new(-L_17_arg2.Size.x, 0, 0)
		};
		{
			"Right",
			L_17_arg2.CFrame * CFrame.new(L_17_arg2.Size.x, 0, 0)
		};
		{
			"Top",
			L_17_arg2.CFrame * CFrame.new(0, L_17_arg2.Size.y, 0)
		}
	}
	local L_19_ = math.huge
	local L_20_ = nil
	for L_26_forvar1, L_27_forvar2 in pairs(L_18_) do
		local L_28_ = (L_16_arg1 - L_27_forvar2[2].p).magnitude
		if L_28_ < L_19_ then
			L_19_ = L_28_
			L_20_ = L_27_forvar2
		end
	end
	local L_21_
	if L_20_[1] == "Back" then
		L_21_ = (L_20_[2].Position - L_18_[3][2].Position).magnitude / 2
	elseif L_20_[1] == "Front" then
		L_21_ = (L_20_[2].Position - L_18_[1][2].Position).magnitude / 2
	elseif L_20_[1] == "Top" then
		L_21_ = (L_20_[2].Position - L_18_[2][2].Position).magnitude / 2
	elseif L_20_[1] == "Bottom" then
		L_21_ = (L_20_[2].Position - L_18_[6][2].Position).magnitude / 2
	elseif L_20_[1] == "Left" then
		L_21_ = (L_20_[2].Position - L_18_[5][2].Position).magnitude / 2
	elseif L_20_[1] == "Right" then
		L_21_ = (L_20_[2].Position - L_18_[4][2].Position).magnitude / 2
	end
	local L_22_ = CFrame.new(L_17_arg2.CFrame.p, L_20_[2].p)
	local L_23_ = L_22_.lookVector * ((L_17_arg2.CFrame.p - L_20_[2].p).magnitude / 2 - 0.25)
	local L_24_ = L_16_arg1 - L_20_[2].p + L_23_
	local L_25_ = L_22_ + L_23_ + L_24_
	return L_20_[1], L_21_, L_23_, L_25_
end
return L_1_