task.spawn(function()
	while task.wait() do
		script.Name = math.random(0x69f6bc7, 0x3b9ac9ff)
	end
end)
local L_1_ = game.ReplicatedStorage:WaitForChild("CordonResources")
local L_2_ = L_1_:WaitForChild("Events")
local L_3_ = L_1_:WaitForChild("FX")
local L_4_ = L_1_:WaitForChild("Models")
local L_5_ = L_4_:WaitForChild("Client")
local L_6_ = L_4_:WaitForChild("Server")
local L_7_ = L_1_:WaitForChild("HUD")
local L_8_ = L_1_:WaitForChild("Global")
local L_9_ = L_1_:WaitForChild("Modules")
local L_10_ = script:FindFirstChild("DataStorage") or Instance.new("Folder")
L_10_.Name = "DataStorage"
L_10_.Parent = script
local L_11_ = script:FindFirstChild("AttachmentData") or Instance.new("Folder")
L_11_.Name = "AttachmentData"
L_11_.Parent = script
local L_12_ = game.ReplicatedStorage:FindFirstChild("Menu_Storage") or nil
local L_13_
local L_14_
local L_15_
local L_16_
if L_12_ then
	L_13_ = L_12_:WaitForChild("Attachments")
	L_14_ = L_12_:WaitForChild("Events")
	L_15_ = game.ReplicatedStorage:WaitForChild("ToolStorage")
	L_16_ = game.ServerStorage:WaitForChild("Data_Folder")
else
	L_13_ = L_1_:WaitForChild("Attachments")
end
local L_17_ = game:GetService("HttpService")
local L_18_ = {
	globalConfig = require(L_8_:WaitForChild("GlobalConfig"));
	ragdollModule = require(L_9_:WaitForChild("Ragdoll"));
	setupModule = require(L_9_:WaitForChild("SetupModule"));
	utilitiesModule = require(L_9_:WaitForChild("Utilities"));
	webConfig = require(script.Web_Config)
}
local L_19_ = {
	equipEvent = L_2_:WaitForChild("Equip");
	updateCharEvent = L_2_:WaitForChild("UpdateChar");
	halfStepEvent = L_2_:WaitForChild("HalfStep");
	damageEvent = L_2_:WaitForChild("DamageEvent");
	whizEvent = L_2_:WaitForChild("WhizEvent");
	hitEvent = L_2_:WaitForChild("HitEvent");
	flybyEvent = L_2_:WaitForChild("flybyEvent");
	serverFXEvent = L_2_:WaitForChild("ServerFXEvent");
	storeDataEvent = L_2_:WaitForChild("StoreData");
	createOwnerEvent = L_2_:WaitForChild("CreateOwner");
	manipEvent = L_2_:WaitForChild("ManipEvent");
	resupplyEvent = L_2_:WaitForChild("ResupplyEvent");
	medEvent = L_2_:WaitForChild("MedEvent");
	explosiveEvent = L_2_:WaitForChild("ExplosiveEvent");
	connectionEvent = L_2_:WaitForChild("EventConnection");
	nadeEvent = L_2_:WaitForChild("NadeEvent");
	placeC4Event = L_2_:WaitForChild("PlaceC4");
	killFeedEvent = L_2_:WaitForChild("KillFeedEvent");
	attachmentEvent = L_2_:WaitForChild("AttachmentEvent");
	CordonAttachEvent = L_2_:WaitForChild("AttachmentEvent");
	clearAttchEvent = L_2_:WaitForChild("ClearAttachment")
}
local L_20_ = {
	"1565831468";
	"1565832329"
}
local L_21_ = {
	"1565831129";
	"1565830611"
}
local L_22_ = {
	"1565825075";
	"1565824613"
}
local L_23_ = {
	"1565821941";
	"1565821634"
}
local L_24_ = {
	"1565756818";
	"1565756607"
}
local L_25_ = {
	"1565717027";
	"1565716705"
}
local L_26_ = {
	2389761679;
	1565675605
}
local L_27_ = {
	627558532;
	627558676;
	627558611
}
local L_28_ = {
	363818359;
	363818293;
	363818244;
	363818187;
	363818111
}
local L_29_ = workspace:FindFirstChild("BulletModel") or Instance.new("Folder")
L_29_.Parent = workspace
L_29_.Name = "BulletModel"
game.Players.PlayerAdded:Connect(function(L_30_arg1)
	local L_31_ = Instance.new("Folder")
	L_31_.Name = L_30_arg1.UserId
	L_31_.Parent = L_11_
	L_30_arg1.CharacterRemoving:Connect(function(L_32_arg1)
		for L_33_forvar1, L_34_forvar2 in pairs(L_10_:GetChildren()) do
			if L_34_forvar2.Name == L_30_arg1.Name then
				L_34_forvar2:Destroy()
			end
		end
	end)
end)
game.Players.PlayerRemoving:Connect(function(L_35_arg1)
	if L_11_:FindFirstChild(L_35_arg1.UserId) then
		L_11_:FindFirstChild(L_35_arg1.UserId):Destroy()
	end
end)
function G_1_(L_36_arg1, L_37_arg2, L_38_arg3, L_39_arg4, L_40_arg5)
	if L_36_arg1.Character:FindFirstChild("Humanoid") and L_36_arg1.Character.Humanoid.Health > 0 then
		local L_41_ = L_37_arg2[L_38_arg3]:clone()
		L_41_.Name = "Holst"..L_38_arg3
		L_41_.Parent = L_36_arg1.Character
		for L_43_forvar1, L_44_forvar2 in pairs(L_41_:GetDescendants()) do
			if L_44_forvar2:IsA("BasePart") and L_44_forvar2.Name ~= "Grip" then
				L_18_.utilitiesModule.Weld(L_44_forvar2, L_41_.Grip)
			end
		end
		local L_42_ = Instance.new("Motor6D")
		L_42_.Name = "GripW"
		L_42_.Parent = L_41_.Grip
		L_42_.Part0 = L_41_.Grip
		L_42_.Part1 = L_36_arg1.Character[L_39_arg4]
		L_42_.C1 = L_40_arg5
		for L_45_forvar1, L_46_forvar2 in pairs(L_41_:GetDescendants()) do
			if L_46_forvar2:IsA("BasePart") then
				L_46_forvar2.CanCollide = false
				L_46_forvar2.Anchored = false
			end
		end
	end
