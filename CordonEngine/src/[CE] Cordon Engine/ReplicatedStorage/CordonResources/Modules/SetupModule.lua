return function(L_1_arg1, L_2_arg2, L_3_arg3, L_4_arg4, L_5_arg5, L_6_arg6, L_7_arg7)
	local L_8_ = game.ReplicatedStorage:WaitForChild("CordonResources")
	local L_9_ = L_8_:WaitForChild("Accessories"):WaitForChild("Arms")
	local L_10_ = require(L_8_:WaitForChild("Global"):WaitForChild("GlobalConfig"))
	local L_11_
	local L_12_
	local L_13_
	local L_14_
	local L_15_
	local L_16_
	local L_17_
	local L_18_
	local L_19_
	local L_20_ = Instance.new("Humanoid")
	L_20_.Parent = L_1_arg1
	if L_2_arg2:FindFirstChildOfClass("Shirt") then
		L_19_ = L_1_arg1:FindFirstChildOfClass("Shirt") or Instance.new("Shirt")
		L_19_.Parent = L_1_arg1
		L_19_.ShirtTemplate = L_2_arg2:FindFirstChildOfClass("Shirt").ShirtTemplate
	end
	if L_2_arg2:FindFirstChild("Humanoid") then
		if L_2_arg2:WaitForChild("Humanoid").RigType == Enum.HumanoidRigType.R6 then
			if not L_10_.FakeArmsEnabled then
				L_13_ = L_2_arg2:WaitForChild("Right Arm"):clone()
				L_13_.Size = Vector3.new(1, 3, 1)
				L_14_ = L_2_arg2:WaitForChild("Left Arm"):clone()
				L_14_.Size = Vector3.new(1, 3, 1)
				for L_21_forvar1, L_22_forvar2 in pairs(L_13_:GetChildren()) do
					if L_22_forvar2 then
						L_22_forvar2:Destroy()
					end
				end
				for L_23_forvar1, L_24_forvar2 in pairs(L_14_:GetChildren()) do
					if L_24_forvar2 then
						L_24_forvar2:Destroy()
					end
				end
				L_13_.Parent = L_1_arg1
				L_14_.Parent = L_1_arg1
			else
				local L_25_ = L_9_:WaitForChild("Left Arm"):Clone()
				local L_26_ = L_9_:WaitForChild("Right Arm"):Clone()
				L_13_ = L_26_.PrimaryPart
				L_14_ = L_25_.PrimaryPart
				L_25_.Parent = L_1_arg1
				L_26_.Parent = L_1_arg1
				if L_2_arg2:FindFirstChildOfClass("Shirt") then
					L_19_ = L_25_:FindFirstChildOfClass("Shirt") or Instance.new("Shirt")
					L_19_.Parent = L_25_
					L_19_.ShirtTemplate = L_2_arg2:FindFirstChildOfClass("Shirt").ShirtTemplate
					L_19_ = L_26_:FindFirstChildOfClass("Shirt") or Instance.new("Shirt")
					L_19_.Parent = L_26_
					L_19_.ShirtTemplate = L_2_arg2:FindFirstChildOfClass("Shirt").ShirtTemplate
				end
			end
		elseif L_2_arg2:WaitForChild("Humanoid").RigType == Enum.HumanoidRigType.R15 then
			local L_27_ = L_9_:WaitForChild("Left Arm"):Clone()
			local L_28_ = L_9_:WaitForChild("Right Arm"):Clone()
			L_13_ = L_28_.PrimaryPart
			L_14_ = L_27_.PrimaryPart
			L_27_.Parent = L_1_arg1
			L_28_.Parent = L_1_arg1
			if L_2_arg2:FindFirstChildOfClass("Shirt") then
				L_19_ = L_27_:FindFirstChildOfClass("Shirt") or Instance.new("Shirt")
				L_19_.Parent = L_27_
				L_19_.ShirtTemplate = L_2_arg2:FindFirstChildOfClass("Shirt").ShirtTemplate
				L_19_ = L_28_:FindFirstChildOfClass("Shirt") or Instance.new("Shirt")
				L_19_.Parent = L_28_
				L_19_.ShirtTemplate = L_2_arg2:FindFirstChildOfClass("Shirt").ShirtTemplate
			end
		end
	end
	L_11_ = Instance.new("Motor6D")
	L_11_.Name = "RAW"
	L_11_.Parent = L_3_arg3
	L_11_.Part0 = L_3_arg3
	L_11_.Part1 = L_13_
	if not L_6_arg6 then
		L_11_.C1 = L_4_arg4.RightArmPos
	else
		L_11_.C1 = L_7_arg7[1]
	end
	L_12_ = Instance.new("Motor6D")
	L_12_.Name = "LAW"
	L_12_.Parent = L_3_arg3
	L_12_.Part0 = L_3_arg3
	L_12_.Part1 = L_14_
	if not L_6_arg6 then
		L_12_.C1 = L_4_arg4.LeftArmPos
	else
		L_12_.C1 = L_7_arg7[2]
	end
	L_15_ = L_5_arg5:WaitForChild("Grip")
	L_16_ = Instance.new("Motor6D")
	L_16_.Name = "GripW"
	L_16_.Parent = L_15_
	L_16_.Part0 = L_13_
	L_16_.Part1 = L_15_
	L_16_.C1 = L_4_arg4.GunPos
	L_17_ = Instance.new("Motor6D")
	L_17_.Name = "GripW2"
	L_17_.Parent = L_15_
	L_17_.Part1 = L_15_
	L_17_.C0 = L_14_.CFrame:inverse() * L_17_.Part1.CFrame
	if L_5_arg5:FindFirstChild("Shield") and L_4_arg4.ShieldPos then
		L_18_ = Instance.new("Motor6D")
		L_18_.Name = "GripW3"
		L_18_.Parent = L_5_arg5:WaitForChild("Shield"):WaitForChild("Grip")
		L_18_.Part0 = L_14_
		L_18_.Part1 = L_5_arg5:WaitForChild("Shield"):WaitForChild("Grip")
		L_18_.C1 = L_4_arg4.ShieldPos
		L_5_arg5:WaitForChild("Shield"):WaitForChild("Grip").Anchored = false
	end
	L_15_.Anchored = false
	return L_11_, L_12_, L_13_, L_14_, L_15_, L_16_, L_17_
end