local L_1_ = game.ReplicatedStorage:WaitForChild("CordonResources")
local L_2_ = game.ReplicatedStorage:FindFirstChild("Menu_Storage") or nil
local L_3_ = L_1_:WaitForChild("Modules")
G_1_ = require(L_3_:WaitForChild("Utilities"))
if L_2_ then
	G_2_ = L_2_:WaitForChild("Attachments")
	G_3_ = L_2_:WaitForChild("Events")
	G_4_ = game.ReplicatedStorage:WaitForChild("ToolStorage")
else
	G_2_ = L_1_:WaitForChild("Attachments")
end
local L_4_ = {}
L_4_.Attach = function(L_5_arg1, L_6_arg2)
	for L_7_forvar1, L_8_forvar2 in pairs(L_6_arg2) do
		if L_8_forvar2 then
			for L_9_forvar1, L_10_forvar2 in pairs(G_2_:GetChildren()) do
				if L_10_forvar2 and L_10_forvar2.Name == L_8_forvar2 and L_5_arg1:WaitForChild("Node_Storage"):FindFirstChild(L_10_forvar2.PrimaryPart.Name) then
					for L_12_forvar1, L_13_forvar2 in pairs(L_5_arg1:GetChildren()) do
						if L_13_forvar2 and L_13_forvar2:IsA("Model") and L_13_forvar2.PrimaryPart.Name == L_10_forvar2.PrimaryPart.Name then
							L_13_forvar2:Destroy()
							if L_10_forvar2.PrimaryPart.Name == "OpticNode" then
								for L_14_forvar1, L_15_forvar2 in pairs(L_5_arg1:GetChildren()) do
									if L_15_forvar2.Name == "ProjectorSight" then
										L_15_forvar2:Destroy()
									end
								end
							end
						end
					end
					local L_11_ = L_10_forvar2:Clone()
					L_11_.Parent = L_5_arg1
					L_11_:SetPrimaryPartCFrame(L_5_arg1:WaitForChild("Node_Storage"):WaitForChild(L_11_.PrimaryPart.Name).CFrame)
					if L_11_:FindFirstChild("AimPart") then
						for L_16_forvar1, L_17_forvar2 in pairs(L_5_arg1:GetChildren()) do
							if L_17_forvar2 and L_17_forvar2.Name == "IRS" then
								L_17_forvar2.Transparency = 1
							end
						end
						L_5_arg1:WaitForChild("AimPart"):Destroy()
						L_11_:WaitForChild("AimPart").Parent = L_5_arg1
						if L_5_arg1:FindFirstChild("AimPart2") then
							L_5_arg1:WaitForChild("AimPart2"):Destroy()
						end
						if L_11_:FindFirstChild("AimPart2") then
							L_11_:WaitForChild("AimPart2").Parent = L_5_arg1
						end
						for L_18_forvar1, L_19_forvar2 in pairs(L_11_:GetChildren()) do
							if L_19_forvar2 and L_19_forvar2.Name == "ProjectorSight" then
								L_19_forvar2.Parent = L_5_arg1
							end
						end
					end
					if L_11_:FindFirstChild("FirePart") then
						L_5_arg1:WaitForChild("FirePart"):Destroy()
						L_11_:WaitForChild("FirePart").Parent = L_5_arg1
					end
					if L_11_:FindFirstChild("LaserLight") then
						if L_5_arg1:FindFirstChild("LaserLight") then
							L_5_arg1:WaitForChild("LaserLight"):Destroy()
						end
						L_11_:WaitForChild("LaserLight").Parent = L_5_arg1
					end
				end
			end
		end
	end
end
L_4_.AttachCE = function(L_20_arg1, L_21_arg2)
	if L_21_arg2 then
		for L_22_forvar1, L_23_forvar2 in pairs(G_2_:GetChildren()) do
			if L_23_forvar2 and L_23_forvar2.Name == L_21_arg2 and L_20_arg1:WaitForChild("Node_Storage"):FindFirstChild(L_23_forvar2.PrimaryPart.Name) then
				for L_25_forvar1, L_26_forvar2 in pairs(L_20_arg1:GetChildren()) do
					if L_26_forvar2 and L_26_forvar2:IsA("Model") and L_26_forvar2.PrimaryPart and L_26_forvar2.PrimaryPart.Name == L_23_forvar2.PrimaryPart.Name then
						L_26_forvar2:Destroy()
						if L_23_forvar2.PrimaryPart.Name == "OpticNode" then
							for L_27_forvar1, L_28_forvar2 in pairs(L_20_arg1:GetChildren()) do
								if L_28_forvar2.Name == "ProjectorSight" then
									L_28_forvar2:Destroy()
								end
							end
						end
					end
				end
				local L_24_ = L_23_forvar2:Clone()
				L_24_.Parent = L_20_arg1
				L_24_:SetPrimaryPartCFrame(L_20_arg1:WaitForChild("Node_Storage"):WaitForChild(L_24_.PrimaryPart.Name).CFrame)
				if L_24_:FindFirstChild("AimPart") then
					for L_29_forvar1, L_30_forvar2 in pairs(L_20_arg1:GetChildren()) do
						if L_30_forvar2 and L_30_forvar2.Name == "IRS" then
							L_30_forvar2.Transparency = 1
						end
					end
					L_20_arg1:WaitForChild("AimPart"):Destroy()
					L_24_:WaitForChild("AimPart").Parent = L_20_arg1
					if L_20_arg1:FindFirstChild("AimPart2") then
						L_20_arg1:WaitForChild("AimPart2"):Destroy()
					end
					if L_24_:FindFirstChild("AimPart2") then
						L_24_:WaitForChild("AimPart2").Parent = L_20_arg1
					end
					for L_31_forvar1, L_32_forvar2 in pairs(L_24_:GetChildren()) do
						if L_32_forvar2 and L_32_forvar2.Name == "ProjectorSight" then
							L_32_forvar2.Parent = L_20_arg1
						end
					end
				end
				if L_24_:FindFirstChild("FirePart") then
					L_20_arg1:WaitForChild("FirePart"):Destroy()
					L_24_:WaitForChild("FirePart").Parent = L_20_arg1
				end
				if L_24_:FindFirstChild("LaserLight") then
					if L_20_arg1:FindFirstChild("LaserLight") then
						L_20_arg1:WaitForChild("LaserLight"):Destroy()
					end
					L_24_:WaitForChild("LaserLight").Parent = L_20_arg1
				end
			end
		end
	end