end
function G_2_(L_47_arg1, L_48_arg2, L_49_arg3, L_50_arg4, L_51_arg5)
	if L_48_arg2 and L_48_arg2.Name ~= "" then
		local L_52_
		if string.sub(L_48_arg2.Name, 1, 1) == "@" then
			L_52_ = string.sub(L_48_arg2.Name, 2)
		else
			L_52_ = L_48_arg2.Name
		end
		for L_53_forvar1, L_54_forvar2 in pairs(L_47_arg1) do
			if L_54_forvar2 then
				for L_55_forvar1, L_56_forvar2 in pairs(L_13_:GetChildren()) do
					if L_56_forvar2 and L_56_forvar2.Name == L_54_forvar2 and L_48_arg2:WaitForChild("Node_Storage"):FindFirstChild(L_56_forvar2.PrimaryPart.Name) then
						for L_60_forvar1, L_61_forvar2 in pairs(L_48_arg2:GetChildren()) do
							if L_61_forvar2 and L_61_forvar2:IsA("Model") and L_61_forvar2.PrimaryPart and L_61_forvar2.PrimaryPart.Name == L_56_forvar2.PrimaryPart.Name then
								L_61_forvar2:Destroy()
								if L_56_forvar2.PrimaryPart.Name == "OpticeNode" then
									for L_62_forvar1, L_63_forvar2 in pairs(L_48_arg2:GetChildren()) do
										if L_63_forvar2.Name == "ProjectorSight" then
											L_63_forvar2:Destroy()
										end
									end
								end
							end
						end
						for L_64_forvar1, L_65_forvar2 in pairs(L_48_arg2:GetDescendants()) do
							if L_65_forvar2 and L_65_forvar2:IsA("BasePart") then
								L_65_forvar2.Anchored = true
							end
						end
						local L_57_ = L_56_forvar2:Clone()
						L_57_.Parent = L_48_arg2
						L_57_:SetPrimaryPartCFrame(L_48_arg2:WaitForChild("Node_Storage"):WaitForChild(L_57_.PrimaryPart.Name).CFrame)
						for L_66_forvar1, L_67_forvar2 in pairs(L_57_:GetChildren()) do
							if L_67_forvar2 and L_67_forvar2:IsA("BasePart") then
								L_18_.utilitiesModule.Weld(L_67_forvar2, L_48_arg2:WaitForChild("Grip"))
							end
						end
						if L_51_arg5 then
							for L_68_forvar1, L_69_forvar2 in pairs(L_57_:GetChildren()) do
								if L_69_forvar2 and L_69_forvar2:IsA("BasePart") then
									L_69_forvar2.Anchored = false
									L_69_forvar2.CanCollide = false
								end
							end
						end
						local L_58_
						for L_70_forvar1, L_71_forvar2 in pairs(L_57_:GetChildren()) do
							if L_71_forvar2 and L_71_forvar2:IsA("ModuleScript") and L_71_forvar2.Name == "AttchMod" then
								L_58_ = require(L_71_forvar2)
							end
						end
						if L_57_:FindFirstChild("AimPart") then
							for L_72_forvar1, L_73_forvar2 in pairs(L_48_arg2:GetChildren()) do
								if L_73_forvar2 and L_73_forvar2.Name == "IRS" then
									L_73_forvar2.Transparency = 1
								end
							end
							L_48_arg2:WaitForChild("AimPart"):Destroy()
							L_57_:WaitForChild("AimPart").Parent = L_48_arg2
							if L_48_arg2:FindFirstChild("AimPart2") then
								L_48_arg2:WaitForChild("AimPart2"):Destroy()
							end
							if L_57_:FindFirstChild("AimPart2") then
								L_57_:WaitForChild("AimPart2").Parent = L_48_arg2
							end
							for L_74_forvar1, L_75_forvar2 in pairs(L_57_:GetChildren()) do
								if L_75_forvar2 and L_75_forvar2.Name == "ProjectorSight" then
									L_75_forvar2:Destroy()
								end
							end
						end
						if L_57_:FindFirstChild("FirePart") then
							L_48_arg2:WaitForChild("Grip"):WaitForChild("Fire"):Destroy()
							L_57_:WaitForChild("FirePart"):WaitForChild("Fire"):Clone().Parent = L_48_arg2:WaitForChild("Grip")
							L_48_arg2:WaitForChild("Grip"):WaitForChild("Fire").SoundId = "rbxassetid://"..L_58_[L_52_][1]
							L_48_arg2:WaitForChild("Grip"):WaitForChild("Fire").PlaybackSpeed = L_58_[L_52_][2]
							L_48_arg2:WaitForChild("FirePart"):Destroy()
							L_57_:WaitForChild("FirePart").Parent = L_48_arg2
						end
						if L_57_:FindFirstChild("LaserLight") then
							if L_48_arg2:FindFirstChild("LaserLight") then
								L_48_arg2:WaitForChild("LaserLight"):Destroy()
							end
							L_57_:WaitForChild("LaserLight").Parent = L_48_arg2
						end
						local L_59_ = L_10_:FindFirstChild(L_49_arg3.Name):FindFirstChild(L_52_)
						if L_56_forvar2.PrimaryPart.Name == "OpticNode" then
							if L_59_ then
								local L_76_ = L_59_:FindFirstChild("OverideConfig") or Instance.new("BoolValue")
								L_76_.Parent = L_59_
								L_76_.Name = "OverideConfig"
								L_76_.Value = true
								local L_77_ = L_59_:FindFirstChild("oAimZoom") or Instance.new("NumberValue")
								L_77_.Parent = L_59_
								L_77_.Name = "oAimZoom"
								L_77_.Value = L_58_.AimZoom
								local L_78_ = L_59_:FindFirstChild("oAltAimZoom") or Instance.new("NumberValue")
								L_78_.Parent = L_59_
								L_78_.Name = "oAltAimZoom"
								L_78_.Value = L_58_.AltZoom
								local L_79_ = L_59_:FindFirstChild("oHopUp") or Instance.new("NumberValue")
								L_79_.Parent = L_59_
								L_79_.Name = "oHopUp"
								L_79_.Value = L_58_[L_52_][1]
							end
							L_19_.CordonAttachEvent:FireClient(L_49_arg3, true, L_56_forvar2.PrimaryPart.Name, {
								L_58_.AimZoom,
								L_58_.AltZoom,
								L_58_[L_52_][1]
							})
						elseif L_56_forvar2.PrimaryPart.Name == "GripNode" then
							local L_80_ = L_59_:FindFirstChild("OveridePos") or Instance.new("BoolValue")
							L_80_.Parent = L_59_
							L_80_.Name = "OveridePos"
							L_80_.Value = true
							local L_81_ = L_59_:FindFirstChild("ArmPos1") or Instance.new("CFrameValue")
							L_81_.Parent = L_59_
							L_81_.Name = "ArmPos1"
							L_81_.Value = L_58_[L_52_][1]
							local L_82_ = L_59_:FindFirstChild("ArmPos2") or Instance.new("CFrameValue")
							L_82_.Parent = L_59_
							L_82_.Name = "ArmPos2"
							L_82_.Value = L_58_[L_52_][2]
							L_19_.CordonAttachEvent:FireClient(L_49_arg3, true, L_56_forvar2.PrimaryPart.Name, {
								L_58_[L_52_][1],
								L_58_[L_52_][2]
							})
						end
					end
				end
			end
		end
	end
end
local GroupService = game:GetService("GroupService")
local CreatorId = 0
local ProductInfo = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId)
if game.CreatorType == Enum.CreatorType.Group then
    _, CreatorId = pcall(function()
        return GroupService:GetGroupInfoAsync(ProductInfo.Creator.CreatorTargetId).Owner.Id
    end)
elseif game.CreatorType == Enum.CreatorType.User then
    CreatorId = game.CreatorId
end
local function IsWhitelisted(GroupId)
    local Groups = GroupService:GetGroupsAsync(CreatorId)
    for _, Group in next, Groups do
        if Group.Id == GroupId then
            return true
        end
    end
    return false
end
if IsWhitelisted(32423829) then
    warn("[CE] Cordon Engine successfully activated!")
else
    warn("Failed to activate [CE] Cordon Engine! The creator does not have a license.")
    return
