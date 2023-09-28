local L_1_ = game.ReplicatedStorage:WaitForChild("CordonResources")
local L_2_ = L_1_:WaitForChild("Modules")
local L_3_ = require(L_2_:WaitForChild("Utilities"))
local L_4_ = game:GetService("TweenService")
local L_5_ = {}
L_5_.OptionFunc = function(L_6_arg1, L_7_arg2)
	L_4_:Create(L_6_arg1.optionButton:WaitForChild("Hover"), TweenInfo.new(0.3), {
		ImageTransparency = 0.6
	}):Play()
	L_6_arg1.menuFrame:WaitForChild("PagesFrame"):WaitForChild("PageLayout"):JumpTo(L_6_arg1.menuFrame:WaitForChild("PagesFrame"):WaitForChild(L_7_arg2))
	for L_8_forvar1, L_9_forvar2 in pairs(L_6_arg1.menuFrame:WaitForChild("Buttons"):GetDescendants()) do
		if L_9_forvar2 and L_9_forvar2.Name == "Hover" and L_9_forvar2.Parent ~= L_6_arg1.optionButton then
			L_4_:Create(L_9_forvar2, TweenInfo.new(0.3), {
				ImageTransparency = 1
			}):Play()
		end
		if L_9_forvar2 and L_9_forvar2.Name == "Detail" and L_9_forvar2.Parent ~= L_6_arg1.optionButton then
			L_4_:Create(L_9_forvar2, TweenInfo.new(0.3), {
				BackgroundTransparency = 1
			}):Play()
		end
	end
end
L_5_.KeybindFunc = function(L_10_arg1, L_11_arg2)
	L_4_:Create(L_10_arg1.keybindButton:WaitForChild("Hover"), TweenInfo.new(0.3), {
		ImageTransparency = 0.6
	}):Play()
	L_10_arg1.menuFrame:WaitForChild("PagesFrame"):WaitForChild("PageLayout"):JumpTo(L_10_arg1.menuFrame:WaitForChild("PagesFrame"):WaitForChild(L_11_arg2))
	for L_12_forvar1, L_13_forvar2 in pairs(L_10_arg1.menuFrame:WaitForChild("Buttons"):GetDescendants()) do
		if L_13_forvar2 and L_13_forvar2.Name == "Hover" and L_13_forvar2.Parent ~= L_10_arg1.keybindButton then
			L_4_:Create(L_13_forvar2, TweenInfo.new(0.3), {
				ImageTransparency = 1
			}):Play()
		end
		if L_13_forvar2 and L_13_forvar2.Name == "Detail" and L_13_forvar2.Parent ~= L_10_arg1.keybindButton then
			L_4_:Create(L_13_forvar2, TweenInfo.new(0.3), {
				BackgroundTransparency = 1
			}):Play()
		end
	end
end
L_5_.StartUpBolt = function(L_14_arg1, L_15_arg2, L_16_arg3, L_17_arg4, L_18_arg5)
	local L_19_ = L_14_arg1
	L_15_arg2()
	L_16_arg3()
	L_17_arg4()
	L_18_arg5()
	return true, true, L_19_, true, false
end
L_5_.TracerCalculation = function(L_20_arg1)
	local L_21_
	if (math.random(1, 100) <= L_20_arg1) then
		L_21_ = true
	else
		L_21_ = false
	end
	return L_21_
end
L_5_.JamCalculation = function(L_22_arg1)
	local L_23_
	if (math.random(1, 100) <= L_22_arg1) then
		L_23_ = true
	else
		L_23_ = false
	end
	return L_23_
end
L_5_.getQuality = function()
	local L_24_ = UserSettings().GameSettings.SavedQualityLevel
	local L_25_
	if L_24_ == Enum.SavedQualitySetting.QualityLevel10 then
		L_25_ = true
	elseif L_24_ == Enum.SavedQualitySetting.QualityLevel9 then
		L_25_ = true
	elseif L_24_ == Enum.SavedQualitySetting.QualityLevel8 then
		L_25_ = true
	elseif L_24_ == Enum.SavedQualitySetting.QualityLevel7 then
		L_25_ = false
	elseif L_24_ == Enum.SavedQualitySetting.QualityLevel6 then
		L_25_ = false
	elseif L_24_ == Enum.SavedQualitySetting.QualityLevel5 then
		L_25_ = false
	elseif L_24_ == Enum.SavedQualitySetting.QualityLevel4 then
		L_25_ = false
	elseif L_24_ == Enum.SavedQualitySetting.QualityLevel3 then
		L_25_ = false
	elseif L_24_ == Enum.SavedQualitySetting.QualityLevel2 then
		L_25_ = false
	elseif L_24_ == Enum.SavedQualitySetting.QualityLevel1 then
		L_25_ = false
	elseif L_24_ == Enum.SavedQualitySetting.Automatic then
		L_25_ = false
	end
	return L_25_
end
L_5_.richoCalc = function(L_26_arg1)
	local L_27_ = false
	local L_28_, L_29_ = L_3_.CheckForHumanoid(L_26_arg1)
	local L_30_
	if L_26_arg1.Material == (Enum.Material.Metal or Enum.Material.Concrete or Enum.Material.DiamondPlate or Enum.Material.Asphalt or Enum.Material.Rock or Enum.Material.Cobblestone or Enum.Material.Basalt or Enum.Material.CorrodedMetal or Enum.Material.Pavement or Enum.Material.Limestone) then
		L_27_ = true
	end
	if L_28_ and L_29_ and (L_29_.Parent:FindFirstChild("Block") or L_29_.Parent:FindFirstChild("EBlock")) then
		L_27_ = true
	end
	if L_29_ then
		if L_29_.Parent then
			L_30_ = L_29_.Parent
		else
			L_30_ = nil
		end
	end
	return L_27_, L_30_
end
return L_5_