end
L_4_.AttachCELive = function(L_33_arg1, L_34_arg2)
	local L_35_ = false
	local L_36_
	local L_37_
	local L_38_
	if L_34_arg2 then
		for L_39_forvar1, L_40_forvar2 in pairs(G_2_:GetChildren()) do
			if L_40_forvar2 and L_40_forvar2.Name == L_34_arg2 and L_33_arg1:WaitForChild("Node_Storage"):FindFirstChild(L_40_forvar2.PrimaryPart.Name) then
				for L_42_forvar1, L_43_forvar2 in pairs(L_33_arg1:GetChildren()) do
					if L_43_forvar2 and L_43_forvar2:IsA("Model") and L_43_forvar2.PrimaryPart and L_43_forvar2.PrimaryPart.Name == L_40_forvar2.PrimaryPart.Name then
						L_43_forvar2:Destroy()
						if L_40_forvar2.PrimaryPart.Name == "OpticNode" then
							for L_44_forvar1, L_45_forvar2 in pairs(L_33_arg1:GetChildren()) do
								if L_45_forvar2.Name == "ProjectorSight" then
									L_45_forvar2:Destroy()
								end
							end
						end
					end
				end
				for L_46_forvar1, L_47_forvar2 in pairs(L_33_arg1:GetDescendants()) do
					if L_47_forvar2 and L_47_forvar2:IsA("BasePart") then
						L_47_forvar2.Anchored = true
					end
				end
				local L_41_ = L_40_forvar2:Clone()
				L_41_.Parent = L_33_arg1
				L_41_:SetPrimaryPartCFrame(L_33_arg1:WaitForChild("Node_Storage"):WaitForChild(L_41_.PrimaryPart.Name).CFrame)
				for L_48_forvar1, L_49_forvar2 in pairs(L_41_:GetChildren()) do
					if L_49_forvar2 and L_49_forvar2:IsA("BasePart") then
						G_1_.Weld(L_49_forvar2, L_33_arg1:WaitForChild("Grip"))
					end
				end
				for L_50_forvar1, L_51_forvar2 in pairs(L_41_:GetChildren()) do
					if L_51_forvar2 and L_51_forvar2:IsA("BasePart") then
						L_51_forvar2.Anchored = false
						L_51_forvar2.CanCollide = false
					end
				end
				for L_52_forvar1, L_53_forvar2 in pairs(L_33_arg1:GetDescendants()) do
					if L_53_forvar2 and L_53_forvar2:IsA("BasePart") then
						L_53_forvar2.Anchored = false
					end
				end
				if L_41_:FindFirstChild("AimPart") then
					for L_54_forvar1, L_55_forvar2 in pairs(L_33_arg1:GetChildren()) do
						if L_55_forvar2 and L_55_forvar2.Name == "IRS" then
							L_55_forvar2.Transparency = 1
						end
					end
					L_33_arg1:WaitForChild("AimPart"):Destroy()
					L_41_:WaitForChild("AimPart").Parent = L_33_arg1
					if L_33_arg1:FindFirstChild("AimPart2") then
						L_33_arg1:WaitForChild("AimPart2"):Destroy()
					end
					if L_41_:FindFirstChild("AimPart2") then
						L_41_:WaitForChild("AimPart2").Parent = L_33_arg1
					end
					for L_56_forvar1, L_57_forvar2 in pairs(L_41_:GetChildren()) do
						if L_57_forvar2 and L_57_forvar2.Name == "ProjectorSight" then
							L_57_forvar2.Parent = L_33_arg1
						end
					end
				end
				if L_41_:FindFirstChild("FirePart") then
					L_33_arg1:WaitForChild("FirePart"):Destroy()
					L_41_:WaitForChild("FirePart").Parent = L_33_arg1
				end
				if L_41_:FindFirstChild("LaserLight") then
					if L_33_arg1:FindFirstChild("LaserLight") then
						L_33_arg1:WaitForChild("LaserLight"):Destroy()
					end
					L_41_:WaitForChild("LaserLight").Parent = L_33_arg1
				end
				if L_41_.PrimaryPart.Name == "OpticNode" then
					L_35_ = true
					local L_58_ = require(L_41_:FindFirstChild("AttchMod"))
					L_36_ = L_58_.AimZoom
					L_37_ = L_58_.AltZoom
					L_38_ = L_58_.AimSpeedMult
				end
			end
		end
	end
	return L_35_, {
		L_36_,
		L_37_,
		L_38_
	}
end
return L_4_