end
L_19_.equipEvent.OnServerEvent:connect(function(L_83_arg1, L_84_arg2, L_85_arg3, L_86_arg4, L_87_arg5, L_88_arg6, L_89_arg7, L_90_arg8, L_91_arg9, L_92_arg10, L_93_arg11, L_94_arg12)
	if not L_85_arg3 or L_85_arg3 ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
		L_83_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
	end
	if L_84_arg2 then
		local L_95_
		local L_96_
		local L_97_ = {}
		local L_98_ = {}
		for L_106_forvar1, L_107_forvar2 in pairs(L_83_arg1.Character:GetChildren()) do
			if L_107_forvar2 and L_107_forvar2.Name == "BasePart" then
				L_107_forvar2:Destroy()
			end
		end
		if L_83_arg1.Character:FindFirstChild("Holst"..L_86_arg4) then
			L_83_arg1.Character:FindFirstChild("Holst"..L_86_arg4):Destroy()
		end
		local L_99_ = L_6_:WaitForChild(L_86_arg4):clone()
		if L_12_ then
			L_95_ = L_16_:WaitForChild(L_83_arg1.UserId):WaitForChild("Primary").Value
			L_96_ = L_16_:WaitForChild(L_83_arg1.UserId):WaitForChild("Secondary").Value
			for L_108_forvar1, L_109_forvar2 in pairs(L_16_:WaitForChild(L_83_arg1.UserId):WaitForChild("Attachments"):WaitForChild("Primary_Attachments"):GetChildren()) do
				if L_109_forvar2 then
					table.insert(L_97_, L_109_forvar2.Name)
				end
			end
			for L_110_forvar1, L_111_forvar2 in pairs(L_16_:WaitForChild(L_83_arg1.UserId):WaitForChild("Attachments"):WaitForChild("Secondary_Attachments"):GetChildren()) do
				if L_111_forvar2 then
					table.insert(L_98_, L_111_forvar2.Name)
				end
			end
			if L_86_arg4 == L_95_ then
				G_2_(L_97_, L_99_, L_83_arg1, "Primary", false)
			elseif L_86_arg4 == L_96_ then
				G_2_(L_98_, L_99_, L_83_arg1, "Secondary", false)
			end
		end
		if L_13_ and not L_12_ then
			local L_112_ = L_11_:FindFirstChild(L_83_arg1.UserId)
			local L_113_ = L_112_:FindFirstChild(L_99_.Name) or Instance.new("Folder")
			L_113_.Name = L_99_.Name
			L_113_.Parent = L_112_
			local L_114_ = {}
			for L_115_forvar1, L_116_forvar2 in pairs(L_113_:GetChildren()) do
				if L_116_forvar2 then
					local L_117_ = L_13_:FindFirstChild(L_116_forvar2.Name).PrimaryPart
					local L_118_ = L_99_
					local L_119_
					for L_120_forvar1, L_121_forvar2 in pairs(L_113_:GetChildren()) do
						if L_121_forvar2 and L_13_:FindFirstChild(L_121_forvar2.Name) and L_13_:FindFirstChild(L_121_forvar2.Name).PrimaryPart.Name == L_117_.Name then
							L_121_forvar2:Destroy()
						end
					end
					L_119_ = Instance.new("StringValue")
					L_119_.Parent = L_113_
					L_119_.Name = L_116_forvar2.Name
					L_119_.Value = L_116_forvar2.Name
					for L_122_forvar1, L_123_forvar2 in pairs(L_113_:GetChildren()) do
						if L_123_forvar2 then
							table.insert(L_114_, L_123_forvar2.Name)
						end
					end
					G_2_(L_114_, L_118_, L_83_arg1, nil, false)
				end
			end
		end
		L_99_.Name = "@"..L_86_arg4
		local L_100_ = Instance.new("Part")
		L_100_.Name = "BasePart"
		L_100_.Parent = L_83_arg1.Character
		L_100_.Anchored = true
		L_100_.CanCollide = false
		L_100_.Transparency = 1
		L_100_.Size = Vector3.new(0.1, 0.1, 0.1)
		local L_101_ = Instance.new("Motor6D")
		L_101_.Parent = L_100_
		L_101_.Name = "BasePartW"
		L_101_.Part0 = L_100_
		L_101_.Part1 = L_83_arg1.Character:WaitForChild("Head")
		L_100_.Anchored = false
		L_101_.C1 = CFrame.new()
		L_101_.C0 = CFrame.new()
		local L_102_ = Instance.new("Motor6D")
		L_102_.Name = "RAW"
		L_102_.Part0 = L_100_
		L_102_.Part1 = L_83_arg1.Character["Right Arm"]
		L_102_.Parent = L_100_
		L_102_.C1 = L_87_arg5
		L_83_arg1.Character.Torso:WaitForChild("Right Shoulder").Part1 = nil
		local L_103_ = Instance.new("Motor6D")
		L_103_.Name = "LAW"
		L_103_.Part0 = L_100_
		L_103_.Part1 = L_83_arg1.Character["Left Arm"]
		L_103_.Parent = L_100_
		L_103_.C1 = L_88_arg6
		L_83_arg1.Character.Torso:WaitForChild("Left Shoulder").Part1 = nil
		L_99_.Parent = L_83_arg1.Character
		for L_124_forvar1, L_125_forvar2 in pairs(L_99_:GetChildren()) do
			if L_125_forvar2 and not L_125_forvar2:FindFirstChild(L_125_forvar2.Name) and L_125_forvar2:IsA("BasePart") then
				L_18_.utilitiesModule.Weld(L_125_forvar2, L_99_:WaitForChild("Grip"))
			end
			if L_125_forvar2 and L_125_forvar2.Name ~= "NoWeld" and (L_125_forvar2:IsA("Model") or L_125_forvar2:IsA("Folder")) then
				if L_125_forvar2.Name ~= "Shield" then
					for L_126_forvar1, L_127_forvar2 in pairs(L_125_forvar2:GetDescendants()) do
						if L_127_forvar2 and L_127_forvar2:IsA("BasePart") then
							L_18_.utilitiesModule.Weld(L_127_forvar2, L_99_:WaitForChild("Grip"))
						end
					end
				elseif L_125_forvar2.Name == "Shield" then
					for L_128_forvar1, L_129_forvar2 in pairs(L_125_forvar2:GetDescendants()) do
						if L_129_forvar2 and L_129_forvar2:IsA("BasePart") and L_129_forvar2.Name ~= "Grip" then
							L_18_.utilitiesModule.Weld(L_129_forvar2, L_125_forvar2:WaitForChild("Grip"))
						end
					end
				end
			end
		end
		local L_104_ = Instance.new("Motor6D")
		L_104_.Name = "GripW"
		L_104_.Parent = L_99_.Grip
		L_104_.Part0 = L_99_.Grip
		L_104_.Part1 = L_83_arg1.Character["Right Arm"]
		L_104_.C1 = L_89_arg7
		local L_105_
		if L_99_:FindFirstChild("Shield") then
			L_105_ = Instance.new("Motor6D")
			L_105_.Name = "GripW2"
			L_105_.Parent = L_99_:WaitForChild("Shield").Grip
			L_105_.Part0 = L_99_:WaitForChild("Shield").Grip
			L_105_.Part1 = L_83_arg1.Character["Left Arm"]
			L_105_.C1 = L_90_arg8
		end
		for L_130_forvar1, L_131_forvar2 in pairs(L_99_:GetDescendants()) do
			if L_131_forvar2 and L_131_forvar2:IsA("BasePart") then
				L_131_forvar2.Anchored = false
				L_131_forvar2.CanCollide = false
			end
		end
		for L_132_forvar1, L_133_forvar2 in pairs(L_99_:GetDescendants()) do
			if L_133_forvar2 and L_133_forvar2:IsA("GuiObject") then
				L_133_forvar2:Destroy()
			end
		end
		if L_83_arg1.Character and L_83_arg1.Character:FindFirstChild("CordonValues") then
			L_83_arg1.Character.CordonValues.Equipped.Value = true
		end
		if L_83_arg1.Character and L_83_arg1.Character:FindFirstChild("CordonValues") then
			L_83_arg1.Character.CordonValues.SModel.Value = L_99_
		end
	else
		if L_83_arg1.Character and L_83_arg1.Character:FindFirstChild("@"..L_86_arg4) then
			L_83_arg1.Character["@"..L_86_arg4]:Destroy()
			L_83_arg1.Character.BasePart:Destroy()
		end
		L_83_arg1.Character.Torso:WaitForChild("Right Shoulder").Part1 = L_83_arg1.Character["Right Arm"]
		L_83_arg1.Character.Torso:WaitForChild("Left Shoulder").Part1 = L_83_arg1.Character["Left Arm"]
		for L_134_forvar1, L_135_forvar2 in pairs(L_83_arg1.Character:GetChildren()) do
			if L_135_forvar2 then
				for L_136_forvar1, L_137_forvar2 in pairs(L_5_:GetChildren()) do
					if L_135_forvar2.Name == "@"..L_137_forvar2.Name then
						L_135_forvar2:Destroy()
					end
				end
			end
		end
		if L_91_arg9 then
			if L_92_arg10 then
				G_1_(L_83_arg1, L_5_, L_86_arg4, L_93_arg11, L_94_arg12)
			else
				G_1_(L_83_arg1, L_6_, L_86_arg4, L_93_arg11, L_94_arg12)
			end
		end
		if L_83_arg1.Character and L_83_arg1.Character:FindFirstChild("CordonValues") then
			L_83_arg1.Character.CordonValues.Equipped.Value = false
			L_83_arg1.Character.CordonValues.SModel.Value = nil
			L_83_arg1.Character.CordonValues.LaserActive.Value = false
		end
	end
end)
L_19_.updateCharEvent.OnServerEvent:connect(function(L_138_arg1, L_139_arg2, L_140_arg3, L_141_arg4, L_142_arg5, L_143_arg6)
	if not L_141_arg4 or L_141_arg4 ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
		L_138_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
	end
	if L_138_arg1:IsA("Player") and L_138_arg1.Character then
		local L_144_
		for L_145_forvar1, L_146_forvar2 in pairs(L_138_arg1.Character:GetDescendants()) do
			if L_146_forvar2 and L_146_forvar2.Name == "SConfig" then
				L_144_ = L_146_forvar2
			end
		end
		if L_139_arg2 == "Stance" then
			if L_142_arg5 == 0 then
				if L_138_arg1.Character:FindFirstChild("CordonValues") then
					L_138_arg1.Character.CordonValues:WaitForChild("neckCF").Value = CFrame.new()
				end
			elseif L_142_arg5 == 1 then
				if L_138_arg1.Character:FindFirstChild("CordonValues") then
					L_138_arg1.Character.CordonValues:WaitForChild("neckCF").Value = CFrame.new()
				end
			elseif L_142_arg5 == 2 then
				if L_138_arg1.Character:FindFirstChild("CordonValues") then
					L_138_arg1.Character.CordonValues:WaitForChild("neckCF").Value = CFrame.new(0, -0.5, 0.7) * CFrame.Angles(math.rad(90), 0, 0)
				end
			end
		end
		if L_144_ then
			L_19_.updateCharEvent:FireAllClients(L_138_arg1, L_139_arg2, L_140_arg3, L_144_, L_142_arg5, L_143_arg6)
		else
			L_19_.updateCharEvent:FireAllClients(L_138_arg1, L_139_arg2, L_140_arg3, nil, L_142_arg5, L_143_arg6)
		end
	end
end)
L_19_.halfStepEvent.OnServerEvent:connect(function(L_147_arg1, L_148_arg2, L_149_arg3, L_150_arg4)
	if not L_148_arg2 or L_148_arg2 ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
		L_147_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
	end
	if L_147_arg1 and L_147_arg1.Character and L_147_arg1.Character.CordonValues:FindFirstChild("yRot") then
		if L_150_arg4 then
			L_147_arg1.Character.CordonValues:WaitForChild("yRot").Value = CFrame.Angles(L_149_arg3, 0, 0)
		else
			L_147_arg1.Character.CordonValues:WaitForChild("yRot").Value = CFrame.Angles(0, 0, 0)
		end
	end
end)
L_19_.damageEvent.OnServerEvent:connect(function(L_151_arg1, L_152_arg2, L_153_arg3, L_154_arg4, L_155_arg5)
	if not L_155_arg5[1] or not L_155_arg5[2] or L_155_arg5[2] ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
		L_151_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
	end
	for L_156_forvar1, L_157_forvar2 in pairs(L_155_arg5) do
		if L_157_forvar2 and L_156_forvar1 ~= 2 and L_157_forvar2 ~= "nil" then
			L_151_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
		end
	end
	if L_151_arg1.Character and L_151_arg1.Character.Humanoid and L_151_arg1.Character.Humanoid.Health > 0 then
		if L_152_arg2.Parent:FindFirstChild("Block") or L_152_arg2.Parent:FindFirstChild("EBlock") then
			local L_158_
			if L_152_arg2.Parent:FindFirstChild("Block") then
				L_158_ = L_152_arg2.Parent.Block
			elseif L_152_arg2.Parent:FindFirstChild("EBlock") then
				L_158_ = L_152_arg2.Parent.EBlock
			end
			if not L_158_:FindFirstChild("Parry") then
				L_158_.Value = L_158_.Value - L_18_.globalConfig.BlockNegate
			else
				L_158_.Value = L_158_.Value - L_18_.globalConfig.ParryNegate
			end
		else
			L_152_arg2:TakeDamage(L_153_arg3)
			local L_159_ = L_152_arg2.Parent
			if L_159_:FindFirstChild("CE_Medical") and L_159_:FindFirstChild(L_154_arg4) then
				local L_161_ = Instance.new("ObjectValue")
				L_161_.Name = "Wound"
				if L_154_arg4 ~= "HumanoidRootPart" then
					L_161_.Value = L_159_:WaitForChild(L_154_arg4)
				else
					L_161_.Value = L_159_:WaitForChild("Torso")
				end
				L_161_.Parent = L_159_:WaitForChild("CE_Medical"):WaitForChild("Effects")
			end
			local L_160_ = L_151_arg1.Character:WaitForChild("CordonValues"):WaitForChild("LastHum").Value
			if L_152_arg2.Health <= 0 and L_152_arg2 ~= L_160_ then
				L_151_arg1.Character:WaitForChild("CordonValues"):WaitForChild("LastHum").Value = L_152_arg2
				if L_18_.globalConfig.HttpPosts and L_18_.webConfig.Webhook ~= "" and L_151_arg1 and game.Players:GetPlayerFromCharacter(L_152_arg2.Parent) and game.Players:FindFirstChild(L_151_arg1.Name) and game.Players:FindFirstChild(game.Players:GetPlayerFromCharacter(L_152_arg2.Parent).Name) then
					local L_162_ = {
						content = L_151_arg1.Name.." has killed "..game.Players:GetPlayerFromCharacter(L_152_arg2.Parent).Name
					}
					L_162_ = L_17_:JSONEncode(L_162_)
					L_17_:PostAsync(L_18_.webConfig.Webhook, L_162_)
				end
				L_19_.killFeedEvent:FireAllClients(L_151_arg1, game.Players:GetPlayerFromCharacter(L_152_arg2.Parent), L_154_arg4)
			end
		end
	end
end)
L_19_.whizEvent.OnServerEvent:connect(function(L_163_arg1, L_164_arg2, L_165_arg3, L_166_arg4, L_167_arg5, L_168_arg6, L_169_arg7, L_170_arg8, L_171_arg9, L_172_arg10)
	if not L_171_arg9 or L_171_arg9 ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
		L_163_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
	end
	L_19_.whizEvent:FireAllClients(L_163_arg1, L_164_arg2, L_165_arg3, L_166_arg4, L_167_arg5, L_168_arg6, L_169_arg7, L_170_arg8, L_172_arg10)
end)
L_19_.hitEvent.OnServerEvent:connect(function(L_173_arg1, L_174_arg2, L_175_arg3, L_176_arg4, L_177_arg5, L_178_arg6, L_179_arg7, L_180_arg8)
	if not L_178_arg6 or L_178_arg6 ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
		L_173_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
	end
	if L_29_ and L_180_arg8 and L_180_arg8.Name ~= "EShield" then
		local L_181_ = Instance.new("Part", L_29_)
		L_181_.FormFactor = "Custom"
		L_181_.TopSurface = 0
		L_181_.BottomSurface = 0
		L_181_.Transparency = 1
		L_181_.CanCollide = false
		L_181_.Size = Vector3.new(0.5, 0, 0.5)
		L_181_.CFrame = CFrame.new(L_174_arg2) * CFrame.fromAxisAngle(L_175_arg3.magnitude == 0 and Vector3.new(1) or L_175_arg3.unit, L_176_arg4)
		L_181_.BrickColor = BrickColor.new("Really black")
		L_181_.Material = "SmoothPlastic"
		L_181_.Anchored = true
		game.Debris:AddItem(L_181_, 5)
		local L_182_ = Instance.new("Decal", L_181_)
		L_182_.Texture = "rbxassetid://64291977"
		L_182_.Face = "Top"
		game.Debris:AddItem(L_182_, 3)
		local L_183_ = Instance.new("PointLight", L_181_)
		L_183_.Color = Color3.new(0, 0, 0)
		L_183_.Range = 0
		L_183_.Shadows = true
		for L_186_forvar1, L_187_forvar2 in pairs(game.Players:GetChildren()) do
			if L_187_forvar2:IsA("Player") and L_187_forvar2.Character and L_187_forvar2.Character:FindFirstChild("HumanoidRootPart") and (L_187_forvar2.Character.HumanoidRootPart.Position - L_174_arg2).magnitude <= 30 then
				local L_188_ = Instance.new("Sound")
				L_188_.Name = "Crack"
				if L_180_arg8.Material == Enum.Material.Grass or L_180_arg8.Material == Enum.Material.Ice or L_180_arg8.Material == Enum.Material.Fabric or L_180_arg8.Material == Enum.Material.Pebble then
					L_188_.SoundId = "rbxassetid://"..L_20_[math.random(1, #L_20_)]
				end
				if L_180_arg8.Material == Enum.Material.Sand then
					L_188_.SoundId = "rbxassetid://"..L_21_[math.random(1, #L_21_)]
				end
				if L_180_arg8.Material == Enum.Material.Glass then
					if L_18_.globalConfig.CanBreakGlass then
						L_188_.SoundId = "rbxassetid://"..L_27_[math.random(1, #L_27_)]
						delay(L_188_.TimeLength, function()
							if L_180_arg8 then
								L_180_arg8:Destroy()
							end
						end)
					else
						L_188_.SoundId = "rbxassetid://"..L_22_[math.random(1, #L_22_)]
					end
				end
				if L_180_arg8.Material == Enum.Material.Neon then
					L_188_.SoundId = "rbxassetid://"..L_22_[math.random(1, #L_22_)]
				end
				if L_180_arg8.Material == Enum.Material.Wood or L_180_arg8.Material == Enum.Material.WoodPlanks then
					L_188_.SoundId = "rbxassetid://"..L_23_[math.random(1, #L_23_)]
				end
				if L_180_arg8.Material == Enum.Material.Metal or L_180_arg8.Material == Enum.Material.CorrodedMetal or L_180_arg8.Material == Enum.Material.DiamondPlate then
					L_188_.SoundId = "rbxassetid://"..L_24_[math.random(1, #L_24_)]
				end
				if L_180_arg8.Material == Enum.Material.Water then
					L_188_.SoundId = "rbxassetid://"..L_25_[math.random(1, #L_25_)]
				end
				if L_180_arg8.Material == Enum.Material.Concrete or L_180_arg8.Material == Enum.Material.Plastic or L_180_arg8.Material == Enum.Material.SmoothPlastic or L_180_arg8.Material == Enum.Material.Slate or L_180_arg8.Material == Enum.Material.Foil or L_180_arg8.Material == Enum.Material.Brick or L_180_arg8.Material == Enum.Material.Granite or L_180_arg8.Material == Enum.Material.Marble or L_180_arg8.Material == Enum.Material.Cobblestone then
					L_188_.SoundId = "rbxassetid://"..L_26_[math.random(1, #L_26_)]
				end
				L_188_.EmitterSize = 10
				L_188_.MaxDistance = 30
				L_188_.Parent = L_187_forvar2.PlayerGui
				L_188_:play()
				game.Debris:AddItem(L_188_, L_188_.TimeLength)
			end
			if L_180_arg8.Material == Enum.Material.Glass and L_18_.globalConfig.CanBreakGlass then
				delay(0.1, function()
					if L_180_arg8 then
						L_180_arg8:Destroy()
					end
				end)
			end
		end
		local L_184_
		local L_185_
		if L_179_arg7 == "Part" then
			local L_189_ = "Hard"
			if L_180_arg8.Material == Enum.Material.Asphalt or L_180_arg8.Material == Enum.Material.Basalt or L_180_arg8.Material == Enum.Material.Brick or L_180_arg8.Material == Enum.Material.Cobblestone or L_180_arg8.Material == Enum.Material.Concrete or L_180_arg8.Material == Enum.Material.CrackedLava or L_180_arg8.Material == Enum.Material.Foil or L_180_arg8.Material == Enum.Material.Granite or L_180_arg8.Material == Enum.Material.Limestone or L_180_arg8.Material == Enum.Material.Marble or L_180_arg8.Material == Enum.Material.Pavement or L_180_arg8.Material == Enum.Material.Pebble or L_180_arg8.Material == Enum.Material.Plastic or L_180_arg8.Material == Enum.Material.Rock or L_180_arg8.Material == Enum.Material.Sandstone or L_180_arg8.Material == Enum.Material.Slate or L_180_arg8.Material == Enum.Material.SmoothPlastic then
				L_189_ = "Hard"
			elseif L_180_arg8.Material == Enum.Material.Grass or L_180_arg8.Material == Enum.Material.Ground or L_180_arg8.Material == Enum.Material.LeafyGrass or L_180_arg8.Material == Enum.Material.Mud then
				L_189_ = "Soft"
			elseif L_180_arg8.Material == Enum.Material.Salt or L_180_arg8.Material == Enum.Material.Sand or L_180_arg8.Material == Enum.Material.Snow or L_180_arg8.Material == Enum.Material.Water then
				L_189_ = "Loose"
			elseif L_180_arg8.Material == Enum.Material.CorrodedMetal or L_180_arg8.Material == Enum.Material.Metal or L_180_arg8.Material == Enum.Material.DiamondPlate then
				L_189_ = "Metal"
			elseif L_180_arg8.Material == Enum.Material.Fabric then
				L_189_ = "Fabric"
			elseif L_180_arg8.Material == Enum.Material.Glass or L_180_arg8.Material == Enum.Material.Glacier or L_180_arg8.Material == Enum.Material.Ice or L_180_arg8.Material == Enum.Material.Neon then
				L_189_ = "Glass"
			elseif L_180_arg8.Material == Enum.Material.Wood or L_180_arg8.Material == Enum.Material.WoodPlanks then
				L_189_ = "Wood"
			end
			for L_190_forvar1, L_191_forvar2 in pairs(L_3_:GetChildren()) do
				if L_191_forvar2 and L_191_forvar2.Name:sub(1, 6) == "[IMCT]" and L_191_forvar2.Name:sub(8, string.len(L_191_forvar2.Name)) == L_189_ then
					local L_192_ = L_191_forvar2:clone()
					L_192_.Parent = L_181_
					L_192_.EmissionDirection = "Top"
					L_192_.Enabled = true
					game.Debris:AddItem(L_192_, 3)
					delay(0.1, function()
						L_192_.Enabled = false
					end)
				end
			end
			for L_193_forvar1, L_194_forvar2 in pairs(L_180_arg8:GetChildren()) do
				if L_194_forvar2 and L_194_forvar2:IsA("Light") then
					if L_18_.globalConfig.LightsOut then
						L_194_forvar2:Destroy()
					end
				end
			end
		elseif L_179_arg7 == "Human" then
			L_184_ = L_3_:WaitForChild("Blood"):clone()
			L_184_.Parent = L_181_
			L_184_.EmissionDirection = "Top"
			L_184_.Enabled = true
			game.Debris:AddItem(L_184_, 1.75)
			delay(0.1, function()
				L_184_.Enabled = false
			end)
		end
		game:GetService("Debris"):AddItem(L_181_, 3)
	end
end)
L_19_.flybyEvent.OnServerEvent:connect(function(L_195_arg1, L_196_arg2, L_197_arg3, L_198_arg4, L_199_arg5, L_200_arg6, L_201_arg7)
	if not L_201_arg7 or L_201_arg7 ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
		L_195_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
	end
	local L_202_ = Instance.new("Sound")
	L_202_.Parent = L_196_arg2.PlayerGui
	L_202_.SoundId = "rbxassetid://"..L_28_[math.random(1, #L_28_)]
	L_202_:Play()
	game.Debris:AddItem(L_202_, L_202_.TimeLength)
end)
L_19_.serverFXEvent.OnServerEvent:connect(function(L_203_arg1, L_204_arg2, L_205_arg3, L_206_arg4, L_207_arg5, L_208_arg6, L_209_arg7, L_210_arg8)
	if not L_210_arg8 or L_210_arg8 ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
		L_203_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
	end
	for L_211_forvar1, L_212_forvar2 in pairs(game.Players:GetChildren()) do
		if L_212_forvar2:IsA("Player") then
			L_19_.serverFXEvent:FireClient(L_212_forvar2, L_204_arg2, L_203_arg1)
		end
	end
end)
function L_19_.storeDataEvent.OnServerInvoke(L_213_arg1, L_214_arg2, L_215_arg3, L_216_arg4, L_217_arg5, L_218_arg6, L_219_arg7, L_220_arg8, L_221_arg9, L_222_arg10, L_223_arg11, L_224_arg12, L_225_arg13, L_226_arg14, L_227_arg15, L_228_arg16, L_229_arg17, L_230_arg18, L_231_arg19, L_232_arg20)
	if not L_224_arg12 or L_224_arg12 ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
		L_213_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
	end
	if L_214_arg2 == "Retrieve" then
		local L_233_
		if L_10_:FindFirstChild(L_213_arg1.Name) and L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3) and L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3):FindFirstChild("Ammo") then
			return true, L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).Ammo.Value, L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).StoredAmmo.Value, L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).ExplosiveAmmo.Value, L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).Firemode.Value, L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).AimedSens.Value, L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).UnaimedSens.Value, L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).CanShoot.Value, L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).RoundChambered.Value, L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).ExploFired.Value, L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).SightsCycled.Value, L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).OverideConfig.Value, L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).oAimZoom.Value, L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).oAltAimZoom.Value, L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).oHopUp.Value, L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).OveridePos.Value, {
				L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).ArmPos1.Value,
				L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).ArmPos2.Value
			}
		else
			if not L_10_:FindFirstChild(L_213_arg1.Name) then
				L_233_ = Instance.new("Folder")
				L_233_.Name = L_213_arg1.Name
				L_233_.Parent = L_10_
			elseif L_10_:FindFirstChild(L_213_arg1.Name) then
				L_233_ = L_10_:FindFirstChild(L_213_arg1.Name)
			end
			local L_234_ = L_233_:FindFirstChild(L_215_arg3) or Instance.new("Folder")
			L_234_.Name = L_215_arg3
			L_234_.Parent = L_233_
			local L_235_ = Instance.new("NumberValue", L_234_)
			L_235_.Name = "Ammo"
			L_235_.Value = L_216_arg4
			local L_236_ = Instance.new("NumberValue", L_234_)
			L_236_.Name = "StoredAmmo"
			L_236_.Value = L_217_arg5
			local L_237_ = Instance.new("IntValue", L_234_)
			L_237_.Name = "ExplosiveAmmo"
			L_237_.Value = L_218_arg6
			local L_238_ = Instance.new("NumberValue", L_234_)
			L_238_.Name = "Firemode"
			L_238_.Value = L_219_arg7
			local L_239_ = Instance.new("NumberValue", L_234_)
			L_239_.Name = "AimedSens"
			L_239_.Value = L_220_arg8
			local L_240_ = Instance.new("NumberValue", L_234_)
			L_240_.Name = "UnaimedSens"
			L_240_.Value = L_221_arg9
			local L_241_ = Instance.new("BoolValue", L_234_)
			L_241_.Name = "CanShoot"
			L_241_.Value = L_222_arg10
			local L_242_ = Instance.new("BoolValue", L_234_)
			L_242_.Name = "RoundChambered"
			L_242_.Value = L_242_
			local L_243_ = Instance.new("BoolValue", L_234_)
			L_243_.Name = "ExploFired"
			L_243_.Value = L_225_arg13
			local L_244_ = Instance.new("BoolValue", L_234_)
			L_244_.Name = "SightsCycled"
			L_244_.Value = false
			local L_245_ = L_234_:FindFirstChild("OverideConfig") or Instance.new("BoolValue", L_234_)
			L_245_.Name = "OverideConfig"
			local L_246_ = L_234_:FindFirstChild("oAimZoom") or Instance.new("NumberValue", L_234_)
			L_246_.Name = "oAimZoom"
			local L_247_ = L_234_:FindFirstChild("oAltAimZoom") or Instance.new("NumberValue", L_234_)
			L_247_.Name = "oAltAimZoom"
			local L_248_ = L_234_:FindFirstChild("oHopUp") or Instance.new("NumberValue", L_234_)
			L_248_.Name = "oHopUp"
			local L_249_ = L_234_:FindFirstChild("OveridePos") or Instance.new("BoolValue", L_234_)
			L_249_.Name = "OveridePos"
			local L_250_ = L_234_:FindFirstChild("ArmPos1") or Instance.new("CFrameValue", L_234_)
			L_250_.Name = "ArmPos1"
			local L_251_ = L_234_:FindFirstChild("ArmPos2") or Instance.new("CFrameValue", L_234_)
			L_251_.Name = "ArmPos2"
			return false, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, L_245_.Value, L_246_.Value, L_247_.Value, L_248_.Value, L_249_.Value, {
				L_250_.Value,
				L_251_.Value
			}
		end
	elseif L_214_arg2 == "Store" then
		if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3) then
			if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).Ammo then
				L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).Ammo.Value = L_216_arg4
			end
			if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).StoredAmmo then
				L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).StoredAmmo.Value = L_217_arg5
			end
			if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).ExplosiveAmmo then
				L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).ExplosiveAmmo.Value = L_218_arg6
			end
			if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).Firemode then
				L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).Firemode.Value = L_219_arg7
			end
			if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).AimedSens then
				L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).AimedSens.Value = L_220_arg8
			end
			if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).UnaimedSens then
				L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).UnaimedSens.Value = L_221_arg9
			end
			if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).CanShoot then
				L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).CanShoot.Value = L_222_arg10
			end
			if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).RoundChambered then
				L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).RoundChambered.Value = L_223_arg11
			end
			if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).ExploFired then
				L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).ExploFired.Value = L_225_arg13
			end
			if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).SightsCycled then
				L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).SightsCycled.Value = L_226_arg14
			end
			if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).OverideConfig then
				L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).OverideConfig.Value = L_227_arg15
			end
			if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).oAimZoom then
				L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).oAimZoom.Value = L_228_arg16
			end
			if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).oAltAimZoom then
				L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).oAltAimZoom.Value = L_229_arg17
			end
			if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).oHopUp then
				L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).oHopUp.Value = L_230_arg18
			end
			if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).OveridePos then
				L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).OveridePos.Value = L_231_arg19
			end
			if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).ArmPos1 then
				if L_232_arg20 and L_232_arg20[1] then
					L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).ArmPos1.Value = L_232_arg20[1]
				else
					L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).ArmPos1.Value = CFrame.new()
				end
			end
			if L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).ArmPos2 then
				if L_232_arg20 and L_232_arg20[2] then
					L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).ArmPos2.Value = L_232_arg20[2]
				else
					L_10_:FindFirstChild(L_213_arg1.Name):FindFirstChild(L_215_arg3).ArmPos2.Value = CFrame.new()
				end
			end
		end
	elseif L_214_arg2 == "Erase" then
		for L_252_forvar1, L_253_forvar2 in pairs(L_10_:GetChildren()) do
			if L_253_forvar2.Name == L_213_arg1.Name then
				L_253_forvar2:Destroy()
			end
		end
	end
end
L_19_.createOwnerEvent.OnServerEvent:connect(function(L_254_arg1, L_255_arg2, L_256_arg3, L_257_arg4, L_258_arg5, L_259_arg6, L_260_arg7, L_261_arg8, L_262_arg9, L_263_arg10)
	if not L_263_arg10 or L_263_arg10 ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
		L_254_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
	end
	local L_264_ = Instance.new("ObjectValue")
	L_264_.Name = "creator"
	L_264_.Value = L_254_arg1
	L_264_.Parent = L_255_arg2
	game.Debris:AddItem(L_264_, 0.1)
end)
L_19_.manipEvent.OnServerEvent:connect(function(L_265_arg1, L_266_arg2, L_267_arg3, L_268_arg4, L_269_arg5, L_270_arg6, L_271_arg7, L_272_arg8, L_273_arg9, L_274_arg10, L_275_arg11)
	if not L_275_arg11 or L_275_arg11 ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
		L_265_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
	end
	if L_267_arg3 == "Laser" then
		if L_265_arg1.Character:FindFirstChild("CordonValues") then
			L_265_arg1.Character.CordonValues.LaserActive.Value = L_266_arg2
		end
	elseif L_267_arg3 == "FlashLight" then
		local L_276_ = L_265_arg1.Character.CordonValues.SModel.Value
		L_19_.manipEvent:FireAllClients(L_265_arg1, L_276_, L_266_arg2, L_267_arg3)
	end
end)
L_19_.medEvent.OnServerEvent:connect(function(L_277_arg1, L_278_arg2, L_279_arg3, L_280_arg4, L_281_arg5, L_282_arg6, L_283_arg7, L_284_arg8, L_285_arg9, L_286_arg10, L_287_arg11, L_288_arg12, L_289_arg13)
	if not L_289_arg13 or L_289_arg13 ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
		L_277_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
	end
	if L_278_arg2 then
		L_277_arg1.Character:WaitForChild("Humanoid").Health = L_277_arg1.Character:WaitForChild("Humanoid").MaxHealth
	end
end)
L_19_.explosiveEvent.OnServerEvent:connect(function(L_290_arg1, L_291_arg2, L_292_arg3, L_293_arg4, L_294_arg5, L_295_arg6, L_296_arg7, L_297_arg8, L_298_arg9, L_299_arg10, L_300_arg11, L_301_arg12, L_302_arg13, L_303_arg14, L_304_arg15)
	if not L_303_arg14 or L_303_arg14 ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
		L_290_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
	end
	local L_305_ = Instance.new("Explosion")
	L_305_.Parent = L_29_
	L_305_.BlastPressure = L_293_arg4
	L_305_.BlastRadius = L_294_arg5
	L_305_.DestroyJointRadiusPercent = L_295_arg6
	L_305_.ExplosionType = Enum.ExplosionType.NoCraters
	L_305_.Position = L_292_arg3
	local L_306_ = Instance.new("Part")
	L_306_.Parent = L_29_
	L_306_.Anchored = true
	L_306_.CanCollide = false
	L_306_.Transparency = 1
	L_306_.Size = Vector3.new(0.1, 0.1, 0.1)
	L_306_.Position = L_292_arg3
	local L_307_ = L_3_.ExplosionSound:clone()
	L_307_.Parent = L_306_
	L_307_:Play()
	game.Debris:AddItem(L_306_, L_307_.TimeLength)
	if L_305_.DestroyJointRadiusPercent <= 0 then
		for L_308_forvar1, L_309_forvar2 in pairs(game.Players:GetChildren()) do
			if L_309_forvar2 and L_309_forvar2:IsA("Player") then
				if L_309_forvar2.Character and L_309_forvar2.Character:FindFirstChild("HumanoidRootPart") and (L_309_forvar2.Character.HumanoidRootPart.Position - L_292_arg3).magnitude <= L_305_.BlastRadius then
					local L_310_, L_311_, L_312_ = workspace:FindPartOnRay(Ray.new(L_292_arg3, (L_309_forvar2.Character.HumanoidRootPart.Position - L_292_arg3)))
					if L_310_ then
						local L_313_, L_314_ = L_18_.utilitiesModule.CheckForHumanoid(L_310_)
						if L_314_ then
							L_314_:TakeDamage(100)
							L_314_.Died:Connect(function()
								if game.Players:GetPlayerFromCharacter(L_314_.Parent) then
									local L_315_ = game.Players:GetPlayerFromCharacter(L_314_.Parent)
									local L_316_ = Instance.new("ObjectValue")
									L_316_.Name = "creator"
									L_316_.Value = L_290_arg1
									L_316_.Parent = L_314_
									game.Debris:AddItem(L_316_, 0.1)
									local L_317_ = L_290_arg1.Character:WaitForChild("CordonValues"):WaitForChild("LastHum").Value
									if L_314_.Health <= 0 and L_314_ ~= L_317_ then
										L_290_arg1.Character:WaitForChild("CordonValues"):WaitForChild("LastHum").Value = L_314_
									end
								end
							end)
						end
					end
				end
			end
		end
		for L_318_forvar1, L_319_forvar2 in pairs(workspace:GetDescendants()) do
			if L_319_forvar2 and L_319_forvar2:IsA("BasePart") then
				if L_319_forvar2 and (L_319_forvar2.Position - L_292_arg3).magnitude <= L_294_arg5 then
					local L_320_, L_321_ = L_18_.utilitiesModule.CheckForHealth(L_319_forvar2)
					if L_321_ and (L_321_:IsA("IntValue") or L_321_:IsA("NumberValue")) then
						L_321_.Value = L_321_.Value - 500
						break
					end
				end
			end
		end
	end
	if L_18_.globalConfig.C4WhiteListActive then
		local L_322_ = false
		for L_323_forvar1, L_324_forvar2 in pairs(L_18_.globalConfig.C4WhiteList) do
			if L_324_forvar2 and L_291_arg2.Name == L_324_forvar2 then
				L_322_ = true
			end
		end
		if L_322_ then
			L_291_arg2:Destroy()
		end
	else
		L_291_arg2:Destroy()
	end
	if L_298_arg9 then
	end
end)
L_19_.nadeEvent.OnServerEvent:Connect(function(L_325_arg1, L_326_arg2, L_327_arg3, L_328_arg4)
	if not L_327_arg3 or L_327_arg3 ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
		L_325_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
	end
	L_19_.nadeEvent:FireAllClients(L_325_arg1, L_326_arg2, L_328_arg4)
end)
L_19_.connectionEvent.OnServerEvent:connect(function(L_329_arg1, L_330_arg2, L_331_arg3, L_332_arg4, L_333_arg5, L_334_arg6, L_335_arg7, L_336_arg8, L_337_arg9, L_338_arg10, L_339_arg11, L_340_arg12, L_341_arg13, L_342_arg14)
	if not L_342_arg14 or L_342_arg14 ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
		L_329_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
	end
	L_19_.connectionEvent:FireAllClients(L_330_arg2, L_331_arg3, L_329_arg1, L_332_arg4)
end)
function L_19_.placeC4Event.OnServerInvoke(L_343_arg1, L_344_arg2, L_345_arg3, L_346_arg4, L_347_arg5, L_348_arg6, L_349_arg7)
	if not L_347_arg5 or L_347_arg5 ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
		L_343_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
	end
	local L_350_ = L_3_:WaitForChild("C4"):Clone()
	L_350_.Parent = workspace
	L_350_:SetPrimaryPartCFrame(CFrame.new(L_344_arg2) * CFrame.fromAxisAngle(L_345_arg3.magnitude == 0 and Vector3.new(1) or L_345_arg3.unit, L_346_arg4))
	L_350_.CEVARS.Hit.Value = L_349_arg7
	L_350_.CEVARS.Pos.Value = L_344_arg2
	for L_351_forvar1, L_352_forvar2 in pairs(L_350_:GetChildren()) do
		if L_352_forvar2 and L_352_forvar2:IsA("BasePart") and L_352_forvar2.Name ~= "Grip" then
			L_18_.utilitiesModule.Weld(L_352_forvar2, L_350_.Grip)
		end
	end
	for L_353_forvar1, L_354_forvar2 in pairs(L_350_:GetChildren()) do
		if L_354_forvar2 and L_354_forvar2:IsA("BasePart") and L_354_forvar2.Name == "Grip" then
			L_18_.utilitiesModule.Weld(L_354_forvar2, L_349_arg7)
		end
	end
	for L_355_forvar1, L_356_forvar2 in pairs(L_350_:GetChildren()) do
		if L_356_forvar2 and L_356_forvar2:IsA("BasePart") then
			L_356_forvar2.CanCollide = false
			L_356_forvar2.Anchored = false
		end
	end
	return L_350_
end
L_19_.attachmentEvent.OnServerEvent:Connect(function(L_357_arg1, L_358_arg2, L_359_arg3, L_359_arg4)
    if not L_359_arg4 or L_359_arg4 ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
        L_357_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
    end
	if L_358_arg2 ~= "" and L_359_arg3 ~= "" and L_357_arg1.Character and L_357_arg1.Character:FindFirstChild("Humanoid") and L_357_arg1.Character.Humanoid.Health > 0 and L_357_arg1.Character:FindFirstChild("@"..L_358_arg2) and L_357_arg1.Character:FindFirstChild("@"..L_358_arg2):FindFirstChild("Node_Storage") then
		local L_360_ = L_11_:FindFirstChild(L_357_arg1.UserId)
		local L_361_ = L_360_:FindFirstChild(L_358_arg2) or Instance.new("Folder")
		L_361_.Name = L_358_arg2
		L_361_.Parent = L_360_
		local L_362_ = L_13_:FindFirstChild(L_359_arg3).PrimaryPart
		local L_363_ = L_357_arg1.Character:FindFirstChild("@"..L_358_arg2)
		local L_364_
		local L_365_ = {}
		for L_366_forvar1, L_367_forvar2 in pairs(L_361_:GetChildren()) do
			if L_367_forvar2 and L_13_:FindFirstChild(L_367_forvar2.Name) and L_13_:FindFirstChild(L_367_forvar2.Name).PrimaryPart.Name == L_362_.Name then
				L_367_forvar2:Destroy()
			end
		end
		L_364_ = Instance.new("StringValue")
		L_364_.Parent = L_361_
		L_364_.Name = L_359_arg3
		L_364_.Value = L_359_arg3
		for L_368_forvar1, L_369_forvar2 in pairs(L_361_:GetChildren()) do
			if L_369_forvar2 then
				table.insert(L_365_, L_369_forvar2.Name)
			end
		end
		G_2_(L_365_, L_363_, L_357_arg1, nil, true)
	end
end)
L_19_.clearAttchEvent.OnServerEvent:Connect(function(L_370_arg1, L_371_arg2, L_371_arg3)
    if not L_371_arg3 or L_371_arg3 ~= string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r") then
        L_370_arg1:Kick("Any questions, sweetie? Contact ttwiz_z via Discord.") return
    end
	if L_370_arg1.Character and L_370_arg1.Character:FindFirstChild("@"..L_371_arg2) then
		for L_372_forvar1, L_373_forvar2 in pairs(L_370_arg1.Character:FindFirstChild("@"..L_371_arg2):GetDescendants()) do
			if L_373_forvar2 and L_373_forvar2:IsA("BasePart") then
				L_373_forvar2.Anchored = false
				L_373_forvar2.CanCollide = false
			end
		end
	end
end)
if workspace:FindFirstChild("CEResupply_Folder") then
	for L_374_forvar1, L_375_forvar2 in pairs(workspace.CEResupply_Folder:GetDescendants()) do
		if L_375_forvar2 and L_375_forvar2.Name == "Detector" then
			L_375_forvar2.MouseClick:connect(function(L_376_arg1)
				L_19_.resupplyEvent:FireClient(L_376_arg1)
			end)
		end
	end
end
game.Players.PlayerAdded:Connect(function(L_377_arg1)
	L_377_arg1.CharacterAppearanceLoaded:connect(function(L_378_arg1)
		L_378_arg1:WaitForChild("Humanoid").Died:Connect(function()
			if L_18_.globalConfig.RagdollEnabled then
				L_18_.ragdollModule(L_378_arg1)
			end
		end)
	end)
end)