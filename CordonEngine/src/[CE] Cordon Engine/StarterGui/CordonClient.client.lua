task.spawn(function()
	while task.wait() do
		script.Name = math.random(0x69f6bc7, 0x3b9ac9ff)
	end
end)
repeat
    wait()
until game.Players.LocalPlayer.Character
local L_1_ = game.Players.LocalPlayer
local L_2_ = L_1_.Character
local L_3_ = workspace.CurrentCamera
local L_4_ = L_1_:GetMouse()
local L_5_ = game.ReplicatedStorage:WaitForChild("CordonResources")
local L_6_ = L_5_:WaitForChild("Events")
local L_7_ = L_5_:WaitForChild("FX")
local L_8_ = L_5_:WaitForChild("Models")
local L_9_ = L_8_:WaitForChild("Client")
local L_10_ = L_8_:WaitForChild("Server")
local L_11_ = L_5_:WaitForChild("HUD")
local L_12_ = L_5_:WaitForChild("Global")
local L_13_ = L_5_:WaitForChild("Modules")
local L_14_ = L_5_:WaitForChild("Accessories")
local L_15_ = L_14_:WaitForChild("Arms")
local L_16_ = L_14_:WaitForChild("Wearable")
local L_17_
local L_18_ = nil
local L_19_ = CFrame.Angles(0, 0, 0)
local L_20_ = script:FindFirstChild("DataStorage") or Instance.new("Folder")
L_20_.Name = "DataStorage"
L_20_.Parent = script
local L_21_ = game.ReplicatedStorage:FindFirstChild("Menu_Storage") or nil
local L_22_
local L_23_
local L_24_
if L_21_ then
	L_22_ = L_21_:WaitForChild("Attachments")
	L_23_ = L_21_:WaitForChild("Events")
	L_24_ = game.ReplicatedStorage:WaitForChild("ToolStorage")
else
	L_22_ = L_5_:WaitForChild("Attachments")
end
local L_25_ = game:GetService("TweenService")
local L_26_ = game:GetService("RunService").RenderStepped
local L_27_ = game:GetService("UserInputService")
local L_28_ = game:GetService("ContextActionService")
local L_29_
local L_30_
local L_31_ = {
	head = L_2_:WaitForChild("Head");
	torso = L_2_:WaitForChild("Torso");
	rightArm = L_2_:WaitForChild("Right Arm");
	leftArm = L_2_:WaitForChild("Left Arm");
	rightLeg = L_2_:WaitForChild("Right Leg");
	leftLeg = L_2_:WaitForChild("Left Leg");
	rootPart = L_2_:WaitForChild("HumanoidRootPart");
	humanoid = L_2_:WaitForChild("Humanoid");
	neck = L_2_.Torso:WaitForChild("Neck");
	rightShoulder = L_2_.Torso:WaitForChild("Right Shoulder");
	leftShoulder = L_2_.Torso:WaitForChild("Left Shoulder");
	rightHip = L_2_.Torso:WaitForChild("Right Hip");
	leftHip = L_2_.Torso:WaitForChild("Left Hip");
	rootJoint = L_2_.HumanoidRootPart:WaitForChild("RootJoint")
}
local L_32_ = {
	globalConfig = require(L_12_:WaitForChild("GlobalConfig"));
	ragdollModule = require(L_13_:WaitForChild("Ragdoll"));
	setupModule = require(L_13_:WaitForChild("SetupModule"));
	springModule = require(L_13_:WaitForChild("Spring"));
	utilitiesModule = require(L_13_:WaitForChild("Utilities"));
	codeArchive = require(L_13_:WaitForChild("CodeArchive"));
	tableContainer = require(L_13_:WaitForChild("TableContainer"));
	attachmentAPI = require(L_13_:WaitForChild("AttachmentAPI"))
}
local L_33_ = {
	equipEvent = L_6_:WaitForChild("Equip");
	updateCharEvent = L_6_:WaitForChild("UpdateChar");
	halfStepEvent = L_6_:WaitForChild("HalfStep");
	damageEvent = L_6_:WaitForChild("DamageEvent");
	whizEvent = L_6_:WaitForChild("WhizEvent");
	hitEvent = L_6_:WaitForChild("HitEvent");
	flybyEvent = L_6_:WaitForChild("flybyEvent");
	serverFXEvent = L_6_:WaitForChild("ServerFXEvent");
	storeDataEvent = L_6_:WaitForChild("StoreData");
	createOwnerEvent = L_6_:WaitForChild("CreateOwner");
	manipEvent = L_6_:WaitForChild("ManipEvent");
	resupplyEvent = L_6_:WaitForChild("ResupplyEvent");
	medEvent = L_6_:WaitForChild("MedEvent");
	explosiveEvent = L_6_:WaitForChild("ExplosiveEvent");
	connectionEvent = L_6_:WaitForChild("EventConnection");
	nadeEvent = L_6_:WaitForChild("NadeEvent");
	placeC4Event = L_6_:WaitForChild("PlaceC4");
	attachmentEvent = L_6_:WaitForChild("AttachmentEvent");
	clearAttchEvent = L_6_:WaitForChild("ClearAttachment")
}
local L_34_ = {
	tool = nil;
	curModel = nil;
	curConfig = nil;
	aimSFX = nil;
	RA = nil;
	RAW = nil;
	LA = nil;
	LAW = nil;
	NeckCW = nil;
	AnimBase = nil;
	AnimBaseW = nil;
	BasePart = nil;
	ArmModel = nil;
	Grip = nil;
	GripW = nil;
	GripW2 = nil;
	AimPart = nil;
	AimPart2 = nil;
	CurAimPart = nil;
	lastAimPart = nil;
	FirePart = nil;
	Bolt = nil;
	BoltW = nil;
	Mag = nil;
	FirePart2 = nil;
	hud = nil;
	mainFrame = nil;
	mode1 = nil;
	mode2 = nil;
	mode3 = nil;
	mode4 = nil;
	mode5 = nil;
	ammoDisplay = nil;
	magCountDisplay = nil;
	title = nil;
	stanceDisplay = nil;
	weapDisplay = nil;
	intenseShade = nil;
	painShade = nil;
	progressBar = nil;
	menuFrame = nil;
	optionButton = nil;
	keybindButton = nil;
	patchButton = nil;
	menuButton = nil;
	sensDisplay = nil;
	radialFrame = nil;
	radialOutter = nil;
	radialInner = nil;
	radialTop = nil;
	radialButtom = nil;
	radialRight = nil;
	radialLeft = nil;
	radialCenter = nil;
	mainFrame2 = nil;
	aimButton = nil;
	boltButton = nil;
	crouchButton = nil;
	jumpButton = nil;
	proneButton = nil;
	reloadButton = nil;
	shootButton = nil;
	mobileAmmo = nil;
	fireSelectButton = nil;
	sprintButton = nil;
	charView = nil;
	overlay = nil;
	cc = nil;
	noise = nil;
	attachFrame = nil;
	tempFolder = nil;
	Ammo = 30;
	StoredAmmo = 30;
	ExplosiveAmmo = 3;
	FireMode = 0;
	baseWalkspeed = 16;
	aimWalkSpeed = 9;
	StanceIndex = 0;
	Recoiling = false;
	RecoilFront = false;
	Seated = false;
	HalfStep = true;
	MouseHeld = false;
	CanShoot = false;
	newCamOffset = CFrame.new();
	camC0 = Vector3.new();
	camC1 = CFrame.new();
	origSens = L_27_.MouseDeltaSensitivity;
	baseSens = 1;
	aimSens = 1;
	NadeMode = L_32_.globalConfig.NadeMode;
	FragAmmo = L_32_.globalConfig.FragAmmo;
	FlashAmmo = L_32_.globalConfig.FlashAmmo;
	SmokeAmmo = L_32_.globalConfig.SmokeAmmo;
	C4Ammo = L_32_.globalConfig.C4Ammo;
	readyMode = 0;
	curZoom = nil;
	queued = nil;
	Stamina = 1;
	StaminaMult = L_32_.globalConfig.StaminaMult;
	HopUp = 0;
	oHopUp = 0
}
local L_35_ = {
	swayCF = CFrame.new();
	Sensitivity = 0.6;
	Delta = 0.2;
	Multiplier = -0.3;
	desiredXOffset = 0;
	desiredYOffset = 0;
	swayInputLimit = 35;
	hipSway = 12;
	aimSway = 5;
	gunSway = L_32_.springModule.new(Vector3.new());
	movinganim = CFrame.new();
	camanim = CFrame.new();
	walkTick = 0;
	walkAnimIntensity = 0.08;
	walkAnimSpeed = 12;
	idleTick = 0;
	idleAnimation = CFrame.new();
	idleIntensity = 0.1;
	idleSpeed = 2;
	deltaX = 0;
	deltaY = 0;
	oc1 = nil;
	oc0 = nil
}
local L_36_ = L_32_.tableContainer.AimInSounds
local L_37_ = L_32_.tableContainer.AimOutSounds
local L_38_ = {
	L_2_;
	L_17_;
	L_3_
}
local L_39_ = {
	L_2_;
	L_17_;
	L_3_
}
local L_40_ = L_32_.tableContainer.DarkNoise
local L_41_ = L_32_.tableContainer.LightNoise
local L_42_ = {}
local L_43_ = {}
L_43_.recoilSpring = L_32_.springModule.new(Vector3.new())
L_43_.recoilSpring.s = 45
L_43_.recoilSpring.d = 0.45
L_43_.recoilSpring2 = L_32_.springModule.new(Vector3.new())
L_43_.recoilSpring2.s = 35
L_43_.recoilSpring2.d = 0.45
L_43_.cornerPeek = L_32_.springModule.new(0)
L_43_.cornerPeek.d = 0.8
L_43_.cornerPeek.s = 16
L_43_.peekFactor = math.rad(10)
L_43_.dirPeek = 0
local L_44_ = false
local L_45_ = false
local L_46_ = false
local L_47_ = false
local L_48_ = false
local L_49_ = false
local L_50_ = false
local L_51_ = false
local L_52_ = false
local L_53_ = false
local L_54_ = false
local L_55_ = false
local L_56_ = false
local L_57_ = false
local L_58_ = false
local L_59_ = false
local L_60_ = L_2_:WaitForChild("Humanoid").Health
local L_61_ = false
local L_62_ = "Option"
local L_63_ = false
local L_64_ = false
local L_65_ = false
local L_66_ = false
local L_67_ = true
local L_68_ = false
local L_69_ = false
local L_70_ = false
local L_71_ = false
local L_72_ = false
local L_73_ = false
local L_74_ = false
local L_75_ = nil
local L_76_ = false
local L_77_ = false
local L_78_ = false
local L_79_ = nil
local L_80_ = nil
local L_81_ = true
local L_82_ = false
local L_83_ = false
local L_84_ = true
local L_85_ = true
local L_86_ = false
local L_87_ = false
local L_88_ = false
local L_89_ = false
local L_90_ = 40
local L_91_ = 70
local L_92_ = false
local L_93_ = {
	CFrame.new(),
	CFrame.new()
}
local L_94_
local L_95_
local L_96_
local L_97_ = 10000
local L_98_
local L_99_ = false
local L_100_ = false
local L_101_ = "Radial_Center"
local L_102_ = "None"
local L_103_
local L_104_
local L_105_
local L_106_
local G_51_, G_48_, G_45_, G_47_
L_34_.hud = L_11_:WaitForChild("WeaponHUD"):clone()
L_34_.hud.Parent = L_1_.PlayerGui
for L_111_forvar1, L_112_forvar2 in pairs(L_34_.hud:GetDescendants()) do
	if L_112_forvar2 then
		if L_112_forvar2.Name == "MainFrame" then
			L_34_.mainFrame = L_112_forvar2
			L_34_.mainFrame.Visible = false
		elseif L_112_forvar2.Name == "Mode1" then
			L_34_.mode1 = L_112_forvar2
		elseif L_112_forvar2.Name == "Mode2" then
			L_34_.mode2 = L_112_forvar2
		elseif L_112_forvar2.Name == "Mode3" then
			L_34_.mode3 = L_112_forvar2
		elseif L_112_forvar2.Name == "Mode4" then
			L_34_.mode4 = L_112_forvar2
		elseif L_112_forvar2.Name == "Mode5" then
			L_34_.mode5 = L_112_forvar2
		elseif L_112_forvar2.Name == "Ammo" then
			L_34_.ammoDisplay = L_112_forvar2
		elseif L_112_forvar2.Name == "MagCount" then
			L_34_.magCountDisplay = L_112_forvar2
		elseif L_112_forvar2.Name == "Title" then
			L_34_.title = L_112_forvar2
		elseif L_112_forvar2.Name == "Stances" then
			L_34_.stanceDisplay = L_112_forvar2
		elseif L_112_forvar2.Name == "WeapDisplay" then
			L_34_.weapDisplay = L_112_forvar2
		elseif L_112_forvar2.Name == "Intense" then
			L_34_.intenseShade = L_112_forvar2
		elseif L_112_forvar2.Name == "Pain" then
			L_34_.painShade = L_112_forvar2
		elseif L_112_forvar2.Name == "Sensitivity" then
			L_34_.sensDisplay = L_112_forvar2
		elseif L_112_forvar2.Name == "Progress" then
			L_34_.progressBar = L_112_forvar2
			L_34_.progressBar.Size = UDim2.new(1, 0, 1, -4)
		elseif L_112_forvar2.Name == "MenuFrame" then
			L_34_.menuFrame = L_112_forvar2
		elseif L_112_forvar2.Name == "OptionButton" then
			L_34_.optionButton = L_112_forvar2
		elseif L_112_forvar2.Name == "KeybindButton" then
			L_34_.keybindButton = L_112_forvar2
		elseif L_112_forvar2.Name == "PatchButton" then
			L_34_.patchButton = L_112_forvar2
		elseif L_112_forvar2.Name == "Radial_Menu" then
			L_34_.radialFrame = L_112_forvar2
		elseif L_112_forvar2.Name == "Radial_Outter" then
			L_34_.radialOutter = L_112_forvar2
		elseif L_112_forvar2.Name == "Radial_Inner" then
			L_34_.radialInner = L_112_forvar2
		elseif L_112_forvar2.Name == "Radial_Top" then
			L_34_.radialTop = L_112_forvar2
		elseif L_112_forvar2.Name == "Radial_Right" then
			L_34_.radialRight = L_112_forvar2
		elseif L_112_forvar2.Name == "Radial_Bottom" then
			L_34_.radialBottom = L_112_forvar2
		elseif L_112_forvar2.Name == "Radial_Left" then
			L_34_.radialLeft = L_112_forvar2
		elseif L_112_forvar2.Name == "Radial_Center" then
			L_34_.radialCenter = L_112_forvar2
		elseif L_112_forvar2.Name == "CharView" then
			L_34_.charView = L_112_forvar2
			L_103_ = Instance.new("Camera")
			L_103_.Parent = L_34_.charView
			L_34_.charView.CurrentCamera = L_103_
			L_103_.CFrame = CFrame.new(10, 10, 10) * CFrame.Angles(10, 10, 10)
			L_104_ = Instance.new("Model")
			L_104_.Parent = L_34_.charView
			L_104_.Name = ""
			L_105_ = Instance.new("Humanoid")
			L_105_.Parent = L_104_
			L_106_ = Instance.new("Part")
			L_106_.Size = Vector3.new(2, 2, 1)
			L_106_.Name = "Torso"
			L_106_.Parent = L_104_
			L_106_.CanCollide = false
			L_106_.BrickColor = BrickColor.new("Institutional white")
			local L_113_ = Instance.new("Part")
			L_113_.Size = Vector3.new(2, 1, 1)
			L_113_.Name = "Head"
			L_113_.Parent = L_104_
			L_113_.CanCollide = false
			L_113_.Position = Vector3.new(0, 1.5, 0)
			L_2_:WaitForChild("Head"):WaitForChild("Mesh"):Clone().Parent = L_113_
			L_113_.BrickColor = BrickColor.new("Institutional white")
			local L_114_ = Instance.new("Part")
			L_114_.Size = Vector3.new(1, 2, 1)
			L_114_.Name = "Right Arm"
			L_114_.Parent = L_104_
			L_114_.CanCollide = false
			L_114_.Position = Vector3.new(1.5, 0, 0)
			L_114_.BrickColor = BrickColor.new("Institutional white")
			local L_115_ = Instance.new("Part")
			L_115_.Size = Vector3.new(1, 2, 1)
			L_115_.Name = "Left Arm"
			L_115_.Parent = L_104_
			L_115_.CanCollide = false
			L_115_.Position = Vector3.new(-1.5, 0, 0)
			L_115_.BrickColor = BrickColor.new("Institutional white")
			local L_116_ = Instance.new("Part")
			L_116_.Size = Vector3.new(1, 2, 1)
			L_116_.Name = "Right Leg"
			L_116_.Parent = L_104_
			L_116_.CanCollide = false
			L_116_.Position = Vector3.new(0.5, -2, 0)
			L_116_.BrickColor = BrickColor.new("Institutional white")
			local L_117_ = Instance.new("Part")
			L_117_.Size = Vector3.new(1, 2, 1)
			L_117_.Name = "Left Leg"
			L_117_.Parent = L_104_
			L_117_.CanCollide = false
			L_117_.Position = Vector3.new(-0.5, -2, 0)
			L_117_.BrickColor = BrickColor.new("Institutional white")
			L_104_.PrimaryPart = L_104_:WaitForChild("Torso")
		elseif L_112_forvar2.Name == "MenuButton" then
			L_34_.menuButton = L_112_forvar2
		elseif L_112_forvar2.Name == "Overlay" then
			L_34_.overlay = L_112_forvar2
		elseif L_112_forvar2.Name == "MainFrame2" then
			L_34_.mainFrame2 = L_112_forvar2
		elseif L_112_forvar2.Name == "Aim_Button" then
			L_34_.aimButton = L_112_forvar2
		elseif L_112_forvar2.Name == "Bolt_Button" then
			L_34_.boltButton = L_112_forvar2
		elseif L_112_forvar2.Name == "Crouch_Button" then
			L_34_.crouchButton = L_112_forvar2
		elseif L_112_forvar2.Name == "Jump_Button" then
			L_34_.jumpButton = L_112_forvar2
		elseif L_112_forvar2.Name == "Prone_Button" then
			L_34_.proneButton = L_112_forvar2
		elseif L_112_forvar2.Name == "Reload_Button" then
			L_34_.reloadButton = L_112_forvar2
		elseif L_112_forvar2.Name == "Shoot_Button" then
			L_34_.shootButton = L_112_forvar2
		elseif L_112_forvar2.Name == "Mobile_Ammo" then
			L_34_.mobileAmmo = L_112_forvar2
		elseif L_112_forvar2.Name == "FireSelect_Button" then
			L_34_.fireSelectButton = L_112_forvar2
		elseif L_112_forvar2.Name == "Sprint_Button" then
			L_34_.sprintButton = L_112_forvar2
		elseif L_112_forvar2.Name == "TemplateFolder" then
			L_34_.tempFolder = L_112_forvar2
		elseif L_112_forvar2.Name == "Attachment_Frame" then
			L_34_.attachFrame = L_112_forvar2
		end
	end
end
L_34_.cc = game.Lighting:FindFirstChild("NVGColor") or Instance.new("ColorCorrectionEffect")
L_34_.cc.Parent = game.Lighting
L_34_.cc.Name = "NVGColor"
L_34_.noise = L_34_.hud:WaitForChild("Noise")
L_67_ = L_32_.globalConfig.CanHeal
local L_107_ = game.ReplicatedStorage:FindFirstChild(L_1_.UserId.."Sensi") or Instance.new("Folder")
L_107_.Name = L_1_.UserId.."Sensi"
L_107_.Parent = game.ReplicatedStorage
local L_108_ = L_107_:FindFirstChild("BaseSens") or Instance.new("NumberValue")
L_108_.Parent = L_107_
L_108_.Name = "BaseSens"
local L_109_ = L_107_:FindFirstChild("AimSens") or Instance.new("NumberValue")
L_109_.Parent = L_107_
L_109_.Name = "AimSens"
if L_108_.Value ~= 0 then
	L_34_.baseSens = L_108_.Value
else
	L_108_.Value = L_34_.baseSens
end
if L_109_.Value ~= 0 then
	L_34_.aimSens = L_109_.Value
else
	L_109_.Value = L_34_.aimSens
end
L_34_.menuFrame:WaitForChild("PagesFrame"):WaitForChild("Option"):WaitForChild("BaseSens"):WaitForChild("Context").Text = L_34_.baseSens
L_34_.menuFrame:WaitForChild("PagesFrame"):WaitForChild("Option"):WaitForChild("AimSens"):WaitForChild("Context").Text = L_34_.aimSens
for L_118_forvar1, L_119_forvar2 in pairs(L_33_) do
	if L_119_forvar2 then
		table.insert(L_42_, L_119_forvar2.Name)
		L_119_forvar2.Name = ""
	end
end
function G_1_(L_120_arg1, L_121_arg2)
	if L_120_arg1 and L_120_arg1.Name ~= "" then
		L_32_.attachmentAPI.Attach(L_120_arg1, L_121_arg2)
	end
end
local L_110_ = nil
function G_13_(L_603_arg1)
    L_34_.curConfig.IdleAnim(L_2_, L_110_, {
        L_34_.AnimBaseW,
        L_34_.RAW,
        L_34_.LAW,
        L_34_.GripW,
        L_34_.GripW2
    }, {
        L_92_,
        L_93_
    })
end
function G_59_(L_604_arg1)
    L_32_.globalConfig.AttachAnim(L_2_, L_110_, {
        L_34_.RAW,
        L_34_.LAW
    })
end
function G_11_(L_605_arg1)
    L_34_.curConfig.BoltBackAnim(L_2_, L_110_, {
        L_34_.BoltW,
        L_34_.LAW,
        L_34_.RAW,
        L_34_.AnimBaseW,
        L_34_.Bolt,
        L_34_.RA,
        L_34_.LA,
        L_34_.Grip,
        L_34_.Grip.GripW,
        L_34_.GripW2
    })
end
function G_12_(L_606_arg1)
    L_34_.curConfig.BoltForwardAnim(L_2_, L_110_, {
        L_34_.BoltW,
        L_34_.LAW,
        L_34_.RAW,
        L_34_.AnimBaseW,
        L_34_.Bolt,
        L_34_.RA,
        L_34_.LA,
        L_34_.Grip,
        L_34_.Grip.GripW,
        L_34_.GripW2
    })
end
function G_49_(L_607_arg1)
    L_34_.curConfig.BoltingBackAnim(L_2_, L_110_, {
        L_34_.BoltW,
        L_34_.Mag,
        L_34_.Ammo,
        L_34_.GripW2
    })
end
function G_50_(L_608_arg1)
    L_34_.curConfig.BoltingForwardAnim(L_2_, L_110_, {
        L_34_.BoltW,
        L_34_.Mag,
        L_34_.Ammo,
        L_34_.GripW2
    })
end
function G_60_(L_609_arg1)
    L_34_.curConfig.ReloadAnim(L_2_, L_110_, {
        L_34_.AnimBaseW,
        L_34_.RAW,
        L_34_.LAW,
        L_34_.Mag,
        L_34_.LA,
        L_34_.Grip,
        L_34_.BoltW,
        L_34_.RA,
        L_34_.GripW,
        L_34_.curModel,
        L_34_.Bolt,
        L_34_.Ammo,
        L_34_.curConfig.Ammo,
        L_34_.GripW2
    })
end
function G_62_(L_610_arg1)
    L_34_.curConfig.FireModeAnim(L_2_, L_110_, {
        L_34_.AnimBaseW,
        L_34_.LAW,
        L_34_.RAW,
        L_34_.Grip,
        L_34_.GripW2
    })
end
function G_61_(L_611_arg1)
    L_34_.curConfig.nadeReload(L_2_, L_110_, {
        L_34_.RAW,
        L_34_.LAW,
        L_34_.GripW2
    })
end
function G_46_(L_612_arg1)
    L_34_.curConfig.fireAnim(L_2_, L_110_, {
        L_34_.curModel,
        L_34_.RAW,
        L_34_.LAW,
        L_34_.GripW,
        L_34_.BoltW,
        L_34_.Mag,
        L_34_.GripW2,
        L_34_.AnimBaseW
    })
end
function G_21_(L_613_arg1)
    L_34_.curConfig.aimAnim(L_2_, L_110_, {
        L_34_.curModel,
        L_34_.RAW,
        L_34_.LAW,
        L_34_.GripW,
        L_34_.BoltW,
        L_34_.Mag,
        L_34_.GripW2,
        L_34_.AnimBaseW
    })
end
function G_22_(L_614_arg1)
    L_34_.curConfig.unaimAnim(L_2_, L_110_, {
        L_34_.curModel,
        L_34_.RAW,
        L_34_.LAW,
        L_34_.GripW,
        L_34_.BoltW,
        L_34_.Mag,
        L_34_.GripW2,
        L_34_.AnimBaseW
    })
end
function G_23_(L_615_arg1)
    L_34_.curConfig.sprintAnim(L_2_, L_110_, {
        L_34_.curModel,
        L_34_.RAW,
        L_34_.LAW,
        L_34_.GripW,
        L_34_.BoltW,
        L_34_.Mag,
        L_34_.GripW2,
        L_34_.AnimBaseW
    })
end
function G_24_(L_616_arg1)
    L_34_.curConfig.unsprintAnim(L_2_, L_110_, {
        L_34_.curModel,
        L_34_.RAW,
        L_34_.LAW,
        L_34_.GripW,
        L_34_.BoltW,
        L_34_.Mag,
        L_34_.GripW2,
        L_34_.AnimBaseW
    })
end
function G_3_(L_623_arg1, L_624_arg2, L_625_arg3)
    if L_624_arg2 == Enum.UserInputState.Begin then
        if not L_34_.MouseHeld and L_44_ and not L_45_ and not L_66_ and not L_71_ and not L_72_ and not L_59_ then
            L_34_.MouseHeld = true
            if not L_76_ then
                if not L_69_ then
                    if L_34_.Ammo > 0 then
                        G_28_()
                    end
                else
                    if L_34_.ExplosiveAmmo > 0 then
                        G_28_()
                    end
                end
                if L_34_.Ammo <= 0 or not L_34_.CanShoot then
                    L_34_.Grip:WaitForChild("Click"):Play()
                end
            else
                if L_34_.NadeMode == 4 and not L_74_ then
                    L_74_ = true
                    local L_626_, L_627_, L_628_
                    if not L_80_ then
                        L_626_, L_627_, L_628_ = workspace:FindPartOnRayWithIgnoreList(Ray.new(L_79_.PrimaryPart.Position, L_79_.PrimaryPart.CFrame.UpVector * -2), L_38_)
                        local L_629_ = Vector3.new(0, 1, 0):Cross(L_628_)
                        local L_630_ = math.asin(L_629_.magnitude)
                        if L_626_ then
                            L_79_:Destroy()
                            L_80_ = L_33_.placeC4Event:InvokeServer(L_627_, L_629_, L_630_, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_628_, L_626_)
                            G_13_()
                            L_76_ = false
                        end
                    end
                    L_74_ = false
                end
            end
        end
    elseif L_624_arg2 == Enum.UserInputState.End or L_624_arg2 == Enum.UserInputState.Cancel then
        L_34_.MouseHeld = false
    end
end
function G_4_(L_631_arg1, L_632_arg2, L_633_arg3)
    if L_632_arg2 == Enum.UserInputState.Begin then
        if not L_66_ and not L_59_ and not L_83_ and L_34_.curConfig.CanSelectFire and not L_69_ and not L_52_ and not L_76_ and not L_66_ and not L_71_ and not L_50_ then
            L_82_ = true
            L_59_ = true
            L_69_ = false
            if G_47_ then
                G_47_ = false
            end
            G_58_()
            G_62_()
            G_13_()
            L_59_ = false
        end
        L_82_ = false
    end
end
function G_5_(L_634_arg1, L_635_arg2, L_636_arg3)
    if L_635_arg2 == Enum.UserInputState.Begin then
        if not L_51_ and L_44_ and not L_45_ and not L_76_ and not L_55_ and not L_71_ and not L_66_ and not L_72_ and L_34_.FireMode ~= 6 then
            L_51_ = true
            L_52_ = not L_52_
            if L_52_ then
                G_11_()
                if L_56_ and L_34_.Ammo > 0 then
                    G_40_()
                end
                L_51_ = false
            else
                if L_34_.Ammo > 0 then
                    L_34_.CanShoot = true
                    L_57_ = true
                    if L_56_ then
                        L_34_.Ammo = L_34_.Ammo - 1
                    end
                    L_56_ = true
                end
                G_12_()
                G_13_()
                L_51_ = false
            end
            G_10_()
        end
    end
end
function G_6_(L_637_arg1, L_638_arg2, L_639_arg3)
    if not L_66_ and L_44_ and not L_55_ and not G_47_ and not L_48_ and not L_52_ then
        local L_640_ = L_3_.FieldOfView
        if L_3_.FieldOfView ~= 70 then
            L_25_:Create(L_3_, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
                FieldOfView = 70
            }):Play()
        end
        if not L_69_ and L_34_.Ammo < L_34_.curConfig.Ammo then
            L_57_ = L_34_.CanShoot
            L_34_.CanShoot = false
            if L_34_.Ammo > 0 then
                L_56_ = true
                L_57_ = true
            else
                L_56_ = false
                L_57_ = false
            end
            if L_34_.StoredAmmo > 0 and L_34_.Ammo < L_34_.curConfig.Ammo then
                G_47_ = false
                L_55_ = true
                G_60_()
                if L_34_.curConfig.CanAutoBolt then
                    if L_34_.Ammo <= 0 then
                        if not L_34_.curConfig.CanSlideLock then
                            G_11_()
                            G_12_()
                        end
                    elseif L_34_.Ammo > 0 then
                        if not L_34_.curConfig.CanSlideLock then
                            if L_34_.BoltW.C1 ~= (CFrame.new() or CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)) then
                                G_11_()
                                G_12_()
                            end
                        end
                    end
                end
                G_13_()
                if L_34_.Ammo <= 0 then
                    if (L_34_.StoredAmmo - (L_34_.curConfig.Ammo - L_34_.Ammo)) < 0 then
                        L_34_.Ammo = L_34_.Ammo + L_34_.StoredAmmo
                        L_34_.StoredAmmo = 0
                    else
                        L_34_.StoredAmmo = L_34_.StoredAmmo - (L_34_.curConfig.Ammo - L_34_.Ammo)
                        L_34_.Ammo = L_34_.curConfig.Ammo
                    end
                elseif L_34_.Ammo > 0 then
                    if (L_34_.StoredAmmo - (L_34_.curConfig.Ammo - L_34_.Ammo)) < 0 then
                        L_34_.Ammo = L_34_.Ammo + L_34_.StoredAmmo + 1
                        L_34_.StoredAmmo = 0
                    else
                        L_34_.StoredAmmo = L_34_.StoredAmmo - (L_34_.curConfig.Ammo - L_34_.Ammo)
                        L_34_.Ammo = L_34_.curConfig.Ammo + 1
                    end
                end
                L_55_ = false
                if L_34_.curConfig.CanAutoBolt or L_56_ or L_34_.curConfig.CanSlideLock or L_34_.FireMode == 6 then
                    L_34_.CanShoot = true
                    L_57_ = true
                end
            end
        elseif L_69_ then
            if L_34_.ExplosiveAmmo > 0 then
                G_47_ = false
                L_55_ = true
                G_61_()
                if not L_69_ then
                    G_13_()
                else
                    L_25_:Create(L_34_.RAW, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
                        C1 = L_34_.curConfig.RightArmPos
                    }):Play()
                    L_25_:Create(L_34_.LAW, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
                        C1 = L_34_.curConfig.GLLeftPos
                    }):Play()
                    wait(0.25)
                end
                L_55_ = false
                L_34_.CanShoot = true
                L_70_ = false
            end
        end
        G_10_()
        if L_640_ ~= 70 and L_47_ then
            L_25_:Create(L_3_, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
                FieldOfView = L_640_
            }):Play()
        end
    end
end
function G_7_(L_641_arg1, L_642_arg2, L_643_arg3)
    if L_44_ and not L_45_ then
        if L_642_arg2 == Enum.UserInputState.Begin then
            L_87_ = true
            coroutine.resume(coroutine.create(function()
                while wait() do
                    if not L_87_ then
                        break
                    end
                    L_31_.humanoid.Jump = true
                end
            end))
        elseif L_642_arg2 == Enum.UserInputState.End or L_642_arg2 == Enum.UserInputState.Cancel then
            L_87_ = false
            wait()
            L_31_.humanoid.Jump = false
        end
    end
end
function G_8_(L_644_arg1, L_645_arg2, L_646_arg3)
    if L_44_ and not L_45_ then
        if L_645_arg2 == Enum.UserInputState.Begin then
            if L_44_ or L_32_.globalConfig.UniversalStances and not L_53_ and not L_34_.Seated then
                if not L_34_.Seated then
                    L_48_ = false
                    if L_34_.StanceIndex == 0 or L_34_.StanceIndex == 1 then
                        L_34_.StanceIndex = 2
                        G_17_()
                    elseif L_34_.StanceIndex == 2 then
                        L_34_.StanceIndex = 1
                        G_17_()
                    end
                end
            end
        end
    end
end
function G_9_(L_647_arg1, L_648_arg2, L_649_arg3)
    if L_44_ and not L_45_ then
        if L_648_arg2 == Enum.UserInputState.Begin then
            if L_44_ or L_32_.globalConfig.UniversalStances and not L_53_ and not L_34_.Seated then
                if not L_34_.Seated then
                    L_48_ = false
                    if L_34_.StanceIndex == 0 then
                        L_34_.StanceIndex = 1
                        G_17_()
                    elseif L_34_.StanceIndex == 1 then
                        L_34_.StanceIndex = 0
                        G_17_()
                    elseif L_34_.StanceIndex == 2 then
                        L_34_.StanceIndex = 1
                        G_17_()
                    end
                end
            end
        end
    end
end
function G_2_(L_122_arg1)
	L_45_ = true
	L_34_.mainFrame.Visible = true
	L_17_ = workspace:WaitForChild("BulletModel") or Instance.new("Folder")
	L_17_.Name = "BulletModel"
	L_17_.Parent = workspace
	table.insert(L_38_, L_17_)
	L_1_.CameraMaxZoomDistance = 0.5
	L_4_.TargetFilter = workspace
	L_27_.MouseBehavior = Enum.MouseBehavior.LockCenter
	L_27_.MouseIconEnabled = false
	L_28_:BindAction("Shoot", G_3_, true)
	L_28_:SetPosition("Shoot", UDim2.new(1, -85, 1, -75))
	L_28_:SetImage("Shoot", "rbxassetid://5861899658")
	if L_1_:WaitForChild("PlayerGui"):FindFirstChild("ContextActionGui") then
		L_1_:WaitForChild("PlayerGui"):WaitForChild("ContextActionGui"):WaitForChild("ContextButtonFrame"):WaitForChild("ContextActionButton").Size = UDim2.new(0, 72, 0, 72)
		L_1_:WaitForChild("PlayerGui"):WaitForChild("ContextActionGui"):WaitForChild("ContextButtonFrame"):WaitForChild("ContextActionButton").Active = false
	end
	L_28_:BindAction("SelectFire", G_4_, true)
	L_28_:SetPosition("SelectFire", UDim2.new(1, -162, 1, -140))
	L_28_:SetImage("SelectFire", "rbxassetid://5862289667")
	L_28_:BindAction("Bolt", G_5_, true)
	L_28_:SetPosition("Bolt", UDim2.new(1, -118, 1, -102))
	L_28_:SetImage("Bolt", "rbxassetid://5861959780")
	L_28_:BindAction("Reload", G_6_, true)
	L_28_:SetPosition("Reload", UDim2.new(1, -130, 1, -55))
	L_28_:SetImage("Reload", "rbxassetid://5861917803")
	L_28_:BindAction("Jump", G_7_, true)
	L_28_:SetPosition("Jump", UDim2.new(1, -165, 1, -90))
	L_28_:SetImage("Jump", "rbxassetid://5861963801")
	L_28_:BindAction("Prone", G_8_, true)
	L_28_:SetPosition("Prone", UDim2.new(1, -112, 1, -152))
	L_28_:SetImage("Prone", "rbxassetid://5861969398")
	L_28_:BindAction("NewCrouch", G_9_, true)
	L_28_:SetPosition("NewCrouch", UDim2.new(1, -70, 1, -175))
	L_28_:SetImage("NewCrouch", "rbxassetid://5861968749")
	L_34_.tool = L_122_arg1
	L_34_.ArmModel = L_3_:FindFirstChild("ArmModel") or Instance.new("Model")
	L_34_.ArmModel.Name = "ArmModel"
	L_34_.ArmModel.Parent = L_3_
	L_34_.BasePart = Instance.new("Part")
	L_34_.BasePart.Name = "BasePart"
	L_34_.BasePart.Parent = L_34_.ArmModel
	L_34_.BasePart.Anchored = true
	L_34_.BasePart.CanCollide = false
	L_34_.BasePart.Transparency = 1
	L_34_.BasePart.Size = Vector3.new(0.1, 0.1, 0.1)
	L_34_.PrimeAnimBase = Instance.new("Part")
	L_34_.PrimeAnimBase.Name = "PrimeAnimBase"
	L_34_.PrimeAnimBase.Parent = L_34_.ArmModel
	L_34_.PrimeAnimBase.Anchored = true
	L_34_.PrimeAnimBase.CanCollide = false
	L_34_.PrimeAnimBase.Transparency = 1
	L_34_.PrimeAnimBase.Size = Vector3.new(0.1, 0.1, 0.1)
	L_34_.PrimeAnimBaseW = Instance.new("Motor6D")
	L_34_.PrimeAnimBaseW.Parent = L_34_.PrimeAnimBase
	L_34_.PrimeAnimBaseW.Name = "PrimeAnimBaseW"
	L_34_.PrimeAnimBaseW.Part0 = L_34_.PrimeAnimBase
	L_34_.PrimeAnimBaseW.Part1 = L_34_.BasePart
	L_34_.PrimeAnimBase.Anchored = false
	L_34_.AnimBase = Instance.new("Part")
	L_34_.AnimBase.Name = "AnimBase"
	L_34_.AnimBase.Parent = L_34_.ArmModel
	L_34_.AnimBase.Anchored = true
	L_34_.AnimBase.CanCollide = false
	L_34_.AnimBase.Transparency = 1
	L_34_.AnimBase.Size = Vector3.new(0.1, 0.1, 0.1)
	L_34_.AnimBaseW = Instance.new("Motor6D")
	L_34_.AnimBaseW.Parent = L_34_.AnimBase
	L_34_.AnimBaseW.Name = "AnimBaseW"
	L_34_.AnimBaseW.Part0 = L_34_.AnimBase
	L_34_.AnimBaseW.Part1 = L_34_.PrimeAnimBase
	L_34_.AnimBase.Anchored = false
	L_34_.curModel = L_9_:WaitForChild(L_122_arg1.Name):clone()
	if L_21_ then
		local L_145_, L_146_, L_147_, L_148_ = L_23_:WaitForChild("DataRequest"):InvokeServer()
		local L_149_ = L_147_
		local L_150_ = L_148_
		local L_151_, L_152_ = L_23_:WaitForChild("AttchQueue"):InvokeServer()
		if L_34_.curModel.Name == L_147_ and L_151_[1] then
			G_1_(L_34_.curModel, L_151_)
		elseif L_34_.curModel.Name == L_148_ and L_152_[1] then
			G_1_(L_34_.curModel, L_152_)
		end
	end
	L_34_.curModel.Parent = L_34_.ArmModel
	L_34_.curConfig = require(L_34_.tool:WaitForChild("ConfigMods"):WaitForChild("CConfig"))
	local L_123_ = {}
	for L_153_forvar1, L_154_forvar2 in pairs(L_34_.curModel:GetChildren()) do
		if L_154_forvar2:IsA("BasePart") and L_154_forvar2.Name ~= "Grip" then
			local L_155_
			if string.match(L_154_forvar2.Name, "Hinge") then
				L_155_ = L_34_.curModel:FindFirstChild(string.sub(L_154_forvar2.Name, 6, string.len(L_154_forvar2.Name)))
			end
			if L_155_ then
				if L_34_.curModel:FindFirstChild("Hinge"..L_155_.Name) then
					L_32_.utilitiesModule.Weld(L_155_, L_34_.curModel:WaitForChild("Hinge"..L_155_.Name))
				else
					L_32_.utilitiesModule.Weld(L_155_, L_34_.curModel:WaitForChild("Grip"))
				end
			end
		end
	end
	for L_156_forvar1, L_157_forvar2 in pairs(L_34_.curModel:GetChildren()) do
		if L_157_forvar2 and not L_157_forvar2:FindFirstChild(L_157_forvar2.Name) and L_157_forvar2:IsA("BasePart") then
			L_32_.utilitiesModule.Weld(L_157_forvar2, L_34_.curModel:WaitForChild("Grip"))
		end
		if L_157_forvar2 and L_157_forvar2.Name ~= "NoWeld" and (L_157_forvar2:IsA("Model") or L_157_forvar2:IsA("Folder")) then
			if L_157_forvar2.Name ~= "Shield" then
				for L_158_forvar1, L_159_forvar2 in pairs(L_157_forvar2:GetDescendants()) do
					if L_159_forvar2 and L_159_forvar2:IsA("BasePart") then
						L_32_.utilitiesModule.Weld(L_159_forvar2, L_34_.curModel:WaitForChild("Grip"))
					end
				end
			elseif L_157_forvar2.Name == "Shield" then
				for L_160_forvar1, L_161_forvar2 in pairs(L_157_forvar2:GetDescendants()) do
					if L_161_forvar2 and L_161_forvar2:IsA("BasePart") and L_161_forvar2.Name ~= "Grip" then
						L_32_.utilitiesModule.Weld(L_161_forvar2, L_157_forvar2:WaitForChild("Grip"))
					end
				end
			end
		end
	end
	for L_162_forvar1, L_163_forvar2 in pairs(L_34_.curModel:GetDescendants()) do
		if L_163_forvar2:IsA("BasePart") and L_163_forvar2.Name ~= "Grip" then
			L_163_forvar2.Anchored = false
			L_163_forvar2.CanCollide = false
		end
	end
	L_34_.NeckCW = Instance.new("Motor6D")
	L_34_.NeckCW.Name = "Clone"
	L_34_.NeckCW.Parent = L_31_.torso
	L_34_.NeckCW.Part0 = L_31_.rootPart
	L_34_.NeckCW.Part1 = L_31_.head
	L_34_.NeckCW.C0 = L_31_.neck.C0
	L_34_.NeckCW.C1 = L_31_.neck.C1
	L_34_.AimPart = L_34_.curModel:WaitForChild("AimPart")
	L_34_.AimPart2 = L_34_.curModel:FindFirstChild("AimPart2") or nil
	L_34_.CurAimPart = L_34_.AimPart
	L_34_.lastAimPart = L_34_.AimPart
	L_34_.FirePart = L_34_.curModel:WaitForChild("FirePart")
	L_34_.Bolt = L_34_.curModel:WaitForChild("Bolt")
	L_34_.BoltW = L_34_.Bolt:WaitForChild("Bolt")
	L_34_.Mag = L_34_.curModel:WaitForChild("Mag")
	L_34_.FirePart2 = L_34_.curModel:FindFirstChild("FirePart2") or nil
	local L_124_ = L_7_:WaitForChild("EquipSound"):clone()
	L_124_.Parent = L_1_.PlayerGui
	L_124_:Play()
	game.Debris:AddItem(L_124_, L_124_.TimeLength)
	L_34_.aimSFX = L_1_.PlayerGui:FindFirstChild("AimSFX") or Instance.new("Sound")
	L_34_.aimSFX.Name = "AimSFX"
	L_34_.aimSFX.Parent = L_1_.PlayerGui
	L_34_.HopUp = L_34_.curConfig.BulletHopUpMult
	local L_125_, L_126_, L_127_, L_128_, L_129_, L_130_, L_131_, L_132_, L_133_, L_134_, L_135_, L_136_, L_137_, L_138_, L_139_, L_140_, L_141_ = L_33_.storeDataEvent:InvokeServer("Retrieve", L_34_.tool.Name, L_34_.curConfig.Ammo, (L_34_.curConfig.StoredAmmo * L_34_.curConfig.MagCount), L_34_.curConfig.ExplosiveAmmo, L_34_.curConfig.FireMode, L_34_.curConfig.MouseSensitivity, 1, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
	if L_125_ then
		L_34_.Ammo = L_126_
		L_34_.StoredAmmo = L_127_
		L_34_.ExplosiveAmmo = L_128_
		L_34_.FireMode = L_129_
		L_34_.CanShoot = L_132_
		L_70_ = L_134_
		L_54_ = L_135_
		L_89_ = L_136_
		L_92_ = L_140_
		L_90_ = L_137_
		L_91_ = L_138_
		L_93_ = L_141_
		L_34_.oHopUp = L_139_
		if L_54_ then
			if not L_89_ then
				L_34_.curZoom = L_34_.curConfig.AltAimZoom
			else
				L_34_.curZoom = L_91_
			end
			L_34_.CurAimPart = L_34_.AimPart2
		else
			if not L_89_ then
				L_34_.curZoom = L_34_.curConfig.AimZoom
			else
				L_34_.curZoom = L_90_
			end
			L_34_.CurAimPart = L_34_.AimPart
		end
	else
		L_89_ = L_136_
		L_92_ = L_140_
		L_90_ = L_137_
		L_91_ = L_138_
		L_93_ = L_141_
		L_34_.oHopUp = L_139_
		L_34_.Ammo = L_34_.curConfig.Ammo
		L_34_.StoredAmmo = L_34_.curConfig.StoredAmmo * L_34_.curConfig.MagCount
		L_34_.ExplosiveAmmo = L_34_.curConfig.ExplosiveAmmo
		L_34_.FireMode = L_34_.curConfig.FireMode
		L_34_.CanShoot = false
		L_134_ = false
		L_54_ = false
		if not L_89_ then
			L_34_.curZoom = L_34_.curConfig.AimZoom
		else
			L_34_.curZoom = L_90_
		end
		L_34_.CurAimPart = L_34_.AimPart
	end
	L_34_.RAW, L_34_.LAW, L_34_.RA, L_34_.LA, L_34_.Grip, L_34_.GripW, L_34_.GripW2 = L_32_.setupModule(L_34_.ArmModel, L_2_, L_34_.AnimBase, L_34_.curConfig, L_34_.curModel, L_92_, L_93_)
	local L_142_ = L_9_:WaitForChild(L_34_.curModel.Name):clone()
	L_142_.Parent = L_34_.weapDisplay
	L_142_.PrimaryPart = L_142_:WaitForChild("Grip")
	for L_164_forvar1, L_165_forvar2 in pairs(L_142_:GetDescendants()) do
		if L_165_forvar2 and L_165_forvar2:IsA("Texture") or L_165_forvar2:IsA("Decal") then
			L_165_forvar2:Destroy()
		elseif L_165_forvar2 and L_165_forvar2:IsA("UnionOperation") then
			L_165_forvar2.UsePartColor = true
			L_165_forvar2.Material = Enum.Material.SmoothPlastic
		elseif L_165_forvar2 and L_165_forvar2:IsA("MeshPart") then
			L_165_forvar2.TextureID = ""
			L_165_forvar2.Material = Enum.Material.SmoothPlastic
		end
	end
	for L_166_forvar1, L_167_forvar2 in pairs(L_142_:GetDescendants()) do
		if L_167_forvar2 and L_167_forvar2:IsA("BasePart") then
			L_167_forvar2.BrickColor = BrickColor.new("Institutional white")
			L_167_forvar2.Material = Enum.Material.SmoothPlastic
			if L_167_forvar2:IsA("UnionOperation") then
				L_167_forvar2.UsePartColor = true
			end
		end
	end
	local L_143_ = Instance.new("Camera")
	L_34_.weapDisplay.CurrentCamera = L_143_
	L_143_.Parent = L_34_.weapDisplay
	L_143_.CFrame = CFrame.new(10, 10, 10) * CFrame.Angles(10, 10, 10)
	L_25_:Create(L_143_, TweenInfo.new(0.5), {
		CFrame = L_142_.PrimaryPart.CFrame * CFrame.new(-2, 0, -0.4) * CFrame.Angles(0, math.rad(-90), 0)
	}):Play()
	if L_65_ then
		L_65_ = false
		L_34_.Ammo = L_34_.curConfig.Ammo
		L_34_.StoredAmmo = L_34_.curConfig.StoredAmmo * L_34_.curConfig.MagCount
	end
	if L_34_.FireMode == 6 and L_34_.Ammo > 0 then
		L_34_.CanShoot = true
	end
	G_10_()
	if L_1_ and L_1_:FindFirstChild("PlayerGui") and L_1_.PlayerGui:FindFirstChild("TouchGui") then
		L_34_.mainFrame.Visible = false
		L_34_.mainFrame2.Visible = true
		L_1_.PlayerGui:FindFirstChild("TouchGui"):WaitForChild("TouchControlFrame"):WaitForChild("JumpButton").Visible = false
	end
	local L_144_ = require(L_34_.tool:WaitForChild("ConfigMods"):WaitForChild("SConfig"))
	L_33_.equipEvent:FireServer(true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_34_.tool.Name, L_144_.RightArmPos, L_144_.LeftArmPos, L_144_.GunPos, L_144_.ShieldPos, L_144_.HolsteringEnabled, L_144_.HolsterClient, L_144_.HolsterTo, L_144_.HolsterPos)
	L_45_ = false
	L_44_ = true
	if not L_125_ and L_32_.globalConfig.StartUpBolt then
		L_51_ = true
		L_34_.CanShoot, L_57_, L_34_.Ammo, L_133_, L_51_ = L_32_.codeArchive.StartUpBolt(L_34_.Ammo, G_11_, G_12_, G_13_, G_10_)
	end
end
function G_14_(L_168_arg1, L_169_arg2, L_170_arg3, L_171_arg4)
	local L_172_ = L_169_arg2:FindFirstChild("IsoSound") or Instance.new("Sound")
	L_172_.Volume = 1
	L_172_.Name = "IsoSound"
	L_172_.Parent = L_169_arg2
	L_172_.SoundId = L_168_arg1
	L_172_.PlaybackSpeed = L_171_arg4
	local L_173_
	local L_174_ = (L_169_arg2.Position - L_2_:WaitForChild("HumanoidRootPart").Position).magnitude
	if L_174_ > 10 then
		L_173_ = L_172_:FindFirstChild("Isolation") or Instance.new("EqualizerSoundEffect")
		L_173_.Enabled = true
		L_173_.Name = "Isolation"
		L_173_.Parent = L_172_
		L_173_.HighGain = (-0.03 * L_174_)
		L_173_.MidGain = (-0.03 * L_174_)
		L_173_.LowGain = (L_174_ / 100)
	else
		if L_172_:FindFirstChild("Isolation") then
			L_172_.Isolation.Enabled = false
		end
	end
	L_172_:Play()
	L_172_.Ended:connect(function()
		if L_173_ then
			L_173_:Destroy()
		end
	end)
end
function G_15_()
	if L_34_.ArmModel and L_34_.curConfig then
		L_45_ = true
		L_43_.dirPeek = 0
		G_16_()
		L_34_.mainFrame.Visible = false
		L_34_.mainFrame2.Visible = false
		L_34_.weapDisplay:ClearAllChildren()
		local L_175_ = L_7_:WaitForChild("UnequipSound"):clone()
		L_175_.Parent = L_1_.PlayerGui
		L_175_:Play()
		game.Debris:AddItem(L_175_, L_175_.TimeLength)
		L_34_.ArmModel:Destroy()
		L_34_.curModel = nil
		L_34_.curConfig = nil
		L_34_.RA:Destroy()
		L_34_.RAW:Destroy()
		L_34_.LA:Destroy()
		L_34_.LAW:Destroy()
		L_34_.NeckCW:Destroy()
		L_34_.AnimBase = nil
		L_34_.AnimBaseW = nil
		L_34_.BasePart:Destroy()
		L_34_.Grip = nil
		L_34_.GripW:Destroy()
		L_34_.aimSFX:Destroy()
		L_28_:UnbindAction("Shoot")
		L_28_:UnbindAction("SelectFire")
		L_28_:UnbindAction("Bolt")
		L_28_:UnbindAction("Reload")
		L_28_:UnbindAction("Jump")
		L_28_:UnbindAction("Prone")
		L_28_:UnbindAction("NewCrouch")
		L_47_ = false
		L_48_ = false
		L_51_ = false
		L_52_ = false
		L_63_ = false
		L_69_ = false
		L_72_ = false
		L_55_ = false
		L_50_ = false
		L_66_ = false
		L_34_.CanShoot = L_57_
		L_27_.MouseBehavior = Enum.MouseBehavior.Default
		L_27_.MouseIconEnabled = true
		L_3_.CameraType = Enum.CameraType.Custom
		L_1_.CameraMaxZoomDistance = game.StarterPlayer.CameraMaxZoomDistance
		if L_49_ and not L_32_.globalConfig.UniversalStances then
			L_31_.humanoid.WalkSpeed = 16
			L_34_.StanceIndex = 0
			G_17_()
		end
		L_25_:Create(L_3_, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {
			FieldOfView = 70
		}):Play()
		L_33_.storeDataEvent:InvokeServer("Store", L_34_.tool.Name, L_34_.Ammo, L_34_.StoredAmmo, L_34_.ExplosiveAmmo, L_34_.FireMode, 0, 0, L_34_.CanShoot, L_56_, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_70_, L_54_, L_89_, L_90_, L_91_, L_34_.HopUp, L_92_, L_93_)
		local L_176_ = require(L_34_.tool:WaitForChild("ConfigMods"):WaitForChild("SConfig"))
		L_33_.equipEvent:FireServer(false, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_34_.tool.Name, L_176_.RightArmPos, L_176_.LeftArmPos, L_176_.GunPos, L_176_.ShieldPos, L_176_.HolsteringEnabled, L_176_.HolsterClient, L_176_.HolsterTo, L_176_.HolsterPos)
		L_45_ = false
		L_44_ = false
		L_56_ = false
		L_27_.MouseDeltaSensitivity = L_34_.origSens
		L_31_.humanoid.WalkSpeed = 16
		if L_94_ then
			L_94_:Destroy()
		end
		if L_95_ then
			L_95_:Destroy()
		end
		if L_96_ then
			L_96_:Destroy()
		end
		if L_98_ then
			L_98_:Destroy()
		end
		L_66_ = false
		L_72_ = false
		for L_177_forvar1, L_178_forvar2 in pairs(L_34_.hud:WaitForChild("RangeFrame"):GetChildren()) do
			if L_178_forvar2 then
				L_178_forvar2.Visible = false
			end
		end
		if L_1_ and L_1_:FindFirstChild("PlayerGui") and L_1_.PlayerGui:FindFirstChild("TouchGui") then
			L_1_.PlayerGui:FindFirstChild("TouchGui"):WaitForChild("TouchControlFrame"):WaitForChild("JumpButton").Visible = true
		end
		L_89_ = false
		L_92_ = false
	end
end
function G_18_()
	if L_34_.curConfig then
		if L_47_ then
			G_19_(false, true)
		end
		if L_48_ then
			G_20_(false)
		end
		if L_34_.readyMode == 0 then
			L_50_ = false
			L_33_.updateCharEvent:FireServer("Idle", true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
			L_34_.CanShoot = true
			L_82_ = false
		elseif L_34_.readyMode == 1 then
			L_50_ = true
			L_25_:Create(L_34_.AnimBaseW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
				C1 = L_34_.curConfig.ReadyHighPos
			}):Play()
			L_33_.updateCharEvent:FireServer("ReadyHigh", true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
			if L_53_ then
				L_53_ = false
			end
			L_82_ = true
		elseif L_34_.readyMode == -1 then
			L_50_ = true
			L_25_:Create(L_34_.AnimBaseW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
				C1 = L_34_.curConfig.ReadyLowPos
			}):Play()
			L_33_.updateCharEvent:FireServer("ReadyLow", true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
			if L_53_ then
				L_53_ = false
			end
			L_82_ = true
		end
	end
end
function G_19_(L_179_arg1, L_180_arg2)
	if L_34_.curConfig and not L_71_ and not L_66_ and not L_72_ then
		if L_179_arg1 then
			if L_81_ then
				if L_48_ then
					G_20_(false)
				end
				if L_50_ then
					L_34_.readyMode = 0
					G_18_()
				end
				if L_53_ then
					L_53_ = false
				end
				if L_180_arg2 then
					L_33_.updateCharEvent:FireServer("Aim", true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
				end
				if L_2_:WaitForChild("CordonValues"):WaitForChild("NVGActive").Value == true and L_34_.curModel:FindFirstChild("AimPart3") and L_63_ and L_34_.CurAimPart ~= L_34_.curModel.AimPart3 then
					L_34_.lastAimPart = L_34_.CurAimPart
					L_34_.CurAimPart = L_34_.curModel.AimPart3
				end
				L_34_.aimSFX.SoundId = "rbxassetid://"..L_36_[math.random(1, #L_36_)]
				L_34_.aimSFX:Play()
				L_25_:Create(L_3_, TweenInfo.new(L_34_.curConfig.AimZoomSpeed, Enum.EasingStyle.Quad), {
					FieldOfView = L_34_.curZoom
				}):Play()
				if L_34_.curConfig.aimAnim then
					G_21_()
				end
				L_47_ = true
			end
		else
			L_34_.aimWalkSpeed = 9
			L_34_.CurAimPart = L_34_.lastAimPart
			L_33_.updateCharEvent:FireServer("Aim", false, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
			L_34_.aimSFX.SoundId = "rbxassetid://"..L_37_[math.random(1, #L_37_)]
			L_34_.aimSFX:Play()
			L_25_:Create(L_3_, TweenInfo.new(L_34_.curConfig.AimZoomSpeed, Enum.EasingStyle.Quad), {
				FieldOfView = 70
			}):Play()
			L_47_ = false
			if L_34_.curConfig.unaimAnim then
				G_22_()
			end
			L_35_.walkAnimIntensity = L_32_.globalConfig.WalkIntensity
			L_35_.walkAnimSpeed = L_32_.globalConfig.WalkAnimSpeed
		end
	end
end
function G_20_(L_181_arg1)
	if L_34_.curConfig and not L_71_ and not L_66_ and not L_72_ then
		if L_181_arg1 and L_46_ then
			if L_47_ then
				G_19_(false, true)
			end
			L_43_.dirPeek = 0
			G_16_()
			L_25_:Create(L_3_, TweenInfo.new(L_34_.curConfig.AimZoomSpeed, Enum.EasingStyle.Quad), {
				FieldOfView = 70
			}):Play()
			if L_50_ then
				L_34_.readyMode = 0
				G_18_()
			end
			if L_53_ then
				L_53_ = false
			end
			L_33_.updateCharEvent:FireServer("Sprint", true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
			if L_34_.curConfig.sprintAnim then
				G_23_()
			end
			L_48_ = true
			L_35_.walkAnimIntensity = L_34_.curConfig.SprintWalkIntensity
			L_35_.walkAnimSpeed = L_34_.curConfig.SprintWalkAnimSpeed
		else
			L_33_.updateCharEvent:FireServer("Sprint", false, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
			L_48_ = false
			if L_34_.curConfig.unsprintAnim then
				G_24_()
			end
			L_35_.walkAnimIntensity = L_32_.globalConfig.WalkIntensity
			L_35_.walkAnimSpeed = L_32_.globalConfig.WalkAnimSpeed
			L_35_.idleSpeed = 2
		end
	end
end
function G_25_()
	if L_34_.curConfig then
		local L_182_
		local L_183_
		local L_184_
		if not L_47_ then
			if not L_49_ then
				L_182_ = math.rad(math.random(L_34_.curConfig.SideKickMin, L_34_.curConfig.SideKickMax))
				L_183_ = math.random(L_34_.curConfig.gunRecoilMin, L_34_.curConfig.gunRecoilMax)
				L_184_ = math.rad(math.random(L_34_.curConfig.KickbackMin, L_34_.curConfig.KickbackMax))
			elseif L_49_ then
				if L_34_.StanceIndex == 1 then
					L_182_ = math.rad(math.random(L_34_.curConfig.SideKickMin / 1.5, L_34_.curConfig.SideKickMax / 1.5))
					L_183_ = math.random(L_34_.curConfig.gunRecoilMin / 1.5, L_34_.curConfig.gunRecoilMax / 1.5)
					L_184_ = math.rad(math.random(L_34_.curConfig.KickbackMin / 1.5, L_34_.curConfig.KickbackMax / 1.5))
				end
				if L_34_.StanceIndex == 2 then
					L_182_ = math.rad(math.random(L_34_.curConfig.SideKickMin / 2, L_34_.curConfig.SideKickMax / 2))
					L_183_ = math.random(L_34_.curConfig.gunRecoilMin / 2, L_34_.curConfig.gunRecoilMax / 2)
					L_184_ = math.rad(math.random(L_34_.curConfig.KickbackMin / 2, L_34_.curConfig.KickbackMax / 2))
				end
			end
			L_182_ = math.rad(math.random(L_34_.curConfig.SideKickMin, L_34_.curConfig.SideKickMax))
			L_183_ = math.random(L_34_.curConfig.gunRecoilMin, L_34_.curConfig.gunRecoilMax)
			L_184_ = math.rad(math.random(L_34_.curConfig.KickbackMin, L_34_.curConfig.KickbackMax))
		else
			if not L_49_ then
				L_182_ = math.rad(math.random(L_34_.curConfig.AimSideKickMin, L_34_.curConfig.AimSideKickMax))
				L_183_ = math.random(L_34_.curConfig.AimGunRecoilMin, L_34_.curConfig.AimGunRecoilMax)
				L_184_ = math.rad(math.random(L_34_.curConfig.AimKickbackMin, L_34_.curConfig.AimKickbackMax))
			elseif L_49_ then
				if L_34_.StanceIndex == 1 then
					L_182_ = math.rad(math.random(L_34_.curConfig.AimSideKickMin / 1.5, L_34_.curConfig.AimSideKickMax / 1.5))
					L_183_ = math.random(L_34_.curConfig.AimGunRecoilMin / 1.5, L_34_.curConfig.AimGunRecoilMax / 1.5)
					L_184_ = math.rad(math.random(L_34_.curConfig.AimKickbackMin / 1.5, L_34_.curConfig.AimKickbackMax / 1.5))
				end
				if L_34_.StanceIndex == 2 then
					L_182_ = math.rad(math.random(L_34_.curConfig.AimSideKickMin / 2, L_34_.curConfig.AimSideKickMax / 2))
					L_183_ = math.random(L_34_.curConfig.AimGunRecoilMin / 2, L_34_.curConfig.AimGunRecoilMax / 2)
					L_184_ = math.rad(math.random(L_34_.curConfig.AimKickbackMin / 2, L_34_.curConfig.AimKickbackMax / 2))
				end
			end
		end
		local L_185_ = Vector3.new(L_184_, L_182_, L_183_ / 70)
		return L_185_
	end
end
function G_26_()
	if L_34_.curConfig then
		local L_186_
		local L_187_
		local L_188_
		if not L_47_ then
			if not L_49_ then
				L_186_ = math.rad(math.random(L_34_.curConfig.SideKickMin, L_34_.curConfig.SideKickMax))
				L_187_ = L_34_.curConfig.CamShakeMin or L_34_.curConfig.CamShakeMax
				L_188_ = math.rad(math.random(L_34_.curConfig.KickbackMin, L_34_.curConfig.KickbackMax))
			elseif L_49_ then
				if L_34_.StanceIndex == 1 then
					L_186_ = math.rad(math.random(L_34_.curConfig.SideKickMin / 1.5, L_34_.curConfig.SideKickMax / 1.5))
					L_187_ = L_34_.curConfig.CamShakeMin / 1.5 or L_34_.curConfig.CamShakeMax / 1.5
					L_188_ = math.rad(math.random(L_34_.curConfig.KickbackMin / 1.5, L_34_.curConfig.KickbackMax / 1.5))
				end
				if L_34_.StanceIndex == 2 then
					L_186_ = math.rad(math.random(L_34_.curConfig.SideKickMin / 2, L_34_.curConfig.SideKickMax / 2))
					L_187_ = L_34_.curConfig.CamShakeMin / 2 or L_34_.curConfig.CamShakeMax / 2
					L_188_ = math.rad(math.random(L_34_.curConfig.KickbackMin / 2, L_34_.curConfig.KickbackMax / 2))
				end
			end
			L_186_ = math.rad(math.random(L_34_.curConfig.SideKickMin, L_34_.curConfig.SideKickMax))
			L_187_ = L_34_.curConfig.CamShakeMin or L_34_.curConfig.CamShakeMax
			L_188_ = math.rad(math.random(L_34_.curConfig.KickbackMin, L_34_.curConfig.KickbackMax))
		else
			if not L_49_ then
				L_186_ = math.rad(math.random(L_34_.curConfig.AimSideKickMin, L_34_.curConfig.AimSideKickMax))
				L_187_ = L_34_.curConfig.AimCanShakeMin or L_34_.curConfig.AimCamShakeMax
				L_188_ = math.rad(math.random(L_34_.curConfig.AimKickbackMin, L_34_.curConfig.AimKickbackMax))
			elseif L_49_ then
				if L_34_.StanceIndex == 1 then
					L_186_ = math.rad(math.random(L_34_.curConfig.AimSideKickMin / 1.5, L_34_.curConfig.AimSideKickMax / 1.5))
					L_187_ = L_34_.curConfig.AimCanShakeMin / 1.5 or L_34_.curConfig.AimCamShakeMax / 1.5
					L_188_ = math.rad(math.random(L_34_.curConfig.AimKickbackMin / 1.5, L_34_.curConfig.AimKickbackMax / 1.5))
				end
				if L_34_.StanceIndex == 2 then
					L_186_ = math.rad(math.random(L_34_.curConfig.AimSideKickMin / 2, L_34_.curConfig.AimSideKickMax / 2))
					L_187_ = L_34_.curConfig.AimCanShakeMin / 2 or L_34_.curConfig.AimCamShakeMax / 2
					L_188_ = math.rad(math.random(L_34_.curConfig.AimKickbackMin / 2, L_34_.curConfig.AimKickbackMax / 2))
				end
			end
		end
		local L_189_ = Vector3.new(L_188_, L_186_, L_187_ / 70)
		return L_189_
	end
end
function G_27_()
	if L_32_.globalConfig.CanDamageShake then
		local L_190_
		local L_191_
		local L_192_
		if not L_47_ then
			if not L_49_ then
				L_190_ = math.rad(math.random(L_32_.globalConfig.SideKickMin, L_32_.globalConfig.SideKickMax))
				L_191_ = L_32_.globalConfig.CamShakeMin or L_32_.globalConfig.CamShakeMax
				L_192_ = math.rad(math.random(L_32_.globalConfig.KickbackMin, L_32_.globalConfig.KickbackMax))
			elseif L_49_ then
				if L_34_.StanceIndex == 1 then
					L_190_ = math.rad(math.random(L_32_.globalConfig.SideKickMin / 1.5, L_32_.globalConfig.SideKickMax / 1.5))
					L_191_ = L_32_.globalConfig.CamShakeMin / 1.5 or L_32_.globalConfig.CamShakeMax / 1.5
					L_192_ = math.rad(math.random(L_32_.globalConfig.KickbackMin / 1.5, L_32_.globalConfig.KickbackMax / 1.5))
				end
				if L_34_.StanceIndex == 2 then
					L_190_ = math.rad(math.random(L_32_.globalConfig.SideKickMin / 2, L_32_.globalConfig.SideKickMax / 2))
					L_191_ = L_32_.globalConfig.CamShakeMin / 2 or L_32_.globalConfig.CamShakeMax / 2
					L_192_ = math.rad(math.random(L_32_.globalConfig.KickbackMin / 2, L_32_.globalConfig.KickbackMax / 2))
				end
			end
			L_190_ = math.rad(math.random(L_32_.globalConfig.SideKickMin, L_32_.globalConfig.SideKickMax))
			L_191_ = L_32_.globalConfig.CamShakeMin or L_32_.globalConfig.CamShakeMax
			L_192_ = math.rad(math.random(L_32_.globalConfig.KickbackMin, L_32_.globalConfig.KickbackMax))
		else
			if not L_49_ then
				L_190_ = math.rad(math.random(L_32_.globalConfig.AimSideKickMin, L_32_.globalConfig.AimSideKickMax))
				L_191_ = L_32_.globalConfig.AimCanShakeMin or L_32_.globalConfig.AimCamShakeMax
				L_192_ = math.rad(math.random(L_32_.globalConfig.AimKickbackMin, L_32_.globalConfig.AimKickbackMax))
			elseif L_49_ then
				if L_34_.StanceIndex == 1 then
					L_190_ = math.rad(math.random(L_32_.globalConfig.AimSideKickMin / 1.5, L_32_.globalConfig.AimSideKickMax / 1.5))
					L_191_ = L_32_.globalConfig.AimCanShakeMin / 1.5 or L_32_.globalConfig.AimCamShakeMax / 1.5
					L_192_ = math.rad(math.random(L_32_.globalConfig.AimKickbackMin / 1.5, L_32_.globalConfig.AimKickbackMax / 1.5))
				end
				if L_34_.StanceIndex == 2 then
					L_190_ = math.rad(math.random(L_32_.globalConfig.AimSideKickMin / 2, L_32_.globalConfig.AimSideKickMax / 2))
					L_191_ = L_32_.globalConfig.AimCanShakeMin / 2 or L_32_.globalConfig.AimCamShakeMax / 2
					L_192_ = math.rad(math.random(L_32_.globalConfig.AimKickbackMin / 2, L_32_.globalConfig.AimKickbackMax / 2))
				end
			end
		end
		local L_193_ = Vector3.new(L_192_, L_190_, L_191_ / 70)
		return L_193_
	end
end
function G_28_()
	if L_44_ and L_34_.CanShoot and not L_48_ and not L_55_ and not L_50_ and not L_53_ and not L_51_ and not L_52_ then
		if (L_3_.CFrame.Position - L_2_:WaitForChild("Head").Position).magnitude > 10 then
			while true do end
		end
		if not L_69_ then
			if L_34_.FireMode == 1 then
				G_29_()
				if L_34_.Ammo > 0 then
					L_56_ = true
				elseif L_34_.Ammo <= 0 then
					L_56_ = false
				end
			elseif L_34_.FireMode == 2 then
				G_30_()
				if L_34_.Ammo > 0 then
					L_56_ = true
				elseif L_34_.Ammo <= 0 then
					L_56_ = false
				end
			elseif L_34_.FireMode == 3 then
				G_31_()
				if L_34_.Ammo > 0 then
					L_56_ = true
				elseif L_34_.Ammo <= 0 then
					L_56_ = false
				end
			elseif L_34_.FireMode == 4 then
				G_32_()
			elseif L_34_.FireMode == 5 then
				G_33_()
			elseif L_34_.FireMode == 6 then
				G_34_()
			end
		else
			if L_34_.ExplosiveAmmo > 0 then
				G_35_()
			end
		end
		G_10_()
	end
end
function G_36_()
	if L_2_:WaitForChild("Humanoid").Health > 0 and L_44_ then
		local L_194_ = L_43_.recoilSpring2.p
		local L_195_ = CFrame.new(0, 0, L_194_.z / 5)
		local L_196_ = CFrame.fromAxisAngle(Vector3.new(1, 0, 0), L_194_.x / 10)
		local L_197_ = CFrame.fromAxisAngle(Vector3.new(0, 1, 0), L_194_.y / 10)
		local L_198_ = CFrame.fromAxisAngle(Vector3.new(0, 0, 1), L_194_.z)
		L_194_ = L_195_ * L_196_ * L_197_ * L_198_
		L_43_.cornerPeek.t = L_43_.peekFactor * L_43_.dirPeek
		local L_199_ = CFrame.fromAxisAngle(Vector3.new(0, 0, 1), L_43_.cornerPeek.p)
		L_3_.CFrame = L_3_.CFrame * L_199_ * L_34_.newCamOffset * L_194_
	end
end
function G_17_()
	if not L_61_ and not L_34_.Seated then
		if L_34_.StanceIndex == 0 then
			L_49_ = false
			L_25_:Create(L_31_.rootJoint, TweenInfo.new(0.6), {
				C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
			}):Play()
			L_25_:Create(L_31_.rightHip, TweenInfo.new(0.6), {
				C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			}):Play()
			L_25_:Create(L_31_.leftHip, TweenInfo.new(0.6), {
				C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			}):Play()
			L_25_:Create(L_31_.neck, TweenInfo.new(0.6), {
				C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
			}):Play()
			L_34_.camC0 = Vector3.new()
			L_25_:Create(L_31_.humanoid, TweenInfo.new(0.5), {
				CameraOffset = Vector3.new(0, 0, 0)
			}):Play()
			if L_44_ then
				G_10_()
			else
				L_31_.humanoid.WalkSpeed = 16
			end
			G_16_()
			L_33_.updateCharEvent:FireServer("Stance", true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_34_.StanceIndex)
		elseif L_34_.StanceIndex == 1 and not L_31_.humanoid.Sit then
			L_49_ = true
			L_25_:Create(L_31_.rootJoint, TweenInfo.new(0.6), {
				C0 = CFrame.new(0, -1.20000005, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
			}):Play()
			L_25_:Create(L_31_.rightHip, TweenInfo.new(0.6), {
				C0 = CFrame.new(1.00000191, -0.93054074, -0.393920898, 0, 0, 1, -0.98480773, 0.173648179, 0, -0.173648179, -0.98480773, 0)
			}):Play()
			L_25_:Create(L_31_.leftHip, TweenInfo.new(0.6), {
				C0 = CFrame.new(-1, 0.165270448, -0.603042603, 0, 0, -1, -0.173648179, 0.98480773, 0, 0.98480773, 0.173648179, 0)
			}):Play()
			L_25_:Create(L_31_.neck, TweenInfo.new(0.6), {
				C1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
			}):Play()
			L_34_.camC0 = Vector3.new(0, -1, 0)
			L_25_:Create(L_31_.humanoid, TweenInfo.new(0.5), {
				CameraOffset = Vector3.new(0, -1.2, 0)
			}):Play()
			if L_44_ then
				G_10_()
			end
			G_16_()
			L_33_.updateCharEvent:FireServer("Stance", true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_34_.StanceIndex)
		elseif L_34_.StanceIndex == 2 and not L_31_.humanoid.Sit then
			if L_44_ and L_34_.curConfig then
				L_43_.dirPeek = 0
				G_16_()
			end
			L_49_ = true
			L_25_:Create(L_31_.rootJoint, TweenInfo.new(0.6), {
				C0 = CFrame.new(0, -2.5999999, 0, -1, 0, 0, 0, 1, 1.19248806e-08, 0, 1.19248806e-08, -1)
			}):Play()
			L_25_:Create(L_31_.rightHip, TweenInfo.new(0.6), {
				C0 = CFrame.new(1, -1, 2.98023224e-08, 0.163175702, -0.342020363, 0.925416529, 0.0593911409, 0.939692557, 0.336824328, -0.984807789, 0, 0.17364797)
			}):Play()
			L_25_:Create(L_31_.leftHip, TweenInfo.new(0.6), {
				C0 = CFrame.new(-1, -1, 2.98023224e-08, 0.163175896, 0.342020363, -0.92541647, -0.0593912117, 0.939692557, 0.336824298, 0.98480773, 0, 0.173648179)
			}):Play()
			L_25_:Create(L_31_.neck, TweenInfo.new(0.6), {
				C1 = CFrame.new(0, -0.785033405, -0.109157309, -0.99999994, 0, 0, 0, 1, -4.37113883e-08, 0, -4.37113883e-08, -1)
			}):Play()
			L_34_.camC0 = Vector3.new(0, -2.5, 0)
			L_25_:Create(L_2_:WaitForChild("Humanoid"), TweenInfo.new(0.5), {
				CameraOffset = Vector3.new(0, -3, 0)
			}):Play()
			if L_44_ then
				G_10_()
			end
			L_33_.updateCharEvent:FireServer("Stance", true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_34_.StanceIndex)
		end
	end
end
function G_16_()
	if not L_34_.Seated then
		if L_34_.StanceIndex ~= 2 and not L_48_ then
			if L_43_.dirPeek == 1 then
				if L_34_.StanceIndex == 0 then
					L_25_:Create(L_31_.humanoid, TweenInfo.new(0.5), {
						CameraOffset = Vector3.new(-1.5, 0, 0)
					}):Play()
				elseif L_34_.StanceIndex == 1 then
					L_25_:Create(L_31_.humanoid, TweenInfo.new(0.5), {
						CameraOffset = Vector3.new(-1.5, -1.2, 0)
					}):Play()
				end
				L_25_:Create(L_31_.rootJoint, TweenInfo.new(0.6), {
					C1 = CFrame.new(0.600000024, 0, 0, -0.939692616, 0, 0.342020124, 0.342020124, 0, 0.939692616, 0, 1, 0)
				}):Play()
				L_25_:Create(L_31_.rightHip, TweenInfo.new(0.6), {
					C1 = CFrame.new(0.5, 1, 0, 0, 0.087155737, 0.99619472, 0, 0.99619472, -0.087155737, -1, 0, 0)
				}):Play()
				L_25_:Create(L_31_.leftHip, TweenInfo.new(0.6), {
					C1 = CFrame.new(-0.5, 0.600000024, 0, 0, -0.342020124, -0.939692557, 0, 0.939692557, -0.342020124, 1, 0, 0)
				}):Play()
			elseif L_43_.dirPeek == -1 then
				if L_34_.StanceIndex == 0 then
					L_25_:Create(L_31_.humanoid, TweenInfo.new(0.5), {
						CameraOffset = Vector3.new(1.5, 0, 0)
					}):Play()
				elseif L_34_.StanceIndex == 1 then
					L_25_:Create(L_31_.humanoid, TweenInfo.new(0.5), {
						CameraOffset = Vector3.new(1.5, -1.2, 0)
					}):Play()
				end
				L_25_:Create(L_31_.rootJoint, TweenInfo.new(0.6), {
					C1 = CFrame.new(-0.600000024, 0, 0, -0.939692557, 0, -0.342020154, -0.342020154, 0, 0.939692557, 0, 1, 0)
				}):Play()
				L_25_:Create(L_31_.rightHip, TweenInfo.new(0.6), {
					C1 = CFrame.new(0.5, 0.600000024, 0, 0, 0.342020124, 0.939692557, 0, 0.939692557, -0.342020124, -1, 0, 0)
				}):Play()
				L_25_:Create(L_31_.leftHip, TweenInfo.new(0.6), {
					C1 = CFrame.new(-0.5, 1, 0, 0, 0, -0.99999994, 0, 0.99999994, 0, 1, 0, 0)
				}):Play()
			elseif L_43_.dirPeek == 0 then
				if L_34_.StanceIndex == 0 then
					L_25_:Create(L_31_.humanoid, TweenInfo.new(0.5), {
						CameraOffset = Vector3.new(0, 0, 0)
					}):Play()
				elseif L_34_.StanceIndex == 1 then
					L_25_:Create(L_31_.humanoid, TweenInfo.new(0.5), {
						CameraOffset = Vector3.new(0, -1.2, 0)
					}):Play()
				end
				L_25_:Create(L_31_.rootJoint, TweenInfo.new(0.6), {
					C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
				}):Play()
				L_25_:Create(L_31_.rightHip, TweenInfo.new(0.6), {
					C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
				}):Play()
				L_25_:Create(L_31_.leftHip, TweenInfo.new(0.6), {
					C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
				}):Play()
			end
		elseif L_34_.StanceIndex == 2 then
			L_43_.dirPeek = 0
			L_25_:Create(L_2_:WaitForChild("Humanoid"), TweenInfo.new(0.5), {
				CameraOffset = Vector3.new(0, -3, 0)
			}):Play()
			L_25_:Create(L_31_.rootJoint, TweenInfo.new(0.6), {
				C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
			}):Play()
			L_25_:Create(L_31_.rightHip, TweenInfo.new(0.6), {
				C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			}):Play()
			L_25_:Create(L_31_.leftHip, TweenInfo.new(0.6), {
				C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			}):Play()
		end
		L_33_.updateCharEvent:FireServer("Lean", true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_34_.StanceIndex, L_43_.dirPeek)
	end
end
function G_37_(L_200_arg1)
	if L_34_.HalfStep then
		L_33_.halfStepEvent:FireServer(string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_200_arg1, L_44_)
	end
	L_34_.HalfStep = not L_34_.HalfStep
end
function G_38_(L_201_arg1, L_202_arg2, L_203_arg3, L_204_arg4)
	local L_205_ = Instance.new("Trail", L_204_arg4)
	L_205_.Attachment0 = L_202_arg2
	L_205_.Attachment1 = L_203_arg3
	L_205_.Transparency = NumberSequence.new(L_201_arg1.TracerTransparency)
	L_205_.LightEmission = L_201_arg1.TracerLightEmission
	L_205_.TextureLength = L_201_arg1.TracerTextureLength
	L_205_.LightInfluence = 0
	L_205_.Texture = "http://www.roblox.com/asset/?id=4528011555"
	L_205_.Lifetime = L_201_arg1.TracerLifetime
	L_205_.FaceCamera = L_201_arg1.TracerFaceCamera
	L_205_.Color = ColorSequence.new(L_201_arg1.TracerColor.Color)
end
function L_107_(L_206_arg1, L_207_arg2)
	if L_34_.curConfig then
		local L_208_ = L_206_arg1
		local L_209_ = L_207_arg2
		local L_210_ = CFrame.new(L_208_, L_208_ + L_209_)
		local L_211_ = Instance.new("Part")
		L_211_.Parent = L_17_
		L_211_.Name = "Bullet"
		game.Debris:AddItem(L_211_, 10)
		L_211_.Shape = Enum.PartType.Ball
		L_211_.Size = Vector3.new(1, 1, 12)
		L_211_.Name = "Bullet"
		L_211_.TopSurface = "Smooth"
		L_211_.BottomSurface = "Smooth"
		L_211_.BrickColor = BrickColor.new("Bright green")
		L_211_.Material = "Neon"
		L_211_.CanCollide = false
		L_211_.CFrame = L_210_
		L_211_.Transparency = 1
		local L_212_ = L_211_:GetMass()
		local L_213_ = Instance.new("BodyForce", L_211_)
		L_213_.Force = L_32_.globalConfig.BulletPhysics
		L_211_.Velocity = L_209_ * L_32_.globalConfig.BulletSpeed
		local L_214_ = Instance.new("Attachment", L_211_)
		L_214_.Position = Vector3.new(0.1, 0, 0)
		local L_215_ = Instance.new("Attachment", L_211_)
		L_215_.Position = Vector3.new(-0.1, 0, 0)
		local L_216_ = L_32_.codeArchive.TracerCalculation(L_34_.curConfig.TracerChance)
		if L_34_.curConfig.TracerEnabled == true and L_216_ then
			if L_32_.globalConfig.NightTimeTracers then
				if game.Lighting.ClockTime > L_32_.globalConfig.MinTime or game.Lighting.ClockTime < L_32_.globalConfig.MaxTime then
					G_38_(L_34_.curConfig, L_214_, L_215_, L_211_)
				end
			else
				G_38_(L_34_.curConfig, L_214_, L_215_, L_211_)
			end
		end
		return L_211_
	end
end
function G_39_(L_217_arg1, L_218_arg2, L_219_arg3)
	if L_34_.curConfig then
		local L_220_
		if not L_218_arg2 then
			L_220_ = L_34_.FirePart.Position
		else
			L_220_ = L_218_arg2
		end
		local L_221_
		if not L_219_arg3 then
			if not L_89_ then
				L_221_ = L_34_.FirePart.CFrame.lookVector + (L_34_.FirePart.CFrame.upVector * L_34_.HopUp)
			else
				L_221_ = L_34_.FirePart.CFrame.lookVector + (L_34_.FirePart.CFrame.upVector * L_34_.oHopUp)
			end
		else
			L_221_ = L_219_arg3
		end
		local L_222_ = CFrame.Angles(math.rad(math.random(-L_217_arg1, L_217_arg1)), math.rad(math.random(-L_217_arg1, L_217_arg1)), math.rad(math.random(-L_217_arg1, L_217_arg1)))
		L_221_ = L_222_ * L_221_
		local L_223_ = CFrame.new(L_220_, L_220_ + L_221_)
		local L_224_ = Instance.new("Part")
		L_224_.Parent = L_17_
		table.insert(L_38_, L_224_)
		L_224_.Name = "Bullet"
		game.Debris:AddItem(L_224_, 10)
		L_224_.Shape = Enum.PartType.Ball
		L_224_.Size = Vector3.new(1, 1, 12)
		L_224_.Name = "Bullet"
		L_224_.TopSurface = "Smooth"
		L_224_.BottomSurface = "Smooth"
		L_224_.BrickColor = BrickColor.new("Bright green")
		L_224_.Material = "Neon"
		L_224_.CanCollide = false
		L_224_.CFrame = L_223_
		L_224_.Transparency = 1
		local L_225_ = L_224_:GetMass()
		local L_226_ = Instance.new("BodyForce", L_224_)
		if not L_69_ then
			L_226_.Force = Vector3.new(0, L_32_.globalConfig.BulletPhysics, 0)
			L_224_.Velocity = L_221_ * L_32_.globalConfig.BulletSpeed
		else
			L_226_.Force = L_34_.curConfig.ExploPhysics
			L_224_.Velocity = L_221_ * L_34_.curConfig.ExploSpeed
		end
		local L_227_ = Instance.new("Attachment", L_224_)
		L_227_.Position = Vector3.new(0.1, 0, 0)
		local L_228_ = Instance.new("Attachment", L_224_)
		L_228_.Position = Vector3.new(-0.1, 0, 0)
		local L_229_ = L_32_.codeArchive.TracerCalculation(L_34_.curConfig.TracerChance)
		if L_34_.FireMode == 6 then
			local L_230_ = L_7_:WaitForChild("RocketFire"):Clone()
			L_230_.Parent = L_224_
			L_230_.Enabled = true
			local L_231_ = L_7_:WaitForChild("RocketLoop"):Clone()
			L_231_.Parent = L_224_
			L_231_:Play()
		end
		if L_34_.curConfig.TracerEnabled == true and L_229_ then
			if L_32_.globalConfig.NightTimeTracers then
				if game.Lighting.ClockTime > L_32_.globalConfig.MinTime or game.Lighting.ClockTime < L_32_.globalConfig.MaxTime then
					G_38_(L_34_.curConfig, L_227_, L_228_, L_224_)
				end
			else
				G_38_(L_34_.curConfig, L_227_, L_228_, L_224_)
			end
		end
		G_40_()
		if L_32_.globalConfig.ReplicatedBullets then
			L_33_.whizEvent:FireServer(L_223_, L_34_.curConfig.TracerEnabled, L_229_, L_34_.curConfig.BulletPhysics, L_34_.curConfig.BulletSpeed, L_221_, L_34_.curConfig.TracerColor, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_34_.FireMode)
		end
		return L_224_
	end
end
function G_41_(L_232_arg1, L_233_arg2, L_234_arg3, L_235_arg4, L_236_arg5, L_237_arg6, L_238_arg7, L_239_arg8)
	local L_240_ = L_232_arg1
	local L_241_ = Instance.new("Part")
	L_241_.Parent = L_17_
	L_241_.Name = "Bullet"
	game.Debris:AddItem(L_241_, 10)
	L_241_.Shape = Enum.PartType.Ball
	L_241_.Size = Vector3.new(1, 1, 12)
	L_241_.Name = "Bullet"
	L_241_.TopSurface = "Smooth"
	L_241_.BottomSurface = "Smooth"
	L_241_.BrickColor = BrickColor.new("Bright green")
	L_241_.Material = "Neon"
	L_241_.CanCollide = false
	L_241_.CFrame = L_240_
	game.Debris:AddItem(L_241_, 4)
	L_241_.Transparency = 1
	local L_242_ = L_241_:GetMass()
	local L_243_ = Instance.new("BodyForce", L_241_)
	L_243_.Force = L_235_arg4
	L_241_.Velocity = L_237_arg6 * L_236_arg5
	local L_244_ = Instance.new("Attachment", L_241_)
	L_244_.Position = Vector3.new(0.1, 0, 0)
	local L_245_ = Instance.new("Attachment", L_241_)
	L_245_.Position = Vector3.new(-0.1, 0, 0)
	if L_233_arg2 and L_234_arg3 then
		local L_246_ = Instance.new("Trail", L_241_)
		L_246_.Attachment0 = L_244_
		L_246_.Attachment1 = L_245_
		L_246_.Transparency = NumberSequence.new(0.3)
		L_246_.LightEmission = 1
		L_246_.TextureLength = 1
		L_246_.LightInfluence = 0
		L_246_.Texture = "http://www.roblox.com/asset/?id=4528011555"
		L_246_.Lifetime = 0.1
		L_246_.FaceCamera = true
		L_246_.Color = ColorSequence.new(BrickColor.new("Deep orange").Color)
	end
	if L_239_arg8 == 6 then
		local L_247_ = L_7_:WaitForChild("RocketFire"):Clone()
		L_247_.Parent = L_241_
		L_247_.Enabled = true
		local L_248_ = L_7_:WaitForChild("RocketLoop"):Clone()
		L_248_.Parent = L_241_
		L_248_:Play()
	end
	return L_241_
end
function G_42_(L_249_arg1, L_250_arg2, L_251_arg3, L_252_arg4, L_253_arg5, L_254_arg6)
	if L_34_.curConfig then
		L_33_.createOwnerEvent:FireServer(L_251_arg3, nil, nil, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
		if (L_249_arg1.Name == "Head" or L_249_arg1:FindFirstAncestorWhichIsA("Accessory")) then
			if L_249_arg1.Name == "Head" then
				L_33_.damageEvent:FireServer(L_251_arg3, L_34_.curConfig.HeadDamage, L_249_arg1.Name, {
					"nil",
					string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"),
					"nil",
					"nil"
				})
			elseif L_249_arg1:FindFirstAncestorWhichIsA("Accessory") then
				local L_256_ = L_249_arg1:FindFirstAncestorWhichIsA("Accessory")
				if L_256_:WaitForChild("Handle"):WaitForChild("AccessoryWeld").Part1.Name == "Head" then
					L_33_.damageEvent:FireServer(L_251_arg3, L_34_.curConfig.HeadDamage, L_249_arg1.Name, {
						"nil",
						string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"),
						"nil",
						"nil"
					})
				elseif L_256_:WaitForChild("Handle"):WaitForChild("AccessoryWeld").Part1.Name == "Torso" then
					L_33_.damageEvent:FireServer(L_251_arg3, L_34_.curConfig.BaseDamage, L_249_arg1.Name, {
						"nil",
						string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"),
						"nil",
						"nil"
					})
				end
			end
		elseif L_249_arg1.Name == "Torso" or L_249_arg1.Name == "HumanoidRootPart" then
			L_33_.damageEvent:FireServer(L_251_arg3, L_34_.curConfig.BaseDamage, L_249_arg1.Name, {
				"nil",
				string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"),
				"nil",
				"nil"
			})
		elseif (L_249_arg1.Name == "Right Arm" or L_249_arg1.Name == "Left Arm" or L_249_arg1.Name == "Left Leg" or L_249_arg1.Name == "Right Leg") then
			L_33_.damageEvent:FireServer(L_251_arg3, L_34_.curConfig.LimbDamage, L_249_arg1.Name, {
				"nil",
				string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"),
				"nil",
				"nil"
			})
		elseif L_249_arg1.Name == "Armor" then
			L_33_.damageEvent:FireServer(L_251_arg3, L_34_.curConfig.ArmorDamage, L_249_arg1.Name, {
				"nil",
				string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"),
				"nil",
				"nil"
			})
		elseif L_249_arg1.Parent:FindFirstChild("Middle") or L_249_arg1.Parent.Parent:FindFirstChild("Middle") then
			local L_257_
			if L_249_arg1.Parent:FindFirstChild("Middle") then
				L_257_ = L_249_arg1.Parent.Middle
			elseif L_249_arg1.Parent.Parent:FindFirstChild("Middle") then
				L_257_ = L_249_arg1.Parent.Parent.Middle
			end
			if L_257_ then
				if L_257_.Parent.Name == "Chest" then
					L_33_.damageEvent:FireServer(L_251_arg3, L_34_.curConfig.BaseDamage - (L_34_.curConfig.BaseDamage * (L_32_.globalConfig.ArmorBase / 100)), L_249_arg1.Name, {
						"nil",
						string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"),
						"nil",
						"nil"
					})
				elseif L_257_.Parent.Name == "HeadWear" then
					L_33_.damageEvent:FireServer(L_251_arg3, L_34_.curConfig.BaseDamage - (L_34_.curConfig.HeadDamage * (L_32_.globalConfig.ArmorHead / 100)), L_249_arg1.Name, {
						"nil",
						string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"),
						"nil",
						"nil"
					})
				else
					L_33_.damageEvent:FireServer(L_251_arg3, L_34_.curConfig.BaseDamage - (L_34_.curConfig.LimbDamage * (L_32_.globalConfig.ArmorLimb / 100)), L_249_arg1.Name, {
						"nil",
						string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"),
						"nil",
						"nil"
					})
				end
			end
		else
			L_33_.damageEvent:FireServer(L_251_arg3, L_34_.curConfig.BaseDamage, L_249_arg1.Name, {
				"nil",
				string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"),
				"nil",
				"nil"
			})
		end
		local L_255_ = L_7_:WaitForChild("BodyHit"):clone()
		L_255_.Parent = L_1_.PlayerGui
		L_255_:Play()
		game:GetService("Debris"):addItem(L_255_, L_255_.TimeLength)
		L_33_.hitEvent:FireServer(L_250_arg2, L_252_arg4, L_253_arg5, L_254_arg6, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), "Human", L_249_arg1)
	end
end
function G_43_(L_258_arg1, L_259_arg2, L_260_arg3, L_261_arg4)
	if L_34_.curConfig then
		local L_262_, L_263_, L_264_
		local L_265_
		if not L_259_arg2 then
			L_265_ = L_34_.CurAimPart.Position
		else
			L_265_ = L_260_arg3
		end
		local L_266_ = L_258_arg1.Position
		local L_267_ = 0
		local L_268_ = false
		while true do
			L_26_:Wait()
			L_266_ = L_258_arg1.Position
			L_267_ = L_267_ + (L_266_ - L_265_).magnitude
			if L_261_arg4 then
				table.insert(L_38_, 1, L_261_arg4)
			end
			L_262_, L_263_, L_264_ = workspace:FindPartOnRayWithIgnoreList(Ray.new(L_265_, (L_266_ - L_265_)), L_38_)
			local L_269_ = Vector3.new(0, 1, 0):Cross(L_264_)
			local L_270_ = math.asin(L_269_.magnitude)
			if L_261_arg4 then
				table.remove(L_38_, 1)
			end
			for L_271_forvar1, L_272_forvar2 in pairs(game.Players:GetChildren()) do
				if L_272_forvar2:IsA("Player") and L_272_forvar2 ~= L_1_ and L_272_forvar2.Character and L_272_forvar2.Character:FindFirstChild("Head") and (L_272_forvar2.Character.Head.Position - L_263_).magnitude <= 25 and not L_268_ then
					L_33_.flybyEvent:FireServer(L_272_forvar2, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
					L_268_ = true
				end
			end
			for L_273_forvar1, L_274_forvar2 in pairs(L_38_) do
				if L_274_forvar2 and #L_38_ > 3 and L_274_forvar2 == L_259_arg2 then
					table.remove(L_38_, L_273_forvar1)
				end
			end
			if L_267_ > 10000 then
				L_258_arg1:Destroy()
				break
			end
			if L_262_ then
				if (L_262_.Transparency >= 1 or L_262_.CanCollide == false) and L_262_.Name ~= "Right Arm" and L_262_.Name ~= "Left Arm" and L_262_.Name ~= "Right Leg" and L_262_.Name ~= "Left Leg" and L_262_.Name ~= "Torso" and L_262_.Name ~= "Armor" and not L_262_.Parent:FindFirstChild("CEVARS") and not L_262_.Parent:FindFirstChild("Middle") and not L_262_.Parent.Parent:FindFirstChild("Middle") and L_262_.Material ~= Enum.Material.Water then
					table.insert(L_38_, L_262_)
					local L_275_, L_276_ = spawn(function()
						G_43_(L_258_arg1, L_262_, L_263_)
					end)
					break
				elseif L_262_.Name == "HumanoidRootPart" then
					table.insert(L_38_, L_262_)
					local L_277_, L_278_ = spawn(function()
						G_43_(L_258_arg1, L_262_, L_263_)
					end)
					break
				else
					if L_262_ then
						if L_32_.globalConfig.RicochetEnabled then
							local L_279_, L_280_ = L_32_.codeArchive.richoCalc(L_262_)
							if L_279_ then
								local L_281_ = L_258_arg1.CFrame.LookVector
								L_258_arg1.Velocity = (L_281_ - (2 * L_281_:Dot(L_264_) * L_264_)) * (L_34_.curConfig.BulletSpeed / 2)
								local L_282_, L_283_ = spawn(function()
									G_43_(L_258_arg1, L_262_, L_263_, L_280_)
								end)
							end
						end
						L_33_.serverFXEvent:FireServer(L_263_, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
						if not L_69_ then
							if L_34_.FireMode ~= 6 then
								local L_284_, L_285_ = L_32_.utilitiesModule.CheckForHumanoid(L_262_)
								if L_284_ then
									if L_34_.curConfig.AntiTK then
										if game.Players:GetPlayerFromCharacter(L_285_.Parent) and game.Players:GetPlayerFromCharacter(L_285_.Parent).Team ~= L_1_.Team then
											G_42_(L_262_, L_263_, L_285_, L_269_, L_270_, L_264_)
										end
										if L_285_.Name == "Target" then
											G_42_(L_262_, L_263_, L_285_, L_269_, L_270_, L_264_)
										end
										if not game.Players:FindFirstChild(L_285_.Parent.Name) then
											if L_285_.Parent:FindFirstChild("Vars") then
												if L_285_.Parent.Vars:FindFirstChild("teamColor") then
													if L_285_.Parent.Vars.teamColor.Value ~= L_1_.TeamColor then
														G_42_(L_262_, L_263_, L_285_, L_269_, L_270_, L_264_)
													end
												end
											else
												G_42_(L_262_, L_263_, L_285_, L_269_, L_270_, L_264_)
											end
										end
									else
										G_42_(L_262_, L_263_, L_285_, L_269_, L_270_, L_264_)
									end
								else
									if L_262_.Parent:FindFirstChild("CEVARS") and L_262_.Parent.CEVARS:FindFirstChild("IsExplosive") and L_262_.Parent.CEVARS.IsExplosive.Value == true then
										L_33_.explosiveEvent:FireServer(L_259_arg2, L_260_arg3, L_32_.globalConfig.C4BlastPressue, L_32_.globalConfig.C4BlastRadius, L_32_.globalConfig.C4DestroyJointRadius, L_32_.globalConfig.C4ExplosionType, L_32_.globalConfig.C4DeletePart, L_262_.Parent, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), nil)
									end
									L_33_.createOwnerEvent:FireServer(L_262_, nil, nil, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
									L_33_.hitEvent:FireServer(L_263_, L_269_, L_270_, L_264_, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), "Part", L_262_)
								end
							elseif L_34_.FireMode == 6 and L_34_.curConfig.RPGEnabled then
								L_33_.explosiveEvent:FireServer(L_262_, L_263_, L_34_.curConfig.BlastPressue, L_34_.curConfig.BlastRadius, L_34_.curConfig.DestroyJointRadius, L_34_.curConfig.ExplosionType, nil, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), nil)
							end
						else
							L_33_.explosiveEvent:FireServer(L_262_, L_263_, L_34_.curConfig.BlastPressue, L_34_.curConfig.BlastRadius, L_34_.curConfig.DestroyJointRadius, L_34_.curConfig.ExplosionType, nil, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), nil)
						end
					end
				end
				break
			end
			L_265_ = L_266_
		end
		return L_262_, L_263_
	end
end
function G_40_()
	local L_286_
	if L_34_.curConfig.RoundType then
		if L_7_:FindFirstChild(L_34_.curConfig.RoundType) then
			L_286_ = L_7_:WaitForChild(L_34_.curConfig.RoundType):clone()
		else
			L_286_ = L_7_:WaitForChild("Shell"):clone()
		end
	else
		L_286_ = L_7_:WaitForChild("Shell"):clone()
	end
	L_286_.Anchored = false
	L_84_ = L_32_.codeArchive.getQuality()
	L_286_.CanCollide = false
	if L_286_:FindFirstChildOfClass("Motor6D") then
		L_286_:FindFirstChildOfClass("Motor6D"):Destroy()
	end
	L_286_.CFrame = L_34_.curModel.Chamber.CFrame
	L_286_.Velocity = L_34_.curModel.Chamber.CFrame.lookVector * 30 + Vector3.new(0, 4, 0)
	L_286_.RotVelocity = Vector3.new(math.random(-180, 180), math.random(-180, 180), math.random(-180, 180))
	L_286_.Parent = L_17_
	game:GetService("Debris"):addItem(L_286_, 10)
	delay(0.1, function()
		if L_84_ then
			L_286_.CanCollide = true
		else
			L_286_.CanCollide = false
		end
	end)
	delay(0.5, function()
		if L_7_:FindFirstChild("ShellCasing") then
			local L_287_ = L_7_.ShellCasing:clone()
			L_287_.Parent = L_1_.PlayerGui
			L_287_:Play()
			game:GetService("Debris"):AddItem(L_287_, L_287_.TimeLength)
		end
	end)
	for L_288_forvar1, L_289_forvar2 in pairs(L_34_.curModel.Chamber:GetChildren()) do
		if L_289_forvar2 and L_289_forvar2.Name == "Gas_Discharge" then
			L_289_forvar2.Enabled = true
			delay(0.1, function()
				L_289_forvar2.Enabled = false
			end)
		end
	end
end
function G_44_()
	if L_32_.globalConfig.DustUpFX then
		local L_290_, L_291_, L_292_ = workspace:FindPartOnRayWithIgnoreList(Ray.new(L_34_.FirePart.Position, L_34_.FirePart.CFrame.upVector * -3), L_38_)
		local L_293_ = Vector3.new(0, 1, 0):Cross(L_292_)
		local L_294_ = math.asin(L_293_.magnitude)
		if L_290_ then
			local L_310_ = Instance.new("Part")
			L_310_.Parent = L_17_
			L_310_.Anchored = false
			L_310_.CanCollide = false
			L_310_.Transparency = 1
			L_310_.CFrame = CFrame.new(L_291_) * CFrame.fromAxisAngle(L_293_.magnitude == 0 and Vector3.new(1) or L_293_.unit, L_294_)
			local L_311_ = L_7_:WaitForChild("DustUp"):Clone()
			L_311_.Parent = L_310_
			L_311_.Enabled = true
			game.Debris:AddItem(L_310_, 2)
			delay(0.1, function()
				L_311_.Enabled = false
			end)
		end
		local L_295_, L_296_, L_297_ = workspace:FindPartOnRayWithIgnoreList(Ray.new(L_34_.FirePart.Position, L_34_.FirePart.CFrame.upVector * 3), L_38_)
		local L_298_ = Vector3.new(0, 1, 0):Cross(L_297_)
		local L_299_ = math.asin(L_298_.magnitude)
		if L_295_ then
			local L_312_ = Instance.new("Part")
			L_312_.Parent = L_17_
			L_312_.Anchored = false
			L_312_.CanCollide = false
			L_312_.Transparency = 1
			L_312_.CFrame = CFrame.new(L_296_) * CFrame.fromAxisAngle(L_298_.magnitude == 0 and Vector3.new(1) or L_298_.unit, L_299_)
			local L_313_ = L_7_:WaitForChild("DustUp"):Clone()
			L_313_.Parent = L_312_
			L_313_.Enabled = true
			game.Debris:AddItem(L_312_, 2)
			delay(0.1, function()
				L_313_.Enabled = false
			end)
		end
		local L_300_, L_301_, L_302_ = workspace:FindPartOnRayWithIgnoreList(Ray.new(L_34_.FirePart.Position, L_34_.FirePart.CFrame.rightVector * -3), L_38_)
		local L_303_ = Vector3.new(0, 1, 0):Cross(L_302_)
		local L_304_ = math.asin(L_303_.magnitude)
		if L_300_ then
			local L_314_ = Instance.new("Part")
			L_314_.Parent = L_17_
			L_314_.Anchored = false
			L_314_.CanCollide = false
			L_314_.Transparency = 1
			L_314_.CFrame = CFrame.new(L_301_) * CFrame.fromAxisAngle(L_303_.magnitude == 0 and Vector3.new(1) or L_303_.unit, L_304_)
			local L_315_ = L_7_:WaitForChild("DustUp"):Clone()
			L_315_.Parent = L_314_
			L_315_.Enabled = true
			game.Debris:AddItem(L_314_, 2)
			delay(0.1, function()
				L_315_.Enabled = false
			end)
		end
		local L_305_, L_306_, L_307_ = workspace:FindPartOnRayWithIgnoreList(Ray.new(L_34_.FirePart.Position, L_34_.FirePart.CFrame.rightVector * 3), L_38_)
		local L_308_ = Vector3.new(0, 1, 0):Cross(L_307_)
		local L_309_ = math.asin(L_308_.magnitude)
		if L_305_ then
			local L_316_ = Instance.new("Part")
			L_316_.Parent = L_17_
			L_316_.Anchored = false
			L_316_.CanCollide = false
			L_316_.Transparency = 1
			L_316_.CFrame = CFrame.new(L_306_) * CFrame.fromAxisAngle(L_308_.magnitude == 0 and Vector3.new(1) or L_308_.unit, L_309_)
			local L_317_ = L_7_:WaitForChild("DustUp"):Clone()
			L_317_.Parent = L_316_
			L_317_.Enabled = true
			game.Debris:AddItem(L_316_, 2)
			delay(0.1, function()
				L_317_.Enabled = false
			end)
		end
	end
end
function G_29_()
	if L_34_.curConfig then
		if L_44_ then
			L_83_ = true
			L_34_.CanShoot = false
			G_45_ = true
			local L_319_ = G_25_()
			local L_320_ = G_26_()
			L_43_.recoilSpring.t = L_43_.recoilSpring.t + L_319_
			L_43_.recoilSpring2.t = L_43_.recoilSpring2.t + L_320_
			if L_34_.curConfig.Firerate / 2 >= 0.025 then
				delay(0.025, function()
					L_43_.recoilSpring.t = L_43_.recoilSpring.t - L_319_
					L_43_.recoilSpring2.t = L_43_.recoilSpring2.t - L_320_
				end)
			elseif L_34_.curConfig.Firerate / 2 < 0.025 then
				delay(L_34_.curConfig.Firerate / 2, function()
					L_43_.recoilSpring.t = L_43_.recoilSpring.t - L_319_
					L_43_.recoilSpring2.t = L_43_.recoilSpring2.t - L_320_
				end)
			end
			if L_34_.curConfig.fireAnim then
				spawn(function()
					G_46_()
				end)
			end
			G_44_()
			L_33_.updateCharEvent:FireServer("Shoot", true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_34_.curConfig.Firerate / 2)
			G_47_ = true
			if L_32_.globalConfig.SoundIso then
				L_33_.connectionEvent:FireServer(L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire").SoundId, L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"), L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire").PlaybackSpeed, nil, nil, nil, nil, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
			end
			L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire"):Play()
			L_18_ = G_39_(L_34_.curConfig.BulletSpread)
			L_34_.Ammo = L_34_.Ammo - 1
			if L_34_.Ammo <= 0 then
				for L_323_forvar1, L_324_forvar2 in pairs(L_34_.curModel:GetDescendants()) do
					if L_324_forvar2 and L_324_forvar2.Name == "Ping" and L_324_forvar2:IsA("Sound") then
						L_324_forvar2:Play()
					end
				end
			end
			G_48_ = true
			local L_321_, L_322_ = spawn(function()
				G_43_(L_18_)
			end)
			for L_325_forvar1, L_326_forvar2 in pairs(L_34_.FirePart:GetChildren()) do
				if L_326_forvar2.Name:sub(1, 7) == "FlashFX" then
					L_326_forvar2.Enabled = true
				end
			end
			delay(1 / 30, function()
				for L_327_forvar1, L_328_forvar2 in pairs(L_34_.FirePart:GetChildren()) do
					if L_328_forvar2.Name:sub(1, 7) == "FlashFX" then
						L_328_forvar2.Enabled = false
					end
				end
			end)
			if L_34_.curConfig.CanBolt == true then
				G_49_()
				delay(L_34_.curConfig.Firerate / 2, function()
					if L_34_.curConfig.CanSlideLock == false then
						G_50_()
					elseif L_34_.curConfig.CanSlideLock == true then
						if L_34_.Ammo > 0 then
							G_50_()
						end
					end
				end)
			end
			delay(L_34_.curConfig.Firerate / 2, function()
				G_45_ = false
				G_48_ = false
			end)
			wait(L_34_.curConfig.Firerate)
			G_47_ = false
			L_34_.CanShoot = true
		end
		local L_318_ = L_32_.codeArchive.JamCalculation(L_32_.globalConfig.JamChance)
		if L_318_ then
			L_34_.CanShoot = false
			G_10_()
		end
		G_10_()
	end
	L_83_ = false
end
function G_34_()
	if L_34_.curConfig and L_34_.FirePart then
		if L_44_ then
			L_83_ = true
			L_34_.CanShoot = false
			G_45_ = true
			local L_329_ = G_25_()
			local L_330_ = G_26_()
			L_43_.recoilSpring.t = L_43_.recoilSpring.t + L_329_
			L_43_.recoilSpring2.t = L_43_.recoilSpring2.t + L_330_
			if L_34_.curConfig.Firerate / 2 >= 0.025 then
				delay(0.025, function()
					L_43_.recoilSpring.t = L_43_.recoilSpring.t - L_329_
					L_43_.recoilSpring2.t = L_43_.recoilSpring2.t - L_330_
				end)
			elseif L_34_.curConfig.Firerate / 2 < 0.025 then
				delay(L_34_.curConfig.Firerate / 2, function()
					L_43_.recoilSpring.t = L_43_.recoilSpring.t - L_329_
					L_43_.recoilSpring2.t = L_43_.recoilSpring2.t - L_330_
				end)
			end
			L_34_.Mag.Transparency = 1
			if L_34_.curConfig.fireAnim then
				spawn(function()
					G_46_()
				end)
			end
			G_44_()
			L_33_.updateCharEvent:FireServer("Shoot", true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_34_.curConfig.Firerate / 2)
			G_47_ = true
			if L_32_.globalConfig.SoundIso then
				L_33_.connectionEvent:FireServer(L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire").SoundId, L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"), L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire").PlaybackSpeed, nil, nil, nil, nil, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
			end
			L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire"):Play()
			L_18_ = G_39_(0)
			L_34_.Ammo = L_34_.Ammo - 1
			G_48_ = true
			local L_331_, L_332_ = spawn(function()
				G_43_(L_18_)
			end)
			for L_333_forvar1, L_334_forvar2 in pairs(L_34_.FirePart:GetChildren()) do
				if L_334_forvar2.Name:sub(1, 7) == "FlashFX" then
					L_334_forvar2.Enabled = true
				end
			end
			delay(1 / 30, function()
				for L_335_forvar1, L_336_forvar2 in pairs(L_34_.FirePart:GetChildren()) do
					if L_336_forvar2.Name:sub(1, 7) == "FlashFX" then
						L_336_forvar2.Enabled = false
					end
				end
			end)
			delay(L_34_.curConfig.Firerate / 2, function()
				G_45_ = false
				G_48_ = false
			end)
			G_47_ = false
		end
		G_10_()
	end
	L_83_ = false
end
function G_35_()
	if L_34_.curConfig and L_34_.FirePart2 then
		if L_44_ then
			L_83_ = true
			L_34_.CanShoot = false
			L_70_ = true
			G_45_ = true
			local L_337_ = G_25_()
			local L_338_ = G_26_()
			L_43_.recoilSpring.t = L_43_.recoilSpring.t + L_337_
			L_43_.recoilSpring2.t = L_43_.recoilSpring2.t + L_338_
			if L_34_.curConfig.Firerate / 2 >= 0.025 then
				delay(0.025, function()
					L_43_.recoilSpring.t = L_43_.recoilSpring.t - L_337_
					L_43_.recoilSpring2.t = L_43_.recoilSpring2.t - L_338_
				end)
			elseif L_34_.curConfig.Firerate / 2 < 0.025 then
				delay(L_34_.curConfig.Firerate / 2, function()
					L_43_.recoilSpring.t = L_43_.recoilSpring.t - L_337_
					L_43_.recoilSpring2.t = L_43_.recoilSpring2.t - L_338_
				end)
			end
			if L_34_.curConfig.fireAnim then
				spawn(function()
					G_46_()
				end)
			end
			G_44_()
			L_33_.updateCharEvent:FireServer("Shoot", true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_34_.curConfig.Firerate / 2)
			G_47_ = true
			if L_32_.globalConfig.SoundIso then
				L_33_.connectionEvent:FireServer(L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire2").SoundId, L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"), L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire2").PlaybackSpeed, nil, nil, nil, nil, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
			end
			L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire2"):Play()
			L_18_ = G_39_(0)
			L_34_.ExplosiveAmmo = L_34_.ExplosiveAmmo - 1
			G_48_ = true
			local L_339_, L_340_ = spawn(function()
				G_43_(L_18_)
			end)
			for L_341_forvar1, L_342_forvar2 in pairs(L_34_.FirePart2:GetChildren()) do
				if L_342_forvar2.Name:sub(1, 7) == "FlashFX" then
					L_342_forvar2.Enabled = true
				end
			end
			delay(1 / 30, function()
				for L_343_forvar1, L_344_forvar2 in pairs(L_34_.FirePart2:GetChildren()) do
					if L_344_forvar2.Name:sub(1, 7) == "FlashFX" then
						L_344_forvar2.Enabled = false
					end
				end
			end)
			delay(L_34_.curConfig.Firerate / 2, function()
				G_45_ = false
				G_48_ = false
			end)
			G_47_ = false
		end
		G_10_()
	end
	L_83_ = false
end
function G_33_()
	if L_34_.curConfig then
		if L_44_ then
			L_83_ = true
			L_34_.CanShoot = false
			G_45_ = true
			local L_345_ = G_25_()
			local L_346_ = G_26_()
			L_43_.recoilSpring.t = L_43_.recoilSpring.t + L_345_
			L_43_.recoilSpring2.t = L_43_.recoilSpring2.t + L_346_
			if L_34_.curConfig.Firerate / 2 >= 0.025 then
				delay(0.025, function()
					L_43_.recoilSpring.t = L_43_.recoilSpring.t - L_345_
					L_43_.recoilSpring2.t = L_43_.recoilSpring2.t - L_346_
				end)
			elseif L_34_.curConfig.Firerate / 2 < 0.025 then
				delay(L_34_.curConfig.Firerate / 2, function()
					L_43_.recoilSpring.t = L_43_.recoilSpring.t - L_345_
					L_43_.recoilSpring2.t = L_43_.recoilSpring2.t - L_346_
				end)
			end
			if L_34_.curConfig.fireAnim then
				spawn(function()
					G_46_()
				end)
			end
			G_44_()
			L_33_.updateCharEvent:FireServer("Shoot", true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_34_.curConfig.Firerate / 2)
			G_47_ = true
			G_48_ = true
			if L_32_.globalConfig.SoundIso then
				L_33_.connectionEvent:FireServer(L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire").SoundId, L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"), L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire").PlaybackSpeed, nil, nil, nil, nil, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
			end
			L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire"):Play()
			for L_348_forvar1 = 1, L_34_.curConfig.ShotNum do
				spawn(function()
					L_18_ = G_39_(L_34_.curConfig.BulletSpread)
				end)
				local L_349_, L_350_ = spawn(function()
					G_43_(L_18_)
				end)
			end
			for L_351_forvar1, L_352_forvar2 in pairs(L_34_.FirePart:GetChildren()) do
				if L_352_forvar2.Name:sub(1, 7) == "FlashFX" then
					L_352_forvar2.Enabled = true
				end
			end
			delay(1 / 30, function()
				for L_353_forvar1, L_354_forvar2 in pairs(L_34_.FirePart:GetChildren()) do
					if L_354_forvar2.Name:sub(1, 7) == "FlashFX" then
						L_354_forvar2.Enabled = false
					end
				end
			end)
			if L_34_.curConfig.CanBolt == true then
				G_49_()
				delay(L_34_.curConfig.Firerate / 2, function()
					if L_34_.curConfig.CanSlideLock == false then
						G_50_()
					elseif L_34_.curConfig.CanSlideLock == true then
						if L_34_.Ammo > 0 then
							G_50_()
						end
					end
				end)
			end
			delay(L_34_.curConfig.Firerate / 2, function()
				G_45_ = false
				G_48_ = false
			end)
			L_34_.Ammo = L_34_.Ammo - 1
			wait(L_34_.curConfig.Firerate)
			L_56_ = false
			if L_34_.curConfig.CanAutoBolt then
				G_51_ = true
				G_11_()
				G_12_()
				G_13_()
				G_51_ = false
				L_34_.CanShoot = true
			end
			G_47_ = false
			G_10_()
			local L_347_ = L_32_.codeArchive.JamCalculation(L_32_.globalConfig.JamChance)
			if L_347_ then
				L_34_.CanShoot = false
				G_10_()
			end
		end
		G_10_()
	end
	L_83_ = false
end
function G_32_()
	if L_34_.curConfig then
		if L_44_ then
			L_83_ = true
			L_34_.CanShoot = false
			G_45_ = true
			local L_355_ = G_25_()
			local L_356_ = G_26_()
			L_43_.recoilSpring.t = L_43_.recoilSpring.t + L_355_
			L_43_.recoilSpring2.t = L_43_.recoilSpring2.t + L_356_
			if L_34_.curConfig.Firerate / 2 >= 0.025 then
				delay(0.025, function()
					L_43_.recoilSpring.t = L_43_.recoilSpring.t - L_355_
					L_43_.recoilSpring2.t = L_43_.recoilSpring2.t - L_356_
				end)
			elseif L_34_.curConfig.Firerate / 2 < 0.025 then
				delay(L_34_.curConfig.Firerate / 2, function()
					L_43_.recoilSpring.t = L_43_.recoilSpring.t - L_355_
					L_43_.recoilSpring2.t = L_43_.recoilSpring2.t - L_356_
				end)
			end
			if L_34_.curConfig.fireAnim then
				spawn(function()
					G_46_()
				end)
			end
			G_44_()
			L_33_.updateCharEvent:FireServer("Shoot", true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_34_.curConfig.Firerate / 2)
			G_47_ = true
			if L_32_.globalConfig.SoundIso then
				L_33_.connectionEvent:FireServer(L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire").SoundId, L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"), L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire").PlaybackSpeed, nil, nil, nil, nil, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
			end
			L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire"):Play()
			L_18_ = G_39_(L_34_.curConfig.BulletSpread)
			L_34_.Ammo = L_34_.Ammo - 1
			G_48_ = true
			local L_357_, L_358_ = spawn(function()
				G_43_(L_18_)
			end)
			for L_360_forvar1, L_361_forvar2 in pairs(L_34_.FirePart:GetChildren()) do
				if L_361_forvar2.Name:sub(1, 7) == "FlashFX" then
					L_361_forvar2.Enabled = true
				end
			end
			delay(1 / 30, function()
				for L_362_forvar1, L_363_forvar2 in pairs(L_34_.FirePart:GetChildren()) do
					if L_363_forvar2.Name:sub(1, 7) == "FlashFX" then
						L_363_forvar2.Enabled = false
					end
				end
			end)
			if L_34_.curConfig.CanBolt == true then
				G_49_()
				delay(L_34_.curConfig.Firerate / 2, function()
					if L_34_.curConfig.CanSlideLock == false then
						G_50_()
					elseif L_34_.curConfig.CanSlideLock == true then
						if L_34_.Ammo > 0 then
							G_50_()
						end
					end
				end)
			end
			delay(L_34_.curConfig.Firerate / 2, function()
				G_45_ = false
				G_48_ = false
			end)
			L_56_ = false
			wait(L_34_.curConfig.Firerate)
			if L_34_.curConfig.CanAutoBolt then
				G_51_ = true
				G_11_()
				G_12_()
				G_13_()
				G_51_ = false
				L_34_.CanShoot = true
			end
			G_47_ = false
			G_10_()
			local L_359_ = L_32_.codeArchive.JamCalculation(L_32_.globalConfig.JamChance)
			if L_359_ then
				L_34_.CanShoot = false
				G_10_()
			end
		end
		G_10_()
	end
	L_83_ = false
end
function G_30_()
	if L_34_.curConfig then
		while not G_47_ and L_34_.Ammo > 0 and L_34_.MouseHeld and L_34_.CanShoot and L_44_ and not L_82_ do
			if L_82_ then
				L_34_.CanShoot = false
				G_47_ = false
				break
			end
			L_83_ = true
			L_34_.CanShoot = false
			G_45_ = true
			local L_364_ = G_25_()
			local L_365_ = G_26_()
			L_43_.recoilSpring.t = L_43_.recoilSpring.t + L_364_
			L_43_.recoilSpring2.t = L_43_.recoilSpring2.t + L_365_
			if L_34_.curConfig.Firerate / 2 >= 0.025 then
				delay(0.025, function()
					L_43_.recoilSpring.t = L_43_.recoilSpring.t - L_364_
					L_43_.recoilSpring2.t = L_43_.recoilSpring2.t - L_365_
				end)
			elseif L_34_.curConfig.Firerate / 2 < 0.025 then
				delay(L_34_.curConfig.Firerate / 2, function()
					L_43_.recoilSpring.t = L_43_.recoilSpring.t - L_364_
					L_43_.recoilSpring2.t = L_43_.recoilSpring2.t - L_365_
				end)
			end
			if L_34_.curConfig.fireAnim then
				spawn(function()
					G_46_()
				end)
			end
			G_44_()
			L_33_.updateCharEvent:FireServer("Shoot", true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_34_.curConfig.Firerate / 2)
			if L_32_.globalConfig.SoundIso then
				L_33_.connectionEvent:FireServer(L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire").SoundId, L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"), L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire").PlaybackSpeed, nil, nil, nil, nil, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
			end
			L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire"):Play()
			L_34_.Ammo = L_34_.Ammo - 1
			G_47_ = true
			G_48_ = true
			L_18_ = G_39_(L_34_.curConfig.BulletSpread)
			local L_366_, L_367_ = spawn(function()
				G_43_(L_18_)
			end)
			for L_369_forvar1, L_370_forvar2 in pairs(L_34_.FirePart:GetChildren()) do
				if L_370_forvar2.Name:sub(1, 7) == "FlashFX" then
					L_370_forvar2.Enabled = true
				end
			end
			delay(1 / 30, function()
				for L_371_forvar1, L_372_forvar2 in pairs(L_34_.FirePart:GetChildren()) do
					if L_372_forvar2.Name:sub(1, 7) == "FlashFX" then
						L_372_forvar2.Enabled = false
					end
				end
			end)
			if L_34_.curConfig.CanBolt == true then
				G_49_()
				delay(L_34_.curConfig.Firerate / 2, function()
					if L_34_.curConfig.CanSlideLock == false then
						G_50_()
					elseif L_34_.curConfig.CanSlideLock == true then
						if L_34_.Ammo > 0 then
							G_50_()
						end
					end
				end)
			end
			delay(L_34_.curConfig.Firerate / 2, function()
				G_45_ = false
				G_48_ = false
			end)
			wait(L_34_.curConfig.Firerate)
			G_47_ = false
			L_34_.CanShoot = true
			G_10_()
			local L_368_ = L_32_.codeArchive.JamCalculation(L_32_.globalConfig.JamChance)
			if L_368_ then
				L_34_.CanShoot = false
				G_10_()
			end
		end
		G_10_()
	end
	L_83_ = false
end
function G_31_()
	if L_34_.curConfig then
		if not G_47_ and L_34_.Ammo > 0 and L_34_.MouseHeld and L_44_ then
			L_83_ = true
			for L_373_forvar1 = 1, L_34_.curConfig.BurstNum do
				if L_34_.Ammo > 0 and L_34_.MouseHeld then
					L_34_.CanShoot = false
					G_45_ = true
					local L_374_ = G_25_()
					local L_375_ = G_26_()
					L_43_.recoilSpring.t = L_43_.recoilSpring.t + L_374_
					L_43_.recoilSpring2.t = L_43_.recoilSpring2.t + L_375_
					if L_34_.curConfig.Firerate / 2 >= 0.025 then
						delay(0.025, function()
							L_43_.recoilSpring.t = L_43_.recoilSpring.t - L_374_
							L_43_.recoilSpring2.t = L_43_.recoilSpring2.t - L_375_
						end)
					elseif L_34_.curConfig.Firerate / 2 < 0.025 then
						delay(L_34_.curConfig.Firerate / 2, function()
							L_43_.recoilSpring.t = L_43_.recoilSpring.t - L_374_
							L_43_.recoilSpring2.t = L_43_.recoilSpring2.t - L_375_
						end)
					end
					if L_34_.curConfig.fireAnim then
						spawn(function()
							G_46_()
						end)
					end
					G_44_()
					L_33_.updateCharEvent:FireServer("Shoot", true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_34_.curConfig.Firerate / 2)
					if L_32_.globalConfig.SoundIso then
						L_33_.connectionEvent:FireServer(L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire").SoundId, L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"), L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire").PlaybackSpeed, nil, nil, nil, nil, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
					end
					L_2_:WaitForChild("@"..L_34_.curModel.Name):WaitForChild("Grip"):WaitForChild("Fire"):Play()
					L_18_ = G_39_(L_34_.curConfig.BulletSpread)
					local L_376_, L_377_ = spawn(function()
						G_43_(L_18_)
					end)
					for L_378_forvar1, L_379_forvar2 in pairs(L_34_.FirePart:GetChildren()) do
						if L_379_forvar2.Name:sub(1, 7) == "FlashFX" then
							L_379_forvar2.Enabled = true
						end
					end
					delay(1 / 30, function()
						for L_380_forvar1, L_381_forvar2 in pairs(L_34_.FirePart:GetChildren()) do
							if L_381_forvar2.Name:sub(1, 7) == "FlashFX" then
								L_381_forvar2.Enabled = false
							end
						end
					end)
					if L_34_.curConfig.CanBolt == true then
						G_49_()
						delay(L_34_.curConfig.Firerate / 2, function()
							if L_34_.curConfig.CanSlideLock == false then
								G_50_()
							elseif L_34_.curConfig.CanSlideLock == true then
								if L_34_.Ammo > 0 then
									G_50_()
								end
							end
						end)
					end
					L_34_.Ammo = L_34_.Ammo - 1
					G_48_ = true
					delay(L_34_.curConfig.Firerate / 2, function()
						G_45_ = false
						G_48_ = false
					end)
					wait(L_34_.curConfig.Firerate)
				end
				G_47_ = true
			end
			G_47_ = false
			L_34_.CanShoot = true
			G_10_()
		end
		G_10_()
	end
	L_83_ = false
end
function G_10_()
	if L_34_.curConfig then
		L_34_.ammoDisplay.Text = L_34_.Ammo
		L_34_.title.Text = L_34_.curModel.Name
		L_34_.magCountDisplay.Text = math.ceil(L_34_.StoredAmmo / L_34_.curConfig.StoredAmmo)
		L_34_.mobileAmmo.Text = L_34_.Ammo.."/"..math.ceil(L_34_.StoredAmmo / L_34_.curConfig.StoredAmmo)
		if L_34_.StanceIndex == 0 then
			L_34_.stanceDisplay.Image = "rbxassetid://"..1868007495
			L_34_.stanceDisplay.Position = UDim2.new(1, -102, 0, 0)
		elseif L_34_.StanceIndex == 1 then
			L_34_.stanceDisplay.Image = "rbxassetid://"..1868007947
			L_34_.stanceDisplay.Position = UDim2.new(1, -102, 0, 10)
		elseif L_34_.StanceIndex == 2 then
			L_34_.stanceDisplay.Image = "rbxassetid://"..1868008584
			L_34_.stanceDisplay.Position = UDim2.new(1, -102, 0, 23)
		end
		if L_34_.FireMode == 1 then
			L_34_.mode1.BackgroundTransparency = 0
			L_34_.mode2.BackgroundTransparency = 0.7
			L_34_.mode3.BackgroundTransparency = 0.7
			L_34_.mode4.BackgroundTransparency = 0.7
			L_34_.mode5.BackgroundTransparency = 0.7
		elseif L_34_.FireMode == 2 then
			L_34_.mode1.BackgroundTransparency = 0
			L_34_.mode2.BackgroundTransparency = 0
			L_34_.mode3.BackgroundTransparency = 0
			L_34_.mode4.BackgroundTransparency = 0
			L_34_.mode5.BackgroundTransparency = 0
		elseif L_34_.FireMode == 3 then
			L_34_.mode1.BackgroundTransparency = 0
			L_34_.mode2.BackgroundTransparency = 0
			L_34_.mode3.BackgroundTransparency = 0.7
			L_34_.mode4.BackgroundTransparency = 0.7
			L_34_.mode5.BackgroundTransparency = 0.7
		elseif L_34_.FireMode == 4 then
			L_34_.mode1.BackgroundTransparency = 0
			L_34_.mode2.BackgroundTransparency = 0
			L_34_.mode3.BackgroundTransparency = 0
			L_34_.mode4.BackgroundTransparency = 0.7
			L_34_.mode5.BackgroundTransparency = 0.7
		elseif L_34_.FireMode == 5 then
			L_34_.mode1.BackgroundTransparency = 0
			L_34_.mode2.BackgroundTransparency = 0
			L_34_.mode3.BackgroundTransparency = 0
			L_34_.mode4.BackgroundTransparency = 0
			L_34_.mode5.BackgroundTransparency = 0.7
		elseif L_34_.FireMode == 6 then
			L_34_.mode1.BackgroundTransparency = 0
			L_34_.mode2.BackgroundTransparency = 0.7
			L_34_.mode3.BackgroundTransparency = 0
			L_34_.mode4.BackgroundTransparency = 0
			L_34_.mode5.BackgroundTransparency = 0.7
		end
		if L_34_.CanShoot then
			for L_382_forvar1, L_383_forvar2 in pairs(L_34_.mainFrame:GetChildren()) do
				if L_383_forvar2 and L_383_forvar2.Name:sub(1, 4) == "Mode" then
					L_383_forvar2.BackgroundColor3 = BrickColor.new("Institutional white").Color
				end
			end
		else
			for L_384_forvar1, L_385_forvar2 in pairs(L_34_.mainFrame:GetChildren()) do
				if L_385_forvar2 and L_385_forvar2.Name:sub(1, 4) == "Mode" then
					if L_385_forvar2.BackgroundTransparency == 0 then
						L_385_forvar2.BackgroundColor3 = BrickColor.new("Dusty Rose").Color
					else
						L_385_forvar2.BackgroundColor3 = BrickColor.new("Institutional white").Color
					end
				end
			end
		end
	end
end
function G_52_(L_386_arg1, L_387_arg2, L_388_arg3, L_389_arg4)
	if L_388_arg3 then
		if L_389_arg4:FindFirstChild("LaserLight") then
			local L_390_ = L_389_arg4.LaserLight:FindFirstChild("Attch0") or Instance.new("Attachment")
			L_390_.Parent = L_389_arg4.LaserLight
			L_390_.Name = "Attch0"
			local L_391_ = L_389_arg4.LaserLight:FindFirstChild("Attch1") or Instance.new("Attachment")
			L_391_.Parent = L_389_arg4.LaserLight
			L_391_.Name = "Attch1"
			local L_392_ = L_3_:FindFirstChild(L_386_arg1.Name.."Sphere") or Instance.new("Part")
			L_392_.Name = L_386_arg1.Name.."Sphere"
			L_392_.Shape = "Ball"
			L_392_.Size = Vector3.new(0.1, 0.1, 0.1)
			L_392_.Parent = L_3_
			L_392_.CanCollide = false
			L_392_.BrickColor = BrickColor.new("Really red")
			L_392_.Material = Enum.Material.Neon
			local L_393_ = L_389_arg4.LaserLight:FindFirstChild("Beam") or Instance.new("Beam")
			L_393_.Name = "Beam"
			L_393_.Parent = L_389_arg4.LaserLight
			L_393_.Attachment0 = L_390_
			L_393_.Attachment1 = L_391_
			L_393_.Color = ColorSequence.new(BrickColor.new("Really red").Color)
			L_393_.LightEmission = 1
			L_393_.LightInfluence = 0
			L_393_.Transparency = NumberSequence.new(0.3)
			L_393_.FaceCamera = true
			L_393_.Width0 = 0.01
			L_393_.Width1 = 0.01
			local L_394_ = Ray.new(L_389_arg4.LaserLight.Position, L_389_arg4.Grip.CFrame.lookVector * 9999)
			local L_395_, L_396_, L_397_ = workspace:FindPartOnRayWithIgnoreList(L_394_, L_39_)
			local L_398_ = L_386_arg1.Character.CordonValues:WaitForChild("CurLength").Value
			if L_395_ then
				L_398_ = (L_389_arg4.LaserLight.Position - L_396_).magnitude
			else
				L_398_ = 9999
			end
			L_391_.CFrame = CFrame.new(0, 0, -L_398_)
			L_392_.CFrame = L_391_.WorldCFrame
			if L_395_ and (L_395_ and L_395_.Transparency >= 1 or L_395_.CanCollide == false) then
				table.insert(L_39_, L_395_)
			end
		end
	else
		if L_3_:FindFirstChild(L_386_arg1.Name.."Sphere") then
			L_3_[L_386_arg1.Name.."Sphere"]:Destroy()
		end
		if L_386_arg1.Character.CordonValues.SModel.Value and L_389_arg4:FindFirstChild("LaserLight") and L_389_arg4:WaitForChild("LaserLight"):FindFirstChild("Attch0") and L_389_arg4:WaitForChild("LaserLight"):FindFirstChild("Attch1") and L_389_arg4:WaitForChild("LaserLight"):FindFirstChild("Beam") then
			L_389_arg4.LaserLight:WaitForChild("Attch0"):Destroy()
			L_389_arg4.LaserLight:WaitForChild("Attch1"):Destroy()
			L_389_arg4.LaserLight:WaitForChild("Beam"):Destroy()
		end
	end
end
function G_53_()
	L_73_ = true
	if L_72_ then
		if L_47_ then
			G_19_(false, false)
		end
		if L_48_ then
			G_20_(false)
		end
		L_75_ = L_7_:WaitForChild("Binos"):clone()
		L_75_.Parent = L_34_.LA
		for L_399_forvar1, L_400_forvar2 in pairs(L_75_:GetChildren()) do
			if L_400_forvar2 and L_400_forvar2:IsA("BasePart") then
				if L_400_forvar2.Name ~= "Grip" then
					L_32_.utilitiesModule.Weld(L_400_forvar2, L_75_:WaitForChild("Grip"))
				elseif L_400_forvar2.Name == "Grip" then
					L_32_.utilitiesModule.Weld(L_400_forvar2, L_34_.LA, nil, CFrame.new(0.800000012, -1.5, -0.300000012, -0.937805653, -0.290587008, -0.189946115, 0.333234578, -0.906904817, -0.257833958, -0.0973398462, -0.305094779, 0.94733417))
				end
			end
		end
		for L_401_forvar1, L_402_forvar2 in pairs(L_75_:GetChildren()) do
			if L_402_forvar2 and L_402_forvar2:IsA("BasePart") then
				L_402_forvar2.Anchored = false
			end
		end
		L_25_:Create(L_34_.LAW, TweenInfo.new(0.4), {
			C1 = CFrame.new(0.854482472, -0.0104820728, -3.38849306, 0.937293589, -0.342890739, 0.0625019744, 0.0908710212, 0.413531393, 0.905943871, -0.33648622, -0.843455732, 0.418759137)
		}):Play()
		wait(0.4)
		L_25_:Create(L_34_.LAW, TweenInfo.new(0.4), {
			C1 = CFrame.new(1.04499149, -1.10762644, -1.60011971, 0.93870455, -0.307206959, 0.156389266, -0.343125731, -0.876287758, 0.338207453, 0.0331422724, -0.371138126, -0.927986026)
		}):Play()
		L_25_:Create(L_34_.RAW, TweenInfo.new(0.4), {
			C1 = CFrame.new(-1.43314123, -1.48713386, -1.55439997, 0.99999994, 0, 0, 0, -0.939692616, 0.342020065, 0, -0.342020065, -0.939692616)
		}):Play()
		L_25_:Create(L_34_.hud:WaitForChild("RangeFrame"), TweenInfo.new(0.4), {
			BackgroundTransparency = 0
		}):Play()
		wait(0.4)
		for L_403_forvar1, L_404_forvar2 in pairs(L_75_:GetChildren()) do
			if L_404_forvar2 and L_404_forvar2:IsA("BasePart") then
				L_404_forvar2.LocalTransparencyModifier = 1
			end
		end
		L_34_.LA.LocalTransparencyModifier = 1
		for L_405_forvar1, L_406_forvar2 in pairs(L_34_.hud:WaitForChild("RangeFrame"):GetChildren()) do
			if L_406_forvar2 then
				L_406_forvar2.Visible = true
			end
		end
		L_34_.hud:WaitForChild("RangeFrame"):WaitForChild("ZoomNum").Text = L_32_.globalConfig.BinoZoom
		L_25_:Create(L_3_, TweenInfo.new(0.05, Enum.EasingStyle.Quad), {
			FieldOfView = L_32_.globalConfig.BinoZoom
		}):Play()
		wait(0.05)
		L_25_:Create(L_34_.hud:WaitForChild("RangeFrame"), TweenInfo.new(0.4), {
			BackgroundTransparency = 1
		}):Play()
		wait(0.4)
	else
		L_25_:Create(L_34_.hud:WaitForChild("RangeFrame"), TweenInfo.new(0.4), {
			BackgroundTransparency = 0
		}):Play()
		wait(0.4)
		for L_407_forvar1, L_408_forvar2 in pairs(L_75_:GetChildren()) do
			if L_408_forvar2 and L_408_forvar2:IsA("BasePart") then
				L_408_forvar2.LocalTransparencyModifier = 0
			end
		end
		L_34_.LA.LocalTransparencyModifier = 0
		for L_409_forvar1, L_410_forvar2 in pairs(L_34_.hud:WaitForChild("RangeFrame"):GetChildren()) do
			if L_410_forvar2 then
				L_410_forvar2.Visible = false
			end
		end
		L_34_.hud:WaitForChild("RangeFrame"):WaitForChild("ZoomNum").Text = "70"
		L_25_:Create(L_3_, TweenInfo.new(0.05, Enum.EasingStyle.Quad), {
			FieldOfView = 70
		}):Play()
		wait(0.05)
		L_25_:Create(L_34_.hud:WaitForChild("RangeFrame"), TweenInfo.new(0.4), {
			BackgroundTransparency = 1
		}):Play()
		wait(0.4)
		L_25_:Create(L_34_.LAW, TweenInfo.new(0.4), {
			C1 = CFrame.new(0.854482472, -0.0104820728, -3.38849306, 0.937293589, -0.342890739, 0.0625019744, 0.0908710212, 0.413531393, 0.905943871, -0.33648622, -0.843455732, 0.418759137)
		}):Play()
		wait(0.4)
		G_13_()
		L_34_.LA:ClearAllChildren()
	end
	L_73_ = false
end
function G_54_()
	if L_77_ then
		L_2_:WaitForChild("CordonValues"):WaitForChild("NVGActive").Value = true
		L_34_.overlay.Image = "rbxassetid://"..L_32_.globalConfig.OverlayID
		L_25_:Create(game.Lighting, TweenInfo.new(0.5), {
			ExposureCompensation = L_32_.globalConfig.Exposure
		}):Play()
		L_25_:Create(L_34_.cc, TweenInfo.new(0.5), {
			Brightness = L_32_.globalConfig.OverlayBrightness;
			Contrast = 0.8;
			Saturation = -1,
			TintColor = L_32_.globalConfig.OverlayColor
		}):Play()
		L_25_:Create(L_34_.overlay, TweenInfo.new(0.5), {
			ImageTransparency = 0
		}):Play()
		L_25_:Create(L_34_.noise, TweenInfo.new(0.5), {
			ImageTransparency = 0
		}):Play()
		local L_411_ = L_7_:WaitForChild("NVGToggle"):Clone()
		L_411_.Parent = L_1_.PlayerGui
		L_411_:Play()
		game.Debris:AddItem(L_411_, L_411_.TimeLength)
		spawn(function()
			while L_77_ do
				G_55_(L_40_)
				G_55_(L_41_)
				wait(0.05)
			end
		end)
		if L_2_:WaitForChild("CordonValues"):WaitForChild("NVGActive").Value == true and L_63_ and L_34_.curModel:FindFirstChild("AimPart3") and L_44_ and L_34_.CurAimPart ~= L_34_.curModel.AimPart3 then
			L_34_.CurAimPart = L_34_.curModel:WaitForChild("AimPart3")
			L_34_.curZoom = 60
			if L_47_ then
				L_25_:Create(L_3_, TweenInfo.new(L_34_.curConfig.AimZoomSpeed, Enum.EasingStyle.Quad), {
					FieldOfView = 60
				}):Play()
			end
		end
	else
		L_2_:WaitForChild("CordonValues"):WaitForChild("NVGActive").Value = false
		if L_44_ then
			L_34_.CurAimPart = L_34_.lastAimPart
			if L_34_.CurAimPart.Name == "AimPart" then
				if not L_89_ then
					L_34_.curZoom = L_34_.curConfig.AimZoom
				else
					L_34_.curZoom = L_90_
				end
			elseif L_34_.CurAimPart.Name == "AimPart2" then
				if not L_89_ then
					L_34_.curZoom = L_34_.curConfig.AltAimZoom
				else
					L_34_.curZoom = L_91_
				end
			end
		end
		L_25_:Create(game.Lighting, TweenInfo.new(0.5), {
			ExposureCompensation = 0
		}):Play()
		L_25_:Create(L_34_.cc, TweenInfo.new(0.5), {
			Brightness = 0;
			Contrast = 0;
			Saturation = 0,
			TintColor = Color3.fromRGB(255, 255, 255)
		}):Play()
		L_25_:Create(L_34_.overlay, TweenInfo.new(0.5), {
			ImageTransparency = 1
		}):Play()
		L_25_:Create(L_34_.noise, TweenInfo.new(0.5), {
			ImageTransparency = 1
		}):Play()
	end
end
function G_55_(L_412_arg1)
	local L_413_ = L_34_.noise
	local L_414_ = L_412_arg1
	local L_415_
	repeat
		L_415_ = L_414_[math.random(1, #L_414_)]
	until L_415_ ~= L_412_arg1.last
	L_413_.Image = "rbxassetid://"..L_415_
	local L_416_ = math.random(230, 255)
	L_413_.Position = UDim2.new(math.random(.4, .6), 0, math.random(.4, .6), 0)
	L_413_.ImageColor3 = Color3.fromRGB(L_416_, L_416_, L_416_)
	L_412_arg1.last = L_415_
end
function G_56_()
	if L_34_.NadeMode == 1 then
		L_25_:Create(L_34_.LAW, TweenInfo.new(0.2), {
			C1 = CFrame.new(0.922277689, -0.817099452, -1.92854667, 0.106011063, -0.34216994, 0.933638692, -0.994363368, -0.0348279029, 0.100141913, -0.00174888968, -0.938992321, -0.343933403)
		}):Play()
		L_25_:Create(L_34_.RAW, TweenInfo.new(0.2), {
			C1 = CFrame.new(-1.43363178, -1.14598346, -1.68051922, 0.99999994, 0, 0, 0, -0.965925813, 0.258818984, 0, -0.258818984, -0.965925813)
		}):Play()
		wait(0.2)
		local L_417_ = L_7_:WaitForChild("FRAG"):clone()
		L_417_.Parent = L_34_.LA
		for L_421_forvar1, L_422_forvar2 in pairs(L_417_:GetChildren()) do
			if L_422_forvar2 and L_422_forvar2:IsA("BasePart") then
				if L_422_forvar2.Name ~= "Grip" then
					L_32_.utilitiesModule.Weld(L_422_forvar2, L_417_:WaitForChild("Grip"))
				elseif L_422_forvar2.Name == "Grip" then
					L_32_.utilitiesModule.Weld(L_422_forvar2, L_34_.LA, nil, CFrame.new(0.600000024, -1.29999995, -0.300000012, 1, 0, 0, 0, 1.19248806e-08, 1, 0, -1, 1.19248806e-08))
				end
			end
		end
		for L_423_forvar1, L_424_forvar2 in pairs(L_417_:GetChildren()) do
			if L_424_forvar2 and L_424_forvar2:IsA("BasePart") then
				L_424_forvar2.Anchored = false
			end
		end
		L_25_:Create(L_34_.LAW, TweenInfo.new(0.4), {
			C1 = CFrame.new(0.0706895888, -1.17250931, -2.82761693, 0.594298601, -0.799968779, -0.082818523, -0.72039783, -0.575290084, 0.387386143, -0.35754171, -0.170560718, -0.918190002)
		}):Play()
		wait(0.15)
		L_25_:Create(L_34_.LAW, TweenInfo.new(0.4), {
			C1 = CFrame.new(0.570689559, -1.67250919, -1.13768804, 0.680744529, -0.693389475, 0.236215726, -0.690241337, -0.715155959, -0.110084742, 0.245262563, -0.0881062746, -0.965444684)
		}):Play()
		wait(0.4)
		if L_417_:FindFirstChild("Pin") then
			L_417_.Pin:Destroy()
			L_417_.Lever:Destroy()
		end
		L_25_:Create(L_34_.LAW, TweenInfo.new(0.2), {
			C1 = CFrame.new(0.570689559, 1.5694685, -2.14090991, 0.814135671, -0.56004262, -0.153412074, -0.135140836, -0.439683974, 0.887927234, -0.564730048, -0.702160895, -0.433647156)
		}):Play()
		wait(0.03)
		L_417_.Grip:Destroy()
		L_34_.FragAmmo = L_34_.FragAmmo - 1
		local L_418_ = L_417_:WaitForChild("NADE"):GetMass()
		local L_419_ = Instance.new("BodyForce", L_417_:WaitForChild("NADE"))
		L_419_.Force = L_32_.globalConfig.NadePhysics
		L_417_:WaitForChild("NADE").Velocity = L_3_.CFrame.LookVector * L_32_.globalConfig.NadeSpeed
		L_33_.nadeEvent:FireServer(L_417_.NADE.CFrame, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_3_.CFrame.LookVector)
		local L_420_ = L_417_.NADE
		L_420_.Parent = L_17_
		L_417_:Destroy()
		delay(0.02, function()
			L_420_.CanCollide = true
			L_420_:WaitForChild("Indicator").MaxDistance = L_32_.globalConfig.BlastRadius
			L_420_:WaitForChild("Indicator"):WaitForChild("Friendly").Visible = true
			if L_32_.globalConfig.NadeTrailEnabled then
				L_420_:WaitForChild("Trail").Enabled = true
			end
		end)
		delay(5, function()
			L_33_.explosiveEvent:FireServer(nil, L_420_.Position, L_32_.globalConfig.BlastPressue, L_32_.globalConfig.BlastRadius, L_32_.globalConfig.DestroyJointRadius, L_32_.globalConfig.ExplosionType, nil, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), nil)
			L_420_:Destroy()
		end)
		wait(0.18)
		G_13_()
		L_76_ = false
	elseif L_34_.NadeMode == 2 then
	elseif L_34_.NadeMode == 3 then
	elseif L_34_.NadeMode == 4 and not L_74_ then
		L_74_ = true
		L_25_:Create(L_34_.LAW, TweenInfo.new(0.4), {
			C1 = CFrame.new(0.922277689, -0.817099452, -1.92854667, 0.106011063, -0.34216994, 0.933638692, -0.994363368, -0.0348279029, 0.100141913, -0.00174888968, -0.938992321, -0.343933403)
		}):Play()
		L_25_:Create(L_34_.RAW, TweenInfo.new(0.3), {
			C1 = CFrame.new(-1.43363178, -1.14598346, -1.68051922, 0.99999994, 0, 0, 0, -0.965925813, 0.258818984, 0, -0.258818984, -0.965925813)
		}):Play()
		wait(0.4)
		L_79_ = L_7_:WaitForChild("C4"):clone()
		L_79_.Parent = L_34_.LA
		for L_425_forvar1, L_426_forvar2 in pairs(L_79_:GetChildren()) do
			if L_426_forvar2 and L_426_forvar2:IsA("BasePart") then
				if L_426_forvar2.Name ~= "Grip" then
					L_32_.utilitiesModule.Weld(L_426_forvar2, L_79_:WaitForChild("Grip"))
				elseif L_426_forvar2.Name == "Grip" then
					L_32_.utilitiesModule.Weld(L_426_forvar2, L_34_.LA, nil, CFrame.new(0.5, -1.4000001, -0.0999999642, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1))
				end
			end
		end
		for L_427_forvar1, L_428_forvar2 in pairs(L_79_:GetChildren()) do
			if L_428_forvar2 and L_428_forvar2:IsA("BasePart") then
				L_428_forvar2.Anchored = false
			end
		end
		L_25_:Create(L_34_.LAW, TweenInfo.new(0.4), {
			C1 = CFrame.new(0.570689559, 1.5694685, -2.14090991, 0.814135671, -0.56004262, -0.153412074, -0.135140836, -0.439683974, 0.887927234, -0.564730048, -0.702160895, -0.433647156)
		}):Play()
		wait(0.4)
		L_78_ = true
		L_74_ = false
	end
end
function G_57_(L_429_arg1)
	if L_31_.humanoid.Health > 0 then
		L_104_.PrimaryPart = L_106_
		L_103_.CFrame = L_104_.PrimaryPart.CFrame * CFrame.new(0, -0.5, -5) * CFrame.Angles(0, math.rad(180), 0)
		for L_430_forvar1, L_431_forvar2 in pairs(L_104_:GetChildren()) do
			if L_431_forvar2 and L_431_forvar2:IsA("BasePart") then
				L_431_forvar2.BrickColor = BrickColor.new("Institutional white")
			end
		end
		for L_432_forvar1, L_433_forvar2 in pairs(L_2_:GetDescendants()) do
			if L_433_forvar2 and L_433_forvar2.Name == "Middle" and L_433_forvar2:FindFirstChild("Middle") then
				if L_104_:FindFirstChild(L_433_forvar2.Middle.Part1.Name) then
					L_104_:FindFirstChild(L_433_forvar2.Middle.Part1.Name).BrickColor = BrickColor.new("Pastel Blue")
				end
			end
		end
	end
end
function G_58_()
	while true do
		L_34_.FireMode = L_34_.FireMode + 1
		if L_34_.FireMode > 6 then
			L_34_.FireMode = 1
		end
		if L_34_.FireMode == 1 then
			if L_34_.curConfig.SemiEnabled then
				break
			end
		end
		if L_34_.FireMode == 2 then
			if L_34_.curConfig.AutoEnabled then
				break
			end
		end
		if L_34_.FireMode == 3 then
			if L_34_.curConfig.BurstEnabled then
				break
			end
		end
		if L_34_.FireMode == 4 then
			if L_34_.curConfig.BoltAction then
				break
			end
		end
		if L_34_.FireMode == 5 then
			if L_34_.curConfig.ShotEnabled then
				break
			end
		end
		if L_34_.FireMode == 6 then
			if L_34_.curConfig.RPGEnabled then
				break
			end
		end
		L_26_:Wait()
	end
	G_10_()
end
L_2_.ChildAdded:connect(function(L_434_arg1)
	if L_434_arg1:IsA("Tool") and L_434_arg1:FindFirstChild("Authenticate") and L_31_.humanoid.Health > 0 and require(L_434_arg1.Authenticate).Type == "Gun" then
		if not L_86_ then
			local L_435_ = true
			if L_31_.humanoid.Sit and L_2_.Humanoid.SeatPart.Name == "DriverSeat" then
				L_435_ = false
			end
			if L_435_ then
				L_34_.queued = L_434_arg1
				if not L_44_ then
					L_4_.TargetFilter = workspace
					G_2_(L_434_arg1)
				elseif L_44_ then
					L_4_.TargetFilter = nil
					G_15_()
					L_4_.TargetFilter = workspace
					G_2_(L_34_.queued)
				end
			end
		end
	end
	for L_436_forvar1, L_437_forvar2 in pairs(L_434_arg1:GetDescendants()) do
		if L_437_forvar2 and L_437_forvar2.Name == "Middle" then
		end
	end
end)
L_2_.ChildRemoved:connect(function(L_438_arg1)
	if L_438_arg1 == L_34_.tool then
		if L_44_ then
			if L_98_ then
				L_98_:Destroy()
			end
			L_4_.TargetFilter = nil
			G_15_()
		end
	end
end)
L_1_.CharacterRemoving:Connect(function()
	local L_439_ = 1
	for L_440_forvar1, L_441_forvar2 in pairs(L_33_) do
		L_441_forvar2.Name = L_42_[L_439_]
		L_439_ = L_439_ + 1
	end
end)
L_31_.humanoid.Died:connect(function()
	L_61_ = true
	L_4_.TargetFilter = nil
	G_15_()
	L_34_.cc:Destroy()
	L_34_.overlay.ImageTransparency = 1
	game.Lighting.ExposureCompensation = 0
	L_33_.storeDataEvent:InvokeServer("Erase", nil, nil, nil, nil, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
	local L_442_ = 1
	for L_443_forvar1, L_444_forvar2 in pairs(L_33_) do
		L_444_forvar2.Name = L_42_[L_442_]
		L_442_ = L_442_ + 1
	end
end)
L_31_.humanoid.Changed:connect(function()
	if L_31_.humanoid.Sit and L_34_.StanceIndex == 0 then
		L_34_.StanceIndex = 0
		G_17_()
	end
	if L_31_.humanoid.Health < L_60_ and L_31_.humanoid.Health ~= L_31_.humanoid.MaxHealth then
		local L_445_ = G_27_()
		L_43_.recoilSpring2.t = L_43_.recoilSpring2.t + L_445_
		delay(0.025, function()
			L_43_.recoilSpring2.t = L_43_.recoilSpring2.t - L_445_
		end)
		L_25_:Create(L_34_.intenseShade, TweenInfo.new(0.1), {
			ImageColor3 = BrickColor.new("Institutional white").Color
		}):Play()
		delay(0.8, function()
			L_25_:Create(L_34_.intenseShade, TweenInfo.new(0.3), {
				ImageColor3 = BrickColor.new("Really black").Color
			}):Play()
		end)
	end
	L_60_ = L_31_.humanoid.Health
end)
L_31_.humanoid.StateChanged:Connect(function(L_446_arg1, L_447_arg2)
	if L_447_arg2 == Enum.HumanoidStateType.Swimming then
		L_86_ = true
		if L_44_ then
			L_31_.humanoid:UnequipTools()
		end
	else
		L_86_ = false
	end
end)
L_31_.humanoid.Swimming:Connect(function()
	if L_44_ then
		L_31_.humanoid:UnequipTools()
		L_86_ = true
	end
end)
L_27_.InputBegan:connect(function(L_448_arg1, L_449_arg2)
	if not L_449_arg2 and L_44_ and L_31_.humanoid.Health > 0 and L_34_.curConfig then
		if L_448_arg1.UserInputType == L_34_.curConfig.ShootKeybind and L_44_ and not L_45_ and not L_66_ and not L_71_ and not L_72_ and not L_59_ then
			L_34_.MouseHeld = true
			if not L_76_ then
				if not L_69_ then
					if L_34_.Ammo > 0 then
						G_28_()
					end
				else
					if L_34_.ExplosiveAmmo > 0 then
						G_28_()
					end
				end
				if L_34_.Ammo <= 0 or not L_34_.CanShoot then
					L_34_.Grip:WaitForChild("Click"):Play()
				end
			else
				if L_34_.NadeMode == 4 and not L_74_ then
					L_74_ = true
					local L_450_, L_451_, L_452_
					if not L_80_ then
						L_450_, L_451_, L_452_ = workspace:FindPartOnRayWithIgnoreList(Ray.new(L_79_.PrimaryPart.Position, L_79_.PrimaryPart.CFrame.UpVector * -2), L_38_)
						local L_453_ = Vector3.new(0, 1, 0):Cross(L_452_)
						local L_454_ = math.asin(L_453_.magnitude)
						if L_450_ then
							L_79_:Destroy()
							L_80_ = L_33_.placeC4Event:InvokeServer(L_451_, L_453_, L_454_, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), L_452_, L_450_)
							G_13_()
							L_76_ = false
						end
					end
					L_74_ = false
				end
			end
		end
		if L_448_arg1.KeyCode == Enum.KeyCode.Minus and L_44_ and not L_45_ and L_34_.curModel:FindFirstChild("Node_Storage") then
			L_88_ = not L_88_
			if L_88_ then
				G_59_()
				L_27_.MouseIconEnabled = true
				L_34_.hud:WaitForChild("Attachment_Frame").Visible = true
				L_34_.hud:WaitForChild("Mouse_Release").Modal = true
				for L_455_forvar1, L_456_forvar2 in pairs(L_34_.curModel:WaitForChild("Node_Storage"):GetChildren()) do
					if L_456_forvar2 then
						local L_457_ = L_34_.tempFolder:WaitForChild("Node_UI"):Clone()
						L_457_.Parent = L_1_:WaitForChild("PlayerGui")
						L_457_.Adornee = L_456_forvar2
						L_457_.Enabled = true
						L_457_:WaitForChild("Button").MouseButton1Click:Connect(function()
							for L_458_forvar1, L_459_forvar2 in pairs(L_34_.attachFrame:GetChildren()) do
								if L_459_forvar2 and L_459_forvar2:IsA("Frame") then
									L_459_forvar2:Destroy()
								end
							end
							for L_460_forvar1, L_461_forvar2 in pairs(L_22_:GetChildren()) do
								if L_461_forvar2 and L_461_forvar2.PrimaryPart.Name == L_456_forvar2.Name then
									local L_462_ = L_34_.tempFolder:WaitForChild("Attachment_Item"):Clone()
									L_462_.Parent = L_34_.attachFrame
									L_462_.Visible = true
									L_462_:WaitForChild("Button").Text = L_461_forvar2.Name
									local L_463_ = Instance.new("Camera")
									L_463_.Name = "Display_Cam"
									L_463_.CameraType = Enum.CameraType.Scriptable
									L_462_:WaitForChild("ViewFrame").CurrentCamera = L_463_
									L_463_.Parent = L_462_:WaitForChild("ViewFrame")
									local L_464_ = L_22_:WaitForChild(L_461_forvar2.Name):Clone()
									L_464_.Parent = L_462_:WaitForChild("ViewFrame")
									L_463_.CFrame = L_464_:WaitForChild("Box").CFrame * CFrame.Angles(0, math.rad(90), 0) * CFrame.new(0, 0, 1)
									for L_465_forvar1, L_466_forvar2 in pairs(L_464_:GetDescendants()) do
										if L_466_forvar2 and L_466_forvar2:IsA("BasePart") then
											L_466_forvar2.BrickColor = BrickColor.new("Institutional white")
											L_466_forvar2.Material = Enum.Material.SmoothPlastic
											if L_466_forvar2:IsA("UnionOperation") then
												L_466_forvar2.UsePartColor = true
											end
										end
									end
									L_462_:WaitForChild("Button").MouseButton1Click:Connect(function()
										local L_467_, L_468_ = L_32_.attachmentAPI.AttachCELive(L_34_.curModel, L_461_forvar2.Name)
										L_32_.attachmentAPI.AttachCE(L_9_:FindFirstChild(L_34_.curModel.Name), L_461_forvar2.Name)
										L_34_.AimPart = L_34_.curModel:FindFirstChild("AimPart")
										L_34_.CurAimPart = L_34_.curModel:FindFirstChild("AimPart")
										L_34_.lastAimPart = L_34_.curModel:FindFirstChild("AimPart")
										L_34_.FirePart = L_34_.curModel:FindFirstChild("FirePart")
										L_33_.attachmentEvent:FireServer(L_34_.curModel.Name, L_461_forvar2.Name, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
										if L_467_ then
											L_89_ = true
											L_34_.curZoom = L_468_[1]
											L_34_.oAimZoom = L_468_[1]
											L_91_ = L_468_[2]
										end
									end)
								end
							end
						end)
					end
				end
			else
				L_27_.MouseIconEnabled = false
				L_34_.hud:WaitForChild("Mouse_Release").Modal = false
				L_34_.hud:WaitForChild("Attachment_Frame").Visible = false
                L_33_.clearAttchEvent:FireServer(L_34_.curModel.Name, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
				for L_469_forvar1, L_470_forvar2 in pairs(L_1_.PlayerGui:GetChildren()) do
					if L_470_forvar2 and L_470_forvar2.Name == "Node_UI" then
						L_470_forvar2:Destroy()
					end
				end
				G_13_()
			end
		end
		if L_448_arg1.UserInputType == L_34_.curConfig.ADSKeybind and L_44_ and not L_45_ and not L_66_ and not L_71_ and not L_72_ and not L_76_ then
			G_19_(true, true)
		end
		if L_448_arg1.KeyCode == L_34_.curConfig.AltADSKey and L_44_ and not L_45_ and not L_66_ and not L_71_ and not L_72_ and not L_76_ then
			G_19_(true, true)
		end
		if L_448_arg1.KeyCode == L_34_.curConfig.SprintKey and L_44_ and not L_45_ and L_27_:IsKeyDown(Enum.KeyCode.W) and not L_27_:IsKeyDown(Enum.KeyCode.S) and ((L_32_.globalConfig.StaminaEnabled and L_34_.Stamina > 0 or not L_32_.globalConfig.StaminaEnabled)) and not L_49_ and L_46_ and not L_66_ and not L_71_ and not L_72_ and not L_76_ then
			G_20_(true)
		end
		if L_448_arg1.KeyCode == Enum.KeyCode.KeypadEight and L_44_ and not L_45_ then
			if L_100_ then
				L_101_ = "Radial_Top"
				for L_471_forvar1, L_472_forvar2 in pairs(L_34_.radialInner:GetChildren()) do
					if L_472_forvar2 and L_472_forvar2 ~= L_34_.radialTop then
						L_25_:Create(L_472_forvar2, TweenInfo.new(0.3), {
							Position = UDim2.new(0, 0, 0, 0)
						}):Play()
						L_25_:Create(L_472_forvar2, TweenInfo.new(0.3), {
							ImageColor3 = Color3.fromRGB(34, 34, 34)
						}):Play()
					end
				end
				L_25_:Create(L_34_.radialTop, TweenInfo.new(0.3), {
					Position = UDim2.new(0, 0, 0, -5)
				}):Play()
				L_25_:Create(L_34_.radialTop, TweenInfo.new(0.3), {
					ImageColor3 = Color3.fromRGB(135, 175, 97)
				}):Play()
			end
		end
		if L_448_arg1.KeyCode == Enum.KeyCode.KeypadTwo and L_44_ and not L_45_ then
			if L_100_ then
				L_101_ = "Radial_Bottom"
				for L_473_forvar1, L_474_forvar2 in pairs(L_34_.radialInner:GetChildren()) do
					if L_474_forvar2 and L_474_forvar2 ~= L_34_.radialBottom then
						L_25_:Create(L_474_forvar2, TweenInfo.new(0.3), {
							Position = UDim2.new(0, 0, 0, 0)
						}):Play()
						L_25_:Create(L_474_forvar2, TweenInfo.new(0.3), {
							ImageColor3 = Color3.fromRGB(34, 34, 34)
						}):Play()
					end
				end
				L_25_:Create(L_34_.radialBottom, TweenInfo.new(0.3), {
					Position = UDim2.new(0, 0, 0, 5)
				}):Play()
				L_25_:Create(L_34_.radialBottom, TweenInfo.new(0.3), {
					ImageColor3 = Color3.fromRGB(135, 175, 97)
				}):Play()
			end
		end
		if L_448_arg1.KeyCode == Enum.KeyCode.LeftControl and L_44_ and not L_45_ and not L_66_ then
			if not L_47_ then
				L_100_ = not L_100_
				if L_100_ then
					L_101_ = "Radial_Center"
					L_25_:Create(L_34_.radialOutter, TweenInfo.new(0.5), {
						ImageTransparency = 0
					}):Play()
					for L_475_forvar1, L_476_forvar2 in pairs(L_34_.radialInner:GetChildren()) do
						if L_476_forvar2 then
							L_25_:Create(L_476_forvar2, TweenInfo.new(0.5), {
								ImageTransparency = 0
							}):Play()
							L_25_:Create(L_476_forvar2, TweenInfo.new(0.5), {
								Position = UDim2.new(0, 0, 0, 0)
							}):Play()
							L_25_:Create(L_476_forvar2, TweenInfo.new(0.5), {
								ImageColor3 = Color3.fromRGB(34, 34, 34)
							}):Play()
						end
					end
					L_25_:Create(L_34_.radialCenter, TweenInfo.new(0.5), {
						ImageColor3 = Color3.fromRGB(135, 175, 97)
					}):Play()
					L_34_.radialTop.MouseEnter:Connect(function()
						L_101_ = "Radial_Top"
						for L_477_forvar1, L_478_forvar2 in pairs(L_34_.radialInner:GetChildren()) do
							if L_478_forvar2 and L_478_forvar2 ~= L_34_.radialTop then
								L_25_:Create(L_478_forvar2, TweenInfo.new(0.5), {
									Position = UDim2.new(0, 0, 0, 0)
								}):Play()
								L_25_:Create(L_478_forvar2, TweenInfo.new(0.5), {
									ImageColor3 = Color3.fromRGB(34, 34, 34)
								}):Play()
							end
						end
						L_25_:Create(L_34_.radialTop, TweenInfo.new(0.5), {
							Position = UDim2.new(0, 0, 0, -5)
						}):Play()
						L_25_:Create(L_34_.radialTop, TweenInfo.new(0.5), {
							ImageColor3 = Color3.fromRGB(135, 175, 97)
						}):Play()
					end)
					L_34_.radialBottom.MouseEnter:Connect(function()
						L_101_ = "Radial_Bottom"
						for L_479_forvar1, L_480_forvar2 in pairs(L_34_.radialInner:GetChildren()) do
							if L_480_forvar2 and L_480_forvar2 ~= L_34_.radialBottom then
								L_25_:Create(L_480_forvar2, TweenInfo.new(0.5), {
									Position = UDim2.new(0, 0, 0, 0)
								}):Play()
								L_25_:Create(L_480_forvar2, TweenInfo.new(0.5), {
									ImageColor3 = Color3.fromRGB(34, 34, 34)
								}):Play()
							end
						end
						L_25_:Create(L_34_.radialBottom, TweenInfo.new(0.5), {
							Position = UDim2.new(0, 0, 0, 5)
						}):Play()
						L_25_:Create(L_34_.radialBottom, TweenInfo.new(0.5), {
							ImageColor3 = Color3.fromRGB(135, 175, 97)
						}):Play()
					end)
					L_34_.radialCenter.MouseEnter:Connect(function()
						L_101_ = "Radial_Center"
						for L_481_forvar1, L_482_forvar2 in pairs(L_34_.radialInner:GetChildren()) do
							if L_482_forvar2 and L_482_forvar2 ~= L_34_.radialCenter then
								L_25_:Create(L_482_forvar2, TweenInfo.new(0.5), {
									Position = UDim2.new(0, 0, 0, 0)
								}):Play()
								L_25_:Create(L_482_forvar2, TweenInfo.new(0.5), {
									ImageColor3 = Color3.fromRGB(34, 34, 34)
								}):Play()
							end
						end
						L_25_:Create(L_34_.radialCenter, TweenInfo.new(0.5), {
							ImageColor3 = Color3.fromRGB(135, 175, 97)
						}):Play()
					end)
				else
					if L_101_ == "Radial_Top" then
						L_34_.readyMode = L_34_.readyMode + 1
						if L_34_.readyMode > 1 then
							L_34_.readyMode = 1
						end
					elseif L_101_ == "Radial_Bottom" then
						L_34_.readyMode = L_34_.readyMode - 1
						if L_34_.readyMode < -1 then
							L_34_.readyMode = -1
						end
					elseif L_101_ == "Radial_Center" then
						L_34_.readyMode = 0
					end
					G_18_()
					L_25_:Create(L_34_.radialOutter, TweenInfo.new(0.5), {
						ImageTransparency = 1
					}):Play()
					for L_483_forvar1, L_484_forvar2 in pairs(L_34_.radialInner:GetChildren()) do
						if L_484_forvar2 then
							L_25_:Create(L_484_forvar2, TweenInfo.new(0.5), {
								ImageTransparency = 1
							}):Play()
							L_25_:Create(L_484_forvar2, TweenInfo.new(0.5), {
								Position = UDim2.new(0, 0, 0, 0)
							}):Play()
							L_25_:Create(L_484_forvar2, TweenInfo.new(0.5), {
								ImageColor3 = Color3.fromRGB(34, 34, 34)
							}):Play()
						end
					end
				end
			else
				L_34_.aimWalkSpeed = 5
			end
		end
		if L_448_arg1.KeyCode == Enum.KeyCode.LeftAlt then
			L_85_ = not L_85_
			if L_85_ then
				L_25_:Create(L_34_.sensDisplay, TweenInfo.new(0.3), {
					TextTransparency = 1
				}):Play()
			else
				L_25_:Create(L_34_.sensDisplay, TweenInfo.new(0.3), {
					TextTransparency = 0
				}):Play()
			end
		end
		if L_448_arg1.KeyCode == Enum.KeyCode.A and L_48_ and not L_27_:IsKeyDown(Enum.KeyCode.W) then
			G_20_(false)
		end
		if L_448_arg1.KeyCode == Enum.KeyCode.D and L_48_ and not L_27_:IsKeyDown(Enum.KeyCode.W) then
			G_20_(false)
		end
		if L_448_arg1.KeyCode == Enum.KeyCode.S and L_48_ then
			G_20_(false)
		end
		if L_448_arg1.KeyCode == Enum.KeyCode.A then
			L_19_ = CFrame.Angles(0, 0, math.rad(-10))
			if L_27_:IsKeyDown(Enum.KeyCode.D) then
				L_19_ = CFrame.Angles(0, 0, 0)
			end
		end
		if L_448_arg1.KeyCode == Enum.KeyCode.D then
			L_19_ = CFrame.Angles(0, 0, math.rad(10))
			if L_27_:IsKeyDown(Enum.KeyCode.A) then
				L_19_ = CFrame.Angles(0, 0, 0)
			end
		end
		if L_448_arg1.KeyCode == L_32_.globalConfig.GrenadeKey and L_44_ and not L_45_ and L_32_.globalConfig.CanGrenade and not L_71_ and not L_52_ and not L_66_ and not L_55_ and not L_72_ then
			if not L_27_:IsKeyDown(Enum.KeyCode.LeftControl) then
				if not L_76_ then
					local L_485_ = false
					if L_34_.NadeMode == 1 then
						if L_34_.FragAmmo > 0 then
							L_485_ = true
						end
					elseif L_34_.NadeMode == 2 then
						if L_34_.FlashAmmo > 0 then
							L_485_ = true
						end
					elseif L_34_.NadeMode == 3 then
						if L_34_.SmokeAmmo > 0 then
							L_485_ = true
						end
					elseif L_34_.NadeMode == 4 then
						if L_34_.C4Ammo > 0 and not L_80_ then
							L_485_ = true
						end
					end
					if L_485_ then
						L_485_ = false
						L_76_ = true
						if L_47_ then
							G_19_(false, false)
						end
						if L_48_ then
							G_20_(false)
						end
						G_56_()
					end
					if L_80_ and L_34_.NadeMode == 4 then
						L_74_ = true
						L_81_ = false
						local L_486_ = L_80_:WaitForChild("CEVARS"):WaitForChild("Hit").Value
						L_25_:Create(L_34_.LAW, TweenInfo.new(0.2), {
							C1 = CFrame.new(0.922277689, -0.817099452, -1.92854667, 0.106011063, -0.34216994, 0.933638692, -0.994363368, -0.0348279029, 0.100141913, -0.00174888968, -0.938992321, -0.343933403)
						}):Play()
						wait(0.2)
						local L_487_ = L_7_:WaitForChild("Phone"):clone()
						L_487_.Parent = L_34_.LA
						for L_488_forvar1, L_489_forvar2 in pairs(L_487_:GetChildren()) do
							if L_489_forvar2 and L_489_forvar2:IsA("BasePart") then
								if L_489_forvar2.Name ~= "Grip" then
									L_32_.utilitiesModule.Weld(L_489_forvar2, L_487_:WaitForChild("Grip"))
								elseif L_489_forvar2.Name == "Grip" then
									L_32_.utilitiesModule.Weld(L_489_forvar2, L_34_.LA, nil, CFrame.new(0.800000012, -1.20000005, -0.200000003, -0.984807611, -0.122787781, -0.122787826, 0.171010077, -0.562996984, -0.808572829, 0.0301536843, -0.81728667, 0.575441837))
								end
							end
						end
						for L_490_forvar1, L_491_forvar2 in pairs(L_487_:GetChildren()) do
							if L_491_forvar2 and L_491_forvar2:IsA("BasePart") then
								L_491_forvar2.Anchored = false
							end
						end
						L_25_:Create(L_34_.LAW, TweenInfo.new(0.4), {
							C1 = CFrame.new(1.77068973, 0.727490902, -1.72761703, 0.999606609, -0.00972421467, -0.026306361, 0.0211262405, -0.355849683, 0.934304237, -0.0184465349, -0.934492409, -0.355504274)
						}):Play()
						wait(0.4)
						L_487_:WaitForChild("Grip"):WaitForChild("Dial"):Play()
						L_25_:Create(L_34_.LAW, TweenInfo.new(0.4), {
							C1 = CFrame.new(1.77068973, 0.827490926, -1.82761705, 0.999606609, -0.00972421467, -0.026306361, 0.0211262405, -0.355849683, 0.934304237, -0.0184465349, -0.934492409, -0.355504274)
						}):Play()
						wait(0.35)
						L_33_.explosiveEvent:FireServer(L_486_, L_80_:WaitForChild("Grip").Position, L_32_.globalConfig.C4BlastPressue, L_32_.globalConfig.C4BlastRadius, L_32_.globalConfig.C4DestroyJointRadius, L_32_.globalConfig.C4ExplosionType, L_32_.globalConfig.C4DeletePart, L_80_, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"), nil)
						L_80_ = nil
						L_25_:Create(L_34_.LAW, TweenInfo.new(0.4), {
							C1 = CFrame.new(-0.929310441, 0.169468522, -2.74091005, -0.0636699349, -0.4868218, 0.871177673, -0.822815955, 0.519590497, 0.230216295, -0.564730048, -0.702160895, -0.433647156)
						}):Play()
						wait(0.4)
						L_487_:Destroy()
						L_81_ = true
						G_13_()
						L_74_ = false
					end
				else
					if L_34_.NadeMode == 4 and not L_74_ then
						L_74_ = true
						if not L_80_ then
							L_25_:Create(L_34_.LAW, TweenInfo.new(0.2), {
								C1 = CFrame.new(-0.929310441, 0.169468522, -2.74091005, -0.0636699349, -0.4868218, 0.871177673, -0.822815955, 0.519590497, 0.230216295, -0.564730048, -0.702160895, -0.433647156)
							}):Play()
							wait(0.2)
							if L_79_ then
								L_79_:Destroy()
							end
							L_78_ = false
							G_13_()
							L_76_ = false
							L_74_ = false
						end
					end
				end
			else
				while true do
					L_34_.NadeMode = L_34_.NadeMode + 1
					if L_34_.NadeMode > 4 then
						L_34_.NadeMode = 1
					end
					if L_34_.NadeMode == 1 then
						if L_34_.FragAmmo > 0 then
							break
						end
					end
					if L_34_.NadeMode == 2 then
						if L_34_.FlashAmmo > 0 then
							break
						end
					end
					if L_34_.NadeMode == 3 then
						if L_34_.SmokeAmmo > 0 then
							break
						end
					end
					if L_34_.NadeMode == 4 then
						if L_34_.C4Ammo > 0 then
							break
						end
					end
					wait()
				end
			end
		end
		if L_448_arg1.KeyCode == L_32_.globalConfig.KnifeKey and L_44_ and not L_45_ and L_32_.globalConfig.CanKnife and not L_47_ and not L_48_ and not L_76_ and not L_52_ and not L_66_ and not L_55_ and not L_71_ and not L_72_ then
			L_71_ = true
			if L_47_ then
				G_19_(false, false)
			end
			if L_48_ then
				G_20_(false)
			end
			local L_492_ = L_7_:WaitForChild("Melee"):clone()
			L_492_.Parent = L_34_.LA
			for L_494_forvar1, L_495_forvar2 in pairs(L_492_:GetChildren()) do
				if L_495_forvar2 and L_495_forvar2:IsA("BasePart") then
					if L_495_forvar2.Name ~= "Grip" then
						L_32_.utilitiesModule.Weld(L_495_forvar2, L_492_:WaitForChild("Grip"))
					elseif L_495_forvar2.Name == "Grip" then
						L_32_.utilitiesModule.Weld(L_495_forvar2, L_34_.LA, nil, CFrame.new(0.5, -1.20000005, 0.200000048, 1, 0, -5.56362707e-08, -5.56362707e-08, 1.19248798e-08, -1, 6.63455867e-16, 0.99999994, 1.19248806e-08))
					end
				end
			end
			for L_496_forvar1, L_497_forvar2 in pairs(L_492_:GetChildren()) do
				if L_497_forvar2 and L_497_forvar2:IsA("BasePart") then
					L_497_forvar2.Anchored = false
				end
			end
			L_25_:Create(L_34_.LAW, TweenInfo.new(0.2), {
				C1 = CFrame.new(-0.94551754, 1.38951778, -1.88849282, 0.561318159, -0.82712543, 0.0280241668, 0.203741312, 0.170927659, 0.963988125, -0.802129269, -0.535394371, 0.264464438)
			}):Play()
			L_25_:Create(L_34_.RAW, TweenInfo.new(0.2), {
				C1 = CFrame.new(-1.43314123, -1.48713386, -1.55439997, 0.99999994, 0, 0, 0, -0.939692616, 0.342020065, 0, -0.342020065, -0.939692616)
			}):Play()
			wait(0.2)
			local L_493_ = L_7_:WaitForChild("KnifeJab"):clone()
			L_493_.Parent = L_1_.PlayerGui
			L_493_:Play()
			game.Debris:AddItem(L_493_, L_493_.TimeLength)
			L_25_:Create(L_34_.LAW, TweenInfo.new(0.1), {
				C1 = CFrame.new(-1.54551756, 0.589517653, -1.88849282, 0.493761629, -0.859933972, -0.129278481, -0.754563808, -0.497579277, 0.427841365, -0.432241678, -0.113702744, -0.894560635)
			}):Play()
			coroutine.resume(coroutine.create(function()
				while L_492_:FindFirstChild("Grip") do
					local L_498_, L_499_, L_500_ = workspace:FindPartOnRayWithIgnoreList(Ray.new(L_492_:WaitForChild("Grip").Position, L_492_:WaitForChild("Grip").CFrame.upVector * 2), L_38_)
					if L_498_ then
						local L_501_, L_502_ = L_32_.utilitiesModule.CheckForHumanoid(L_498_)
						if L_501_ and L_502_ then
							local L_503_ = L_7_:WaitForChild("KnifeCut"):clone()
							L_503_.Parent = L_1_.PlayerGui
							L_503_:Play()
							game.Debris:AddItem(L_503_, L_503_.TimeLength)
							L_33_.createOwnerEvent:FireServer(L_502_, nil, nil, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
							L_33_.damageEvent:FireServer(L_502_, 100, nil, {
								"nil",
								string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"),
								"nil",
								"nil"
							})
						end
						break
					end
					L_26_:Wait()
				end
			end))
			wait(0.1)
			G_13_()
			L_492_:Destroy()
			L_71_ = false
		end
		if L_448_arg1.KeyCode == L_32_.globalConfig.BinoKey and L_44_ and not L_45_ and not L_76_ and not L_52_ and not L_66_ and not L_55_ and not L_71_ and not L_73_ then
			L_72_ = not L_72_
			G_53_()
		end
		if L_448_arg1.KeyCode == L_32_.globalConfig.GLKey and L_44_ and not L_45_ and not L_76_ and not L_52_ and not L_66_ and L_34_.curConfig.ExplosiveEnabled and not L_83_ then
			L_69_ = not L_69_
			if L_69_ then
				L_57_ = L_34_.CanShoot
				if L_34_.ExplosiveAmmo > 0 and not L_70_ then
					L_34_.CanShoot = true
				else
					L_34_.CanShoot = false
				end
				local L_504_ = L_1_.PlayerGui:FindFirstChild("NadeSound") or Instance.new("Sound")
				L_504_.Parent = L_1_.PlayerGui
				L_504_.SoundId = "rbxassetid://"..L_36_[math.random(1, #L_36_)]
				L_504_:Play()
				L_504_.Name = "NadeSound"
				L_25_:Create(L_34_.LAW, TweenInfo.new(0.3), {
					C1 = L_34_.curConfig.GLLeftPos
				}):Play()
				G_10_()
			else
				L_34_.CanShoot = L_57_
				local L_505_ = L_1_.PlayerGui:FindFirstChild("NadeSound") or Instance.new("Sound")
				L_505_.Parent = L_1_.PlayerGui
				L_505_.SoundId = "rbxassetid://"..L_37_[math.random(1, #L_37_)]
				L_505_:Play()
				L_505_.Name = "NadeSound"
				L_25_:Create(L_34_.LAW, TweenInfo.new(0.3), {
					C1 = L_34_.curConfig.LeftArmPos
				}):Play()
				G_10_()
			end
		end
		if L_448_arg1.KeyCode == L_32_.globalConfig.HealKey and L_44_ and not L_45_ and not L_76_ and not L_52_ and not L_66_ and L_67_ and not L_71_ and not L_72_ then
			L_66_ = true
			L_67_ = false
			local L_506_ = L_7_:WaitForChild("Syringe"):clone()
			L_506_.Parent = L_34_.LA
			L_25_:Create(L_34_.LAW, TweenInfo.new(0.4), {
				C1 = CFrame.new(0.554482341, -1.31048226, -2.38849282, -0.154961348, -0.339524895, 0.927744389, -0.987918973, 0.0549189299, -0.144913793, -0.00174888968, -0.938992321, -0.343933403)
			}):Play()
			wait(0.4)
			for L_508_forvar1, L_509_forvar2 in pairs(L_506_:GetChildren()) do
				if L_509_forvar2 and L_509_forvar2:IsA("BasePart") then
					if L_509_forvar2.Name ~= "Glass" then
						L_32_.utilitiesModule.Weld(L_509_forvar2, L_506_:WaitForChild("Glass"))
					elseif L_509_forvar2.Name == "Glass" then
						L_32_.utilitiesModule.Weld(L_509_forvar2, L_34_.LA, nil, CFrame.new(0.5, -1.20000005, 0.199999988, 1.19248806e-08, 0, 1, 0, 1, 0, -1, 0, 1.19248806e-08))
					end
				end
			end
			for L_510_forvar1, L_511_forvar2 in pairs(L_506_:GetChildren()) do
				if L_511_forvar2 and L_511_forvar2:IsA("BasePart") then
					L_511_forvar2.Anchored = false
				end
			end
			L_25_:Create(L_34_.LAW, TweenInfo.new(0.4), {
				C1 = CFrame.new(2.65448236, -1.21048236, 1.91150701, 0.0297531113, 0.786976993, 0.616264343, -0.930818856, -0.202869564, 0.304006517, 0.364267558, -0.582675636, 0.726497054)
			}):Play()
			wait(0.24)
			local L_507_ = L_7_:WaitForChild("SyringeIn"):Clone()
			L_507_.Parent = L_1_.PlayerGui
			L_507_:Play()
			game.Debris:AddItem(L_507_, L_507_.TimeLength)
			L_25_:Create(L_34_.LAW, TweenInfo.new(0.28), {
				C1 = CFrame.new(2.65448236, -1.21048236, 0.815154314, 0.0297531113, 0.786976993, 0.616264343, -0.930818856, -0.202869564, 0.304006517, 0.364267558, -0.582675636, 0.726497054)
			}):Play()
			L_34_.painShade.Visible = true
			L_25_:Create(L_34_.painShade, TweenInfo.new(0.1), {
				ImageTransparency = 0
			}):Play()
			delay(0.7, function()
				L_25_:Create(L_34_.painShade, TweenInfo.new(3), {
					ImageTransparency = 1
				}):Play()
			end)
			wait(0.35)
			L_25_:Create(L_506_:WaitForChild("Push"):WaitForChild("Push"), TweenInfo.new(0.3), {
				C1 = CFrame.new(-0.65829581, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			}):Play()
			L_25_:Create(L_506_:WaitForChild("Liquid"):WaitForChild("Liquid"), TweenInfo.new(0.3), {
				C1 = CFrame.new(-0.64000386, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
			}):Play()
			wait(0.5)
			L_33_.medEvent:FireServer(true, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
			L_506_:WaitForChild("Liquid").Transparency = 1
			G_13_()
			L_506_:Destroy()
			L_66_ = false
		end
		if L_448_arg1.KeyCode == L_34_.curConfig.LaserKey and not L_66_ and L_44_ and L_34_.curModel and L_34_.curModel:FindFirstChild("LaserLight") and L_34_.curConfig.LaserAttached then
			L_63_ = not L_63_
			L_33_.manipEvent:FireServer(L_63_, "Laser", nil, nil, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
			L_98_ = Instance.new("Part")
			L_98_.Shape = "Ball"
			L_98_.Size = Vector3.new(0.1, 0.1, 0.1)
			L_98_.Parent = L_3_
			L_98_.CanCollide = false
			L_98_.BrickColor = L_34_.curConfig.LaserColor
			L_98_.Material = Enum.Material.Neon
			if L_63_ then
				L_94_ = Instance.new("Attachment")
				L_94_.Parent = L_34_.curModel.LaserLight
				L_95_ = Instance.new("Attachment")
				L_95_.Parent = L_34_.curModel.LaserLight
				L_96_ = Instance.new("Beam")
				L_96_.Parent = L_34_.curModel.LaserLight
				L_96_.Attachment0 = L_94_
				L_96_.Attachment1 = L_95_
				L_96_.Color = ColorSequence.new(L_34_.curConfig.LaserColor.Color)
				L_96_.LightEmission = L_34_.curConfig.LaserEmission
				L_96_.LightInfluence = L_34_.curConfig.LaserInfluence
				L_96_.Transparency = L_34_.curConfig.LaserTransparency
				L_96_.FaceCamera = true
				L_96_.Width0 = 0.01
				L_96_.Width1 = 0.01
				if L_2_:WaitForChild("CordonValues"):WaitForChild("NVGActive").Value == true and L_34_.curModel:FindFirstChild("AimPart3") and L_34_.CurAimPart ~= L_34_.curModel.AimPart3 then
					L_34_.CurAimPart = L_34_.curModel.AimPart3
					L_34_.curZoom = 60
					if L_47_ then
						L_25_:Create(L_3_, TweenInfo.new(L_34_.curConfig.AimZoomSpeed, Enum.EasingStyle.Quad), {
							FieldOfView = 60
						}):Play()
					end
				end
			else
				L_34_.CurAimPart = L_34_.lastAimPart
				if L_34_.CurAimPart.Name == "AimPart" then
					if not L_89_ then
						L_34_.curZoom = L_34_.curConfig.AimZoom
					else
						L_34_.curZoom = L_90_
					end
				elseif L_34_.CurAimPart.Name == "AimPart2" then
					if not L_89_ then
						L_34_.curZoom = L_34_.curConfig.AltAimZoom
					else
						L_34_.curZoom = L_91_
					end
				end
				L_94_:Destroy()
				L_95_:Destroy()
				L_96_:Destroy()
				L_98_:Destroy()
			end
		end
		if L_448_arg1.KeyCode == L_34_.curConfig.LightKey and not L_66_ and L_34_.curConfig.LightAttached and L_34_.curModel:FindFirstChild("FlashLight") then
			L_64_ = not L_64_
			for L_512_forvar1, L_513_forvar2 in pairs(L_34_.curModel:WaitForChild("FlashLight"):GetChildren()) do
				if L_513_forvar2 and L_513_forvar2.Name == "Enable" then
					L_513_forvar2.Enabled = L_64_
				end
			end
			if L_32_.globalConfig.ReplicatedFlashlight then
				L_33_.manipEvent:FireServer(L_64_, "FlashLight", nil, nil, nil, nil, nil, nil, nil, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
			end
		end
		if L_448_arg1.KeyCode == L_34_.curConfig.BoltKey and not L_51_ and L_44_ and not L_45_ and not L_76_ and not L_55_ and not L_71_ and not L_66_ and not L_72_ and L_34_.FireMode ~= 6 then
			L_51_ = true
			L_52_ = not L_52_
			if L_52_ then
				G_11_()
				if L_56_ and L_34_.Ammo > 0 then
					G_40_()
				end
				L_51_ = false
			else
				if L_34_.Ammo > 0 then
					L_34_.CanShoot = true
					L_57_ = true
					if L_56_ then
						L_34_.Ammo = L_34_.Ammo - 1
					end
					L_56_ = true
				end
				G_12_()
				G_13_()
				L_51_ = false
			end
			G_10_()
		end
		if L_448_arg1.KeyCode == L_34_.curConfig.PatrolKey and not L_66_ and L_34_.curConfig and not L_71_ and not L_72_ and not L_76_ then
			L_53_ = not L_53_
			if L_53_ then
				if L_47_ then
					G_19_(false, true)
				end
				if L_48_ then
					G_20_(false)
				end
				if L_50_ then
					L_34_.readyMode = 0
					G_18_()
				end
				L_25_:Create(L_34_.AnimBaseW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					C1 = CFrame.new(0.277981758, 0.244040087, -0.174667343, 0.642787635, -0.383022219, 0.663413942, 0.133022055, 0.908677936, 0.395739198, -0.754406512, -0.166127577, 0.635037363)
				}):Play()
				L_33_.updateCharEvent:FireServer("Patrol", true, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
				L_82_ = true
				wait(0.5)
			else
				L_33_.updateCharEvent:FireServer("Patrol", false, string.reverse("\b\b\17\b\t🧤 🧥 🧦f\b\tf\38\r\r\86\n\t\2你失望 🥵😡 和洛沙拉\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")..string.reverse(string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n你失望 🥵😡 和洛沙拉\t\2\n\t\47\n\87\t\r\92\n\r\r\42\r\43\t\94\n 🎩 🎓 🧢 ⛑ 🪖 💄 💍 💼\tI\29\n\87\t\r\52\r🦺 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞 \r\12\r\r你失望 🥵😡 和洛沙拉\n\201\r\r"))..string.reverse(string.upper("\b\b\17\b\t 👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 🩳 👙 👚 👛 f\b\tf\38\r\r\86\n\t\2\n\t\47\n\ 👖 🧣 🧤 🧥 🧦 👗87\t🌂 ☂️ 🧵 🪡 🪢 🧶 👓 🕶 🥽 🥼 🦺 👔 👕 👖\r\92\n\r\r\42\r\41\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\201\r\r")).."\b\b\16\b\tf\b\tf\37😡 DISABLE REMOTE SPY 🤬\r\r\86👔 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱\n\t\2\n\t\47\n\87\t\r\92👗 👘 🥻 🩴 🩱 🩳\n\r\r\42\r\44\t\94\n\tI\29\n\87\t\r\52\r\r\12\r\r\n\200\r\r"..string.lower("\b\b\17\b\tf\b\tf\38\r\r\86\n\t\2\n\t\49\n\87\t\r\92\n\r\r\42\r\43\t\94\n\tI\29👞 👟 🥾 🥿 👠 👡\n\87\t\r\52\r\r\12\r\r\n🥻 🩴 🩱 🩲 🩳 👙 👚 👛 👜 👝 🎒 👞\201\r\r")..string.upper("😡 DISABLE REMOTE SPY 🤬\b\b\18\b\tf\b 👕 👖 🧣 🧤 🧥 🧦 👗 👘 🥻 🩴 🩱 🩲 \tf\38\r\r\86\n\t\2\n🎒 👞 👟 🥾 🥿\t\47\n\85\t\r\93\n\r\r\42\r\43\t\94\n\tI\29\n\87\t\r\52\r\r\12🧳 🌂 ☂️ 🧵 🪡 🪢 🧶 👓\r\r😡 DISABLE REMOTE SPY 🤬\n\201\r\r"))
				L_82_ = false
			end
		end
		if L_448_arg1.KeyCode == L_34_.curConfig.CycleSightKey and not L_66_ and L_44_ and not(L_2_:WaitForChild("CordonValues"):WaitForChild("NVGActive").Value == true and L_63_) then
			if L_34_.curModel:FindFirstChild("AimPart2") then
				L_54_ = not L_54_
				if L_54_ then
					L_34_.CurAimPart = L_34_.curModel:FindFirstChild("AimPart2")
					L_34_.lastAimPart = L_34_.CurAimPart
					L_34_.AimPart2 = L_34_.curModel:FindFirstChild("AimPart2")
					if not L_89_ then
						L_34_.curZoom = L_34_.curConfig.AltAimZoom
					else
						L_34_.curZoom = L_91_
					end
					if L_34_.curModel:FindFirstChild("Magni") then
						L_25_:Create(L_34_.LAW, TweenInfo.new(0.3), {
							C1 = CFrame.new(-0.705815077, 0.0854935497, -1.11203301, 0.241317719, -0.917439699, -0.316338271, -0.742582142, -0.384429187, 0.548439324, -0.624769866, 0.10255906, -0.774044037)
						}):Play()
						wait(0.3)
						L_25_:Create(L_34_.curModel.Magni.Magni, TweenInfo.new(0.3), {
							C1 = CFrame.new(0, 0.00943283178, 0, -0.02264525, -0.999743462, 0, 0.999743462, -0.02264525, 0, 0, 0, 1)
						}):Play()
						L_25_:Create(L_34_.LAW, TweenInfo.new(0.3), {
							C1 = CFrame.new(-0.502888203, -0.153193533, -1.3043437, 0.241317719, -0.917439699, -0.316338271, -0.742582142, -0.384429187, 0.548439324, -0.624769866, 0.10255906, -0.774044037)
						}):Play()
						wait(0.3)
						G_13_()
						if L_47_ then
							G_19_(true, false)
						end
					else
						if L_47_ then
							G_19_(true, false)
						end
					end
				else
					L_34_.CurAimPart = L_34_.AimPart
					L_34_.lastAimPart = L_34_.CurAimPart
					if not L_89_ then
						L_34_.curZoom = L_34_.curConfig.AimZoom
					else
						L_34_.curZoom = L_90_
					end
					if L_47_ then
						G_19_(true, false)
					end
					if L_34_.curModel:FindFirstChild("Magni") then
						L_25_:Create(L_34_.LAW, TweenInfo.new(0.3), {
							C1 = CFrame.new(-0.502888203, -0.153193533, -1.3043437, 0.241317719, -0.917439699, -0.316338271, -0.742582142, -0.384429187, 0.548439324, -0.624769866, 0.10255906, -0.774044037)
						}):Play()
						wait(0.3)
						L_25_:Create(L_34_.curModel.Magni.Magni, TweenInfo.new(0.3), {
							C1 = CFrame.new()
						}):Play()
						L_25_:Create(L_34_.LAW, TweenInfo.new(0.3), {
							C1 = CFrame.new(-0.705815077, 0.0854935497, -1.11203301, 0.241317719, -0.917439699, -0.316338271, -0.742582142, -0.384429187, 0.548439324, -0.624769866, 0.10255906, -0.774044037)
						}):Play()
						wait(0.3)
						G_13_()
					else
						if L_47_ then
							G_19_(true, false)
						end
					end
				end
			end
		end
		if L_448_arg1.KeyCode == Enum.KeyCode.Q and L_34_.StanceIndex ~= 2 and not L_34_.Seated then
			if L_32_.globalConfig.ToggleableLeaning then
				if L_43_.dirPeek ~= 1 then
					L_43_.dirPeek = 1
				else
					L_43_.dirPeek = 0
				end
			else
				L_43_.dirPeek = 1
			end
			G_16_()
		end
		if L_448_arg1.KeyCode == Enum.KeyCode.E and L_34_.StanceIndex ~= 2 and not L_34_.Seated then
			if L_32_.globalConfig.ToggleableLeaning then
				if L_43_.dirPeek ~= -1 then
					L_43_.dirPeek = -1
				else
					L_43_.dirPeek = 0
				end
			else
				L_43_.dirPeek = -1
			end
			G_16_()
		end
		if L_448_arg1.KeyCode == L_34_.curConfig.ReloadKey and not L_66_ and L_44_ and not L_55_ and not G_47_ and not L_48_ and not L_52_ then
			local L_514_ = L_3_.FieldOfView
			if L_3_.FieldOfView ~= 70 then
				L_25_:Create(L_3_, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					FieldOfView = 70
				}):Play()
			end
			if not L_69_ and L_34_.Ammo < L_34_.curConfig.Ammo then
				L_57_ = L_34_.CanShoot
				L_34_.CanShoot = false
				if L_34_.Ammo > 0 then
					L_56_ = true
					L_57_ = true
				else
					L_56_ = false
					L_57_ = false
				end
				if L_34_.StoredAmmo > 0 and L_34_.Ammo < L_34_.curConfig.Ammo then
					G_47_ = false
					L_55_ = true
					G_60_()
					if L_34_.curConfig.CanAutoBolt then
						if L_34_.Ammo <= 0 then
							if not L_34_.curConfig.CanSlideLock then
								G_11_()
								G_12_()
							end
						elseif L_34_.Ammo > 0 then
							if not L_34_.curConfig.CanSlideLock then
								if L_34_.BoltW.C1 ~= (CFrame.new() or CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)) then
									G_11_()
									G_12_()
								end
							end
						end
					end
					G_13_()
					if L_34_.Ammo <= 0 then
						if (L_34_.StoredAmmo - (L_34_.curConfig.Ammo - L_34_.Ammo)) < 0 then
							L_34_.Ammo = L_34_.Ammo + L_34_.StoredAmmo
							L_34_.StoredAmmo = 0
						else
							L_34_.StoredAmmo = L_34_.StoredAmmo - (L_34_.curConfig.Ammo - L_34_.Ammo)
							L_34_.Ammo = L_34_.curConfig.Ammo
						end
					elseif L_34_.Ammo > 0 then
						if (L_34_.StoredAmmo - (L_34_.curConfig.Ammo - L_34_.Ammo)) < 0 then
							L_34_.Ammo = L_34_.Ammo + L_34_.StoredAmmo + 1
							L_34_.StoredAmmo = 0
						else
							L_34_.StoredAmmo = L_34_.StoredAmmo - (L_34_.curConfig.Ammo - L_34_.Ammo)
							L_34_.Ammo = L_34_.curConfig.Ammo + 1
						end
					end
					L_55_ = false
					if L_34_.curConfig.CanAutoBolt or L_56_ or L_34_.curConfig.CanSlideLock or L_34_.FireMode == 6 then
						L_34_.CanShoot = true
						L_57_ = true
					end
				end
			elseif L_69_ then
				if L_34_.ExplosiveAmmo > 0 then
					G_47_ = false
					L_55_ = true
					G_61_()
					if not L_69_ then
						G_13_()
					else
						L_25_:Create(L_34_.RAW, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
							C1 = L_34_.curConfig.RightArmPos
						}):Play()
						L_25_:Create(L_34_.LAW, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
							C1 = L_34_.curConfig.GLLeftPos
						}):Play()
						wait(0.25)
					end
					L_55_ = false
					L_34_.CanShoot = true
					L_70_ = false
				end
			end
			G_10_()
			if L_514_ ~= 70 and L_47_ then
				L_25_:Create(L_3_, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					FieldOfView = L_514_
				}):Play()
			end
		end
		if L_44_ and L_448_arg1.KeyCode == L_34_.curConfig.FireSelectKey and not L_66_ and not L_59_ and not L_83_ and L_34_.curConfig.CanSelectFire and not L_69_ and not L_52_ and not L_76_ and not L_66_ and not L_71_ and not L_50_ then
			L_82_ = true
			L_59_ = true
			L_69_ = false
			if G_47_ then
				G_47_ = false
			end
			G_58_()
			G_62_()
			G_13_()
			L_59_ = false
		end
		L_82_ = false
	end
	if not L_449_arg2 then
		if L_448_arg1.KeyCode == L_32_.globalConfig.NVGKey and L_32_.globalConfig.NVGEnabled then
			L_77_ = not L_77_
			G_54_()
		end
	end
end)
L_27_.InputBegan:connect(function(L_515_arg1, L_516_arg2)
	if not L_516_arg2 then
		if L_44_ or L_32_.globalConfig.UniversalStances and not L_53_ and not L_34_.Seated then
			if L_515_arg1.KeyCode == Enum.KeyCode.C and not L_34_.Seated then
				L_48_ = false
				if L_34_.StanceIndex == 0 then
					L_34_.StanceIndex = 1
					G_17_()
				elseif L_34_.StanceIndex == 1 then
					L_34_.StanceIndex = 2
					G_17_()
				elseif L_34_.StanceIndex == 2 then
					L_34_.StanceIndex = 1
					G_17_()
				end
			end
			if L_515_arg1.KeyCode == Enum.KeyCode.X and not L_34_.Seated then
				L_48_ = false
				if L_34_.StanceIndex == 0 then
					L_34_.StanceIndex = 1
					G_17_()
				elseif L_34_.StanceIndex == 1 then
					L_34_.StanceIndex = 0
					G_17_()
				elseif L_34_.StanceIndex == 2 then
					L_34_.StanceIndex = 1
					G_17_()
				end
			end
		end
	end
end)
L_27_.InputBegan:connect(function(L_517_arg1, L_518_arg2)
	if not L_518_arg2 then
		if L_44_ or L_32_.globalConfig.UniversalStances and not L_53_ and not L_34_.Seated then
			if L_517_arg1.KeyCode == Enum.KeyCode.ButtonB and not L_34_.Seated then
				L_48_ = false
				if L_34_.StanceIndex == 0 then
					L_34_.StanceIndex = 1
					G_17_()
				elseif L_34_.StanceIndex == 1 then
					L_34_.StanceIndex = 2
					G_17_()
				elseif L_34_.StanceIndex == 2 then
					L_34_.StanceIndex = 1
					G_17_()
				end
				delay(0.3, function()
					if L_27_:IsGamepadButtonDown(Enum.UserInputType.Gamepad1, Enum.KeyCode.ButtonB) then
						L_48_ = false
						L_34_.StanceIndex = 0
						G_17_()
					end
				end)
			end
		end
	end
end)
L_27_.InputEnded:connect(function(L_519_arg1, L_520_arg2)
	if not L_520_arg2 and L_44_ and L_34_.curConfig then
		if L_519_arg1.UserInputType == L_34_.curConfig.ShootKeybind then
			L_34_.MouseHeld = false
		end
		if L_519_arg1.UserInputType == L_34_.curConfig.ADSKeybind and not L_48_ then
			G_19_(false, true)
		end
		if L_519_arg1.KeyCode == L_34_.curConfig.AltADSKey and not L_48_ then
			G_19_(false, true)
		end
		if L_519_arg1.KeyCode == L_34_.curConfig.SprintKey and L_44_ and not L_45_ and not L_49_ and not L_47_ and not L_53_ and not L_50_ then
			G_20_(false)
		end
		if L_519_arg1.KeyCode == Enum.KeyCode.Q and L_34_.StanceIndex ~= 2 and not L_34_.Seated and not L_32_.globalConfig.ToggleableLeaning then
			L_43_.dirPeek = 0
			G_16_()
		end
		if L_519_arg1.KeyCode == Enum.KeyCode.E and L_34_.StanceIndex ~= 2 and not L_34_.Seated and not L_32_.globalConfig.ToggleableLeaning then
			L_43_.dirPeek = 0
			G_16_()
		end
		if L_519_arg1.KeyCode == Enum.KeyCode.LeftControl and L_47_ then
			L_34_.aimWalkSpeed = 9
		end
		if L_519_arg1.KeyCode == Enum.KeyCode.A then
			if L_27_:IsKeyDown(Enum.KeyCode.A) then
				L_19_ = CFrame.Angles(0, 0, math.rad(-10))
			elseif L_27_:IsKeyDown(Enum.KeyCode.D) then
				L_19_ = CFrame.Angles(0, 0, math.rad(10))
			else
				L_19_ = CFrame.Angles(0, 0, 0)
			end
		end
		if L_519_arg1.KeyCode == Enum.KeyCode.D then
			if L_27_:IsKeyDown(Enum.KeyCode.A) then
				L_19_ = CFrame.Angles(0, 0, math.rad(-10))
			elseif L_27_:IsKeyDown(Enum.KeyCode.D) then
				L_19_ = CFrame.Angles(0, 0, math.rad(10))
			else
				L_19_ = CFrame.Angles(0, 0, 0)
			end
		end
		if L_519_arg1.KeyCode == Enum.KeyCode.W and L_48_ then
			G_20_(false)
		end
	end
end)
L_27_.InputChanged:connect(function(L_521_arg1, L_522_arg2)
	if not L_522_arg2 and L_44_ then
		if L_521_arg1.UserInputType == Enum.UserInputType.MouseWheel then
			if not L_71_ and not L_72_ and not L_66_ and not L_85_ then
				if L_47_ then
					if L_521_arg1.Position.Z == 1 then
						L_34_.aimSens = L_34_.aimSens + 0.1
						if L_34_.aimSens > 1 then
							L_34_.aimSens = 1
						end
						L_34_.aimSens = L_34_.aimSens
					elseif L_521_arg1.Position.Z == -1 then
						L_34_.aimSens = L_34_.aimSens - 0.1
						if L_34_.aimSens < 0.1 then
							L_34_.aimSens = 0.1
						end
						L_34_.aimSens = L_34_.aimSens
					end
				else
					if L_521_arg1.Position.Z == 1 then
						L_34_.baseSens = L_34_.baseSens + 0.1
						if L_34_.baseSens > 1 then
							L_34_.baseSens = 1
						end
						L_108_.Value = L_34_.baseSens
					elseif L_521_arg1.Position.Z == -1 then
						L_34_.baseSens = L_34_.baseSens - 0.1
						if L_34_.baseSens < 0.1 then
							L_34_.baseSens = 0.1
						end
						L_108_.Value = L_34_.baseSens
					end
				end
			end
		end
	end
	if L_521_arg1.UserInputType == Enum.UserInputType.MouseMovement then
		L_35_.desiredXOffset = math.min(math.max(L_521_arg1.Delta.x, -L_35_.swayInputLimit), L_35_.swayInputLimit)
		L_35_.desiredYOffset = math.min(math.max(L_521_arg1.Delta.y, -L_35_.swayInputLimit), L_35_.swayInputLimit)
	end
end)
L_27_.InputBegan:connect(function(L_523_arg1, L_524_arg2)
	if not L_524_arg2 and L_44_ then
		if L_523_arg1.KeyCode == Enum.KeyCode.ButtonL2 and L_44_ and not L_45_ and not L_66_ then
			G_19_(true, true)
		end
		if L_523_arg1.KeyCode == Enum.KeyCode.ButtonL3 and L_44_ and not L_45_ and L_46_ and not L_49_ and not L_66_ then
			G_20_(true)
		end
		if L_523_arg1.KeyCode == Enum.KeyCode.ButtonR2 and L_44_ and not L_45_ and not L_66_ then
			L_34_.MouseHeld = true
			if L_34_.Ammo > 0 then
				G_28_()
			end
			if L_34_.Ammo <= 0 or not L_34_.CanShoot then
				L_34_.Grip:WaitForChild("Click"):Play()
			end
		end
		if L_523_arg1.KeyCode == Enum.KeyCode.ButtonX and L_44_ and not L_45_ and not L_55_ and not G_47_ and not L_48_ and L_34_.Ammo < L_34_.curConfig.Ammo then
			local L_525_ = L_3_.FieldOfView
			if L_3_.FieldOfView ~= 70 then
				L_25_:Create(L_3_, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					FieldOfView = 70
				}):Play()
			end
			L_57_ = L_34_.CanShoot
			L_34_.CanShoot = false
			if L_34_.Ammo > 0 then
				L_56_ = true
				L_57_ = true
			else
				L_56_ = false
				L_57_ = false
			end
			if L_34_.StoredAmmo > 0 and L_34_.Ammo < L_34_.curConfig.Ammo then
				G_47_ = false
				L_55_ = true
				G_60_()
				if L_34_.curConfig.CanAutoBolt then
					if L_34_.Ammo <= 0 then
						if not L_34_.curConfig.CanSlideLock then
							G_11_()
							G_12_()
						end
					elseif L_34_.Ammo > 0 then
						if not L_34_.curConfig.CanSlideLock then
							if L_34_.BoltW.C1 ~= (CFrame.new() or CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)) then
								G_11_()
								G_12_()
							end
						end
					end
				end
				G_13_()
				if L_34_.Ammo <= 0 then
					if (L_34_.StoredAmmo - (L_34_.curConfig.Ammo - L_34_.Ammo)) < 0 then
						L_34_.Ammo = L_34_.Ammo + L_34_.StoredAmmo
						L_34_.StoredAmmo = 0
					else
						L_34_.StoredAmmo = L_34_.StoredAmmo - (L_34_.curConfig.Ammo - L_34_.Ammo)
						L_34_.Ammo = L_34_.curConfig.Ammo
					end
				elseif L_34_.Ammo > 0 then
					if (L_34_.StoredAmmo - (L_34_.curConfig.Ammo - L_34_.Ammo)) < 0 then
						L_34_.Ammo = L_34_.Ammo + L_34_.StoredAmmo + 1
						L_34_.StoredAmmo = 0
					else
						L_34_.StoredAmmo = L_34_.StoredAmmo - (L_34_.curConfig.Ammo - L_34_.Ammo)
						L_34_.Ammo = L_34_.curConfig.Ammo + 1
					end
				end
				L_55_ = false
				if L_34_.curConfig.CanAutoBolt or L_56_ then
					L_34_.CanShoot = true
					L_57_ = true
				end
			end
			G_10_()
			if L_525_ ~= 70 and L_47_ then
				L_25_:Create(L_3_, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					FieldOfView = L_525_
				}):Play()
			end
		end
		if L_523_arg1.KeyCode == Enum.KeyCode.ButtonY and L_44_ and not L_45_ and not L_51_ then
			L_51_ = true
			L_52_ = not L_52_
			if L_52_ then
				G_11_()
				if L_56_ and L_34_.Ammo > 0 then
					G_40_()
				end
				L_51_ = false
			else
				if L_34_.Ammo > 0 then
					L_34_.CanShoot = true
					L_57_ = true
					if L_56_ then
						L_34_.Ammo = L_34_.Ammo - 1
					end
					L_56_ = true
				end
				G_12_()
				G_13_()
				L_51_ = false
			end
			G_10_()
		end
		if L_523_arg1.KeyCode == Enum.KeyCode.DPadDown and L_44_ and not L_45_ and not L_59_ and not G_47_ and L_34_.curConfig.CanSelectFire then
			L_59_ = true
			if L_34_.FireMode == 1 then
				if G_47_ then
					G_47_ = false
				end
				if L_34_.curConfig.AutoEnabled then
					L_34_.FireMode = 2
					L_34_.CanShoot = L_57_
				elseif not L_34_.curConfig.AutoEnabled and L_34_.curConfig.BurstEnabled then
					L_34_.FireMode = 3
					L_34_.CanShoot = L_57_
				elseif not L_34_.curConfig.AutoEnabled and not L_34_.curConfig.BurstEnabled and L_34_.curConfig.BoltAction then
					L_34_.FireMode = 4
					L_34_.FireMode = L_57_
				elseif not L_34_.curConfig.AutoEnabled and not L_34_.curConfig.BurstEnabled and not L_34_.curConfig.BoltAction and L_34_.curConfig.ExplosiveEnabled then
					L_34_.FireMode = 6
					L_57_ = L_34_.CanShoot
					L_34_.CanShoot = L_58_
				elseif not L_34_.curConfig.AutoEnabled and not L_34_.curConfig.BurstEnabled and not L_34_.curConfig.BoltAction and not L_34_.curConfig.ExplosiveEnabled then
					L_34_.FireMode = 1
					L_34_.CanShoot = L_57_
				end
			elseif L_34_.FireMode == 2 then
				if G_47_ then
					G_47_ = false
				end
				if L_34_.curConfig.BurstEnabled then
					L_34_.FireMode = 3
					L_34_.CanShoot = L_57_
				elseif not L_34_.curConfig.BurstEnabled and L_34_.curConfig.BoltAction then
					L_34_.FireMode = 4
					L_34_.CanShoot = L_57_
				elseif not L_34_.curConfig.BurstEnabled and not L_34_.curConfig.BoltAction and L_34_.curConfig.ExplosiveEnabled then
					L_34_.FireMode = 6
					L_57_ = L_34_.CanShoot
					L_34_.CanShoot = L_58_
				elseif not L_34_.curConfig.BurstEnabled and not L_34_.curConfig.BoltAction and not L_34_.curConfig.ExplosiveEnabled and L_34_.curConfig.SemiEnabled then
					L_34_.FireMode = 1
					L_34_.CanShoot = L_57_
				elseif not L_34_.curConfig.BurstEnabled and not L_34_.curConfig.BoltAction and not L_34_.curConfig.SemiEnabled then
					L_34_.FireMode = 2
					L_34_.CanShoot = L_57_
				end
			elseif L_34_.FireMode == 3 then
				if G_47_ then
					G_47_ = false
				end
				if L_34_.curConfig.BoltAction then
					L_34_.FireMode = 4
					L_34_.CanShoot = L_57_
				elseif not L_34_.curConfig.BoltAction and L_34_.curConfig.ExplosiveEnabled then
					L_34_.FireMode = 6
					L_57_ = L_34_.CanShoot
					L_34_.CanShoot = L_58_
				elseif not L_34_.curConfig.BoltAction and not L_34_.curConfig.ExplosiveEnabled and L_34_.curConfig.SemiEnabled then
					L_34_.FireMode = 1
					L_34_.CanShoot = L_57_
				elseif not L_34_.curConfig.BoltAction and not L_34_.curConfig.SemiEnabled and L_34_.curConfig.AutoEnabled then
					L_34_.FireMode = 2
					L_34_.CanShoot = L_57_
				elseif not L_34_.curConfig.BoltAction and not L_34_.curConfig.SemiEnabled and not L_34_.curConfig.AutoEnabled then
					L_34_.FireMode = 3
					L_34_.CanShoot = L_57_
				end
			elseif L_34_.FireMode == 4 then
				if G_47_ then
					G_47_ = false
				end
				if L_34_.curConfig.ExplosiveEnabled then
					L_34_.FireMode = 6
					L_57_ = L_34_.CanShoot
					L_34_.CanShoot = L_58_
				elseif not L_34_.curConfig.ExplosiveEnabled and L_34_.curConfig.SemiEnabled then
					L_34_.FireMode = 1
					L_34_.CanShoot = L_57_
				elseif not L_34_.curConfig.SemiEnabled and L_34_.curConfig.AutoEnabled then
					L_34_.FireMode = 2
					L_34_.CanShoot = L_57_
				elseif not L_34_.curConfig.SemiEnabled and not L_34_.curConfig.AutoEnabled and L_34_.curConfig.BurstEnabled then
					L_34_.FireMode = 3
					L_34_.CanShoot = L_57_
				elseif not L_34_.curConfig.SemiEnabled and not L_34_.curConfig.AutoEnabled and not L_34_.curConfig.BurstEnabled then
					L_34_.FireMode = 4
					L_34_.CanShoot = L_57_
				end
			elseif L_34_.FireMode == 6 then
				if G_47_ then
					G_47_ = false
				end
				L_58_ = L_34_.CanShoot
				if L_34_.curConfig.SemiEnabled then
					L_34_.FireMode = 1
					L_34_.CanShoot = L_57_
				elseif not L_34_.curConfig.SemiEnabled and L_34_.curConfig.AutoEnabled then
					L_34_.FireMode = 2
					L_34_.CanShoot = L_57_
				elseif not L_34_.curConfig.SemiEnabled and not L_34_.curConfig.AutoEnabled and L_34_.curConfig.BurstEnabled then
					L_34_.FireMode = 3
					L_34_.CanShoot = L_57_
				elseif not L_34_.curConfig.SemiEnabled and not L_34_.curConfig.AutoEnabled and not L_34_.curConfig.BurstEnabled and L_34_.curConfig.BoltAction then
					L_34_.FireMode = 4
					L_34_.CanShoot = L_57_
				elseif not L_34_.curConfig.SemiEnabled and not L_34_.curConfig.AutoEnabled and not L_34_.curConfig.BurstEnabled and not L_34_.curConfig.BoltAction then
					L_34_.FireMode = 6
					L_57_ = L_34_.CanShoot
					L_34_.CanShoot = L_58_
				end
			end
			G_10_()
			G_62_()
			G_13_()
			L_59_ = false
		end
		if L_523_arg1.KeyCode == Enum.KeyCode.DPadUp then
			if L_34_.curModel:FindFirstChild("AimPart2") then
				L_54_ = not L_54_
				if L_54_ then
					L_34_.CurAimPart = L_34_.curModel:FindFirstChild("AimPart2")
					L_34_.AimPart2 = L_34_.curModel:FindFirstChild("AimPart2")
					if not L_89_ then
						L_34_.curZoom = L_34_.curConfig.AltAimZoom
					else
						L_34_.curZoom = L_91_
					end
				else
					L_34_.CurAimPart = L_34_.AimPart
					if not L_89_ then
						L_34_.curZoom = L_34_.curConfig.AimZoom
					else
						L_34_.curZoom = L_90_
					end
				end
				if L_47_ then
					G_19_(true, false)
				end
			end
		end
	end
end)
L_27_.InputEnded:connect(function(L_526_arg1, L_527_arg2)
	if not L_527_arg2 and L_44_ then
		if L_526_arg1.KeyCode == Enum.KeyCode.ButtonL2 and not L_48_ then
			G_19_(false, true)
		end
		if L_526_arg1.KeyCode == Enum.KeyCode.ButtonL3 and L_44_ and not L_45_ and not L_47_ and not L_53_ and not L_50_ then
			G_20_(false)
		end
		if L_526_arg1.KeyCode == Enum.KeyCode.ButtonR2 and L_44_ and not L_45_ then
			L_34_.MouseHeld = false
		end
	end
end)
L_31_.humanoid.Running:connect(function(L_528_arg1)
	if L_31_.humanoid.FloorMaterial ~= Enum.Material.Air then
		if L_528_arg1 > 1 then
			L_46_ = true
		else
			if L_48_ then
				G_20_(false)
			end
			L_46_ = false
		end
	end
end)
L_35_.gunSway.s = 15
L_35_.gunSway.d = 0.4
L_26_:Connect(function(L_529_arg1)
	if L_44_ and L_34_.AnimBaseW then
		L_35_.deltaX, L_35_.deltaY = L_35_.deltaX or 0, L_35_.deltaY or 0
		if L_35_.oc0 == nil or L_35_.oc1 == nil then
			L_35_.oc0 = L_34_.AnimBaseW.C0
			L_35_.oc1 = L_34_.AnimBaseW.C1
		end
		local L_530_ = (math.cos(L_35_.walkTick * L_35_.walkAnimSpeed / 2) * L_35_.walkAnimIntensity)
		local L_531_ = (math.cos(L_35_.walkTick * L_35_.walkAnimSpeed) * L_35_.walkAnimIntensity)
		local L_532_ = CFrame.new(L_530_, L_531_, 0.02) * CFrame.Angles((math.sin(L_35_.walkTick * L_35_.walkAnimSpeed) * L_35_.walkAnimIntensity), (math.sin(L_35_.walkTick * L_35_.walkAnimSpeed / 2) * L_35_.walkAnimIntensity), 0)
		local L_533_ = (math.sin(L_35_.idleTick * L_35_.idleSpeed / 2) * L_35_.idleIntensity)
		local L_534_ = (math.cos(L_35_.idleTick * L_35_.idleSpeed) * L_35_.idleIntensity)
		local L_535_ = CFrame.new(L_533_, L_534_, 0.02)
		if L_46_ and L_31_.humanoid.FloorMaterial ~= Enum.Material.Air then
			L_35_.walkTick = L_35_.walkTick + .017
			L_35_.movinganim = L_532_
		else
			L_35_.walkTick = 0
			L_35_.movinganim = CFrame.new()
		end
		L_35_.gunSway.t = Vector3.new(L_35_.desiredXOffset, L_35_.desiredYOffset, 0)
		local L_536_ = L_35_.gunSway.p
		local L_537_ = L_536_.X / L_35_.swayInputLimit * (L_47_ and L_35_.aimSway or L_35_.hipSway)
		local L_538_ = L_536_.Y / L_35_.swayInputLimit * (L_47_ and L_35_.aimSway or L_35_.hipSway)
		if L_47_ then
			L_35_.swayCF = CFrame.new(math.rad(-L_537_), math.rad(L_538_), 0) * CFrame.Angles(0, 0, math.rad(-L_537_))
			L_35_.idleTick = 0
			L_35_.idleAnimation = CFrame.new()
		else
			L_35_.swayCF = CFrame.new(math.rad(-L_537_), math.rad(L_538_), 0) * CFrame.Angles(0, 0, math.rad(-L_537_))
			L_35_.idleTick = L_35_.idleTick + 0.003
			L_35_.idleAnimation = L_535_
		end
		local L_539_ = L_43_.recoilSpring.p
		local L_540_ = CFrame.new(0, 0, L_539_.z)
		local L_541_ = CFrame.fromAxisAngle(Vector3.new(1, 0, 0), L_539_.x / 7)
		local L_542_ = CFrame.fromAxisAngle(Vector3.new(0, 1, 0), L_539_.y / 10)
		L_539_ = L_540_ * L_541_ * L_542_
		L_34_.newCamOffset = L_34_.newCamOffset:Lerp(L_34_.camC1, L_529_arg1 * 5)
		L_34_.BasePart.CFrame = L_3_.CFrame * L_539_
		L_34_.PrimeAnimBaseW.C0 = L_34_.PrimeAnimBaseW.C0:lerp(L_19_, L_529_arg1 * 5)
		L_34_.AnimBaseW.C0 = L_34_.AnimBaseW.C0:lerp(L_35_.oc0 * L_35_.movinganim * L_35_.idleAnimation, L_529_arg1 * 5)
		G_57_(L_529_arg1)
		if L_47_ then
			L_27_.MouseDeltaSensitivity = L_34_.aimSens
			L_34_.sensDisplay.Text = L_34_.aimSens
		else
			L_27_.MouseDeltaSensitivity = L_34_.baseSens
			L_34_.sensDisplay.Text = L_34_.baseSens
		end
		if not L_47_ and not L_48_ and not L_50_ and not L_53_ then
			L_34_.AnimBaseW.C1 = L_34_.AnimBaseW.C1:lerp(CFrame.new() * L_35_.swayCF, L_529_arg1)
		end
		if L_34_.StanceIndex == 0 and not L_48_ then
			if not L_47_ then
				L_2_:WaitForChild("Humanoid").WalkSpeed = L_34_.baseWalkspeed
			else
				L_2_:WaitForChild("Humanoid").WalkSpeed = L_34_.aimWalkSpeed
			end
		end
		if L_47_ and not L_48_ and not L_50_ and not L_53_ then
			if not L_49_ then
				L_35_.walkAnimIntensity = L_32_.globalConfig.AimWalkIntensity
				L_35_.walkAnimSpeed = L_32_.globalConfig.AimWalkAnimSpeed
			end
			L_35_.idleSpeed = 0
			L_34_.AnimBaseW.C1 = L_34_.AnimBaseW.C1:lerp(L_34_.CurAimPart.CFrame:toObjectSpace(L_34_.AnimBase.CFrame) * L_35_.oc0 * L_35_.swayCF, L_529_arg1 * L_34_.curConfig.AimSpeedMult)
		end
		if L_48_ and not L_49_ and L_46_ then
			L_35_.walkAnimIntensity = L_34_.curConfig.SprintWalkIntensity
			L_35_.walkAnimSpeed = L_34_.curConfig.SprintWalkAnimSpeed
			L_31_.humanoid.WalkSpeed = 21
			L_34_.AnimBaseW.C1 = L_34_.AnimBaseW.C1:lerp(L_35_.swayCF * L_34_.curConfig.SprintPos, L_529_arg1 * 5)
		end
		if not L_47_ and not L_48_ and not L_50_ and not L_53_ then
			L_35_.walkAnimIntensity = L_32_.globalConfig.WalkIntensity
			L_35_.walkAnimSpeed = L_32_.globalConfig.WalkAnimSpeed
			L_35_.idleSpeed = 2
			L_34_.AnimBaseW.C1 = L_34_.AnimBaseW.C1:lerp(CFrame.new() * L_35_.swayCF, L_529_arg1 * 7)
		end
		for L_543_forvar1, L_544_forvar2 in pairs(L_34_.curModel:GetChildren()) do
			if L_544_forvar2 and string.match(L_544_forvar2.Name, "ProjectorSight") then
				local L_545_ = L_544_forvar2.SurfaceGui
				L_545_.Adornee = L_544_forvar2
				local L_546_ = L_545_.ClippingFrame.Reticle
				local L_547_ = L_544_forvar2.CFrame:pointToObjectSpace(L_3_.CFrame.Position) / L_544_forvar2.Size
				L_546_.Position = UDim2.new(.5 + L_547_.x, 0, .5 - L_547_.y, 0)
			end
		end
		if L_72_ and L_34_.LA:FindFirstChild("Binos") and L_34_.LA.Binos:FindFirstChild("AimPart") then
			if L_4_.Hit then
				local L_548_, L_549_, L_550_ = workspace:FindPartOnRayWithIgnoreList(Ray.new(L_31_.head.Position, (L_4_.Hit.p - L_31_.head.Position)), L_38_)
				if L_548_ then
					L_34_.hud:WaitForChild("RangeFrame"):WaitForChild("Dist").Text = math.ceil((L_31_.head.Position - L_549_).magnitude).."m"
				end
			end
		end
	end
	if L_49_ then
		if L_34_.StanceIndex == 0 then
			L_35_.walkAnimIntensity = 0.08
			L_35_.walkAnimSpeed = 12
		elseif L_34_.StanceIndex == 1 then
			if L_31_.humanoid.Jump then
				L_31_.humanoid.Jump = false
			end
			L_31_.humanoid.WalkSpeed = 6
			L_35_.walkAnimIntensity = 0.005
			L_35_.walkAnimSpeed = 6
		elseif L_34_.StanceIndex == 2 then
			if L_31_.humanoid.Jump then
				L_31_.humanoid.Jump = false
			end
			L_31_.humanoid.WalkSpeed = 3
			L_35_.walkAnimIntensity = 0.003
			L_35_.walkAnimSpeed = 3
		end
	end
	if L_34_.progressBar and L_32_.globalConfig.StaminaEnabled then
		L_34_.progressBar.Size = L_34_.progressBar.Size:Lerp(UDim2.new(L_34_.Stamina, 0, 1, -4), L_529_arg1 * 5)
	end
	G_37_(-math.asin((L_4_.Hit.p - L_4_.Origin.p).unit.y))
	for L_551_forvar1, L_552_forvar2 in pairs(game.Players:GetChildren()) do
		if L_552_forvar2 and L_552_forvar2:IsA("Player") and L_552_forvar2 ~= L_1_ and L_552_forvar2.Character and L_552_forvar2.Character:WaitForChild("CordonValues"):FindFirstChild("yRot") and L_552_forvar2.Character:WaitForChild("CordonValues").yRot.Value and L_552_forvar2.Character:WaitForChild("CordonValues"):FindFirstChild("zRot") and L_552_forvar2.Character:WaitForChild("CordonValues").zRot.Value and L_552_forvar2.Character:FindFirstChild("Torso") and L_552_forvar2.Character.Torso:FindFirstChild("Neck") and (L_552_forvar2.Character:WaitForChild("HumanoidRootPart").Position - L_31_.rootPart.Position).magnitude <= L_32_.globalConfig.RenderDist then
			local L_553_ = L_552_forvar2.Character:WaitForChild("Torso"):WaitForChild("Neck")
			local L_554_ = L_552_forvar2.Character:WaitForChild("HumanoidRootPart").CFrame * CFrame.new(0, 1.5, 0) * CFrame.new(L_552_forvar2.Character:WaitForChild("Humanoid").CameraOffset)
			L_553_.C0 = L_553_.C0:lerp(L_552_forvar2.Character:WaitForChild("HumanoidRootPart").CFrame:toObjectSpace(L_554_) * L_552_forvar2.Character:WaitForChild("CordonValues"):WaitForChild("neckCF").Value, 0.2)
			L_553_.C1 = L_553_.C1:lerp(L_552_forvar2.Character:WaitForChild("CordonValues").yRot.Value * L_552_forvar2.Character:WaitForChild("CordonValues").zRot.Value, 0.2)
		end
	end
	if L_63_ then
		local L_555_ = Ray.new(L_34_.curModel.LaserLight.Position, L_34_.curModel.Grip.CFrame.lookVector * 9999)
		local L_556_, L_557_, L_558_ = workspace:FindPartOnRayWithIgnoreList(L_555_, L_39_)
		L_95_.CFrame = CFrame.new(0, 0, -L_97_)
		L_98_.CFrame = L_95_.WorldCFrame
		if L_556_ and (L_556_ and L_556_.Transparency >= 1 or L_556_.CanCollide == false) then
			table.insert(L_39_, L_556_)
		end
		if L_556_ then
			L_97_ = (L_34_.curModel.LaserLight.Position - L_557_).magnitude
		else
			L_97_ = 9999
		end
	end
	if L_32_.globalConfig.ReplicatedLaser then
		for L_559_forvar1, L_560_forvar2 in pairs(game.Players:GetChildren()) do
			if L_560_forvar2 and L_560_forvar2:IsA("Player") and L_560_forvar2 ~= L_1_ and L_560_forvar2.Character and L_560_forvar2.Character.CordonValues:FindFirstChild("Equipped") and L_560_forvar2.Character.CordonValues.Equipped.Value and L_560_forvar2.Character.CordonValues:FindFirstChild("SModel") and L_560_forvar2.Character.CordonValues.SModel.Value then
				G_52_(L_560_forvar2, L_560_forvar2.Character.CordonValues.SModel.Value.Name, L_560_forvar2.Character.CordonValues.LaserActive.Value, L_560_forvar2.Character.CordonValues.SModel.Value)
			end
		end
	end
end)
game:GetService("RunService"):BindToRenderStep("Camera Update", 200, G_36_)
coroutine.resume(coroutine.create(function()
	while true do
		wait(1)
		if L_32_.globalConfig.StaminaEnabled then
			if L_48_ then
				L_34_.Stamina = L_34_.Stamina - L_34_.StaminaMult
				if L_34_.Stamina <= 0 then
					L_34_.Stamina = 0
					G_20_(false)
				end
			elseif not L_48_ and L_34_.Stamina < 1 then
				wait(L_32_.globalConfig.StaminaRegenTime - 1)
				L_34_.Stamina = L_34_.Stamina + L_32_.globalConfig.StaminaRegenMult
				if L_34_.Stamina > 1 then
					L_34_.Stamina = 1
				end
			end
		end
	end
end))
L_4_.Idle:connect(function()
	L_35_.desiredXOffset = 0
	L_35_.desiredYOffset = 0
end)
L_33_.updateCharEvent.OnClientEvent:connect(function(L_561_arg1, L_562_arg2, L_563_arg3, L_564_arg4, L_565_arg5, L_566_arg6)
	if L_561_arg1 ~= L_1_ and L_561_arg1.Character and L_561_arg1.Character:FindFirstChild("BasePart") and (L_561_arg1.Character:WaitForChild("HumanoidRootPart").Position - L_31_.rootPart.Position).magnitude <= L_32_.globalConfig.RenderDist then
		local L_567_
		if L_564_arg4 ~= nil then
			L_567_ = require(L_564_arg4)
		else
			L_567_ = nil
		end
		if L_562_arg2 == "Aim" then
			if L_563_arg3 then
				L_25_:Create(L_561_arg1.Character.BasePart.RAW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					C1 = L_567_.RightAimPos
				}):Play()
				L_25_:Create(L_561_arg1.Character.BasePart.LAW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					C1 = L_567_.LeftAimPos
				}):Play()
			else
				L_25_:Create(L_561_arg1.Character.BasePart.RAW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					C1 = L_567_.RightArmPos
				}):Play()
				L_25_:Create(L_561_arg1.Character.BasePart.LAW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					C1 = L_567_.LeftArmPos
				}):Play()
			end
		end
		if L_562_arg2 == "Sprint" then
			if L_563_arg3 then
				L_25_:Create(L_561_arg1.Character.BasePart.RAW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					C1 = L_567_.RightSprintPos
				}):Play()
				L_25_:Create(L_561_arg1.Character.BasePart.LAW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					C1 = L_567_.LeftSprintPos
				}):Play()
			else
				L_25_:Create(L_561_arg1.Character.BasePart.RAW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					C1 = L_567_.RightArmPos
				}):Play()
				L_25_:Create(L_561_arg1.Character.BasePart.LAW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					C1 = L_567_.LeftArmPos
				}):Play()
			end
		end
		if L_562_arg2 == "Shoot" then
			if L_563_arg3 then
				if L_561_arg1.Character:FindFirstChild("BasePart") and L_561_arg1.Character.BasePart:FindFirstChild("BasePartW") then
					L_25_:Create(L_561_arg1.Character:WaitForChild("BasePart"):WaitForChild("BasePartW"), TweenInfo.new(L_565_arg5), {
						C1 = L_567_.ShootPos
					}):Play()
				end
				if L_561_arg1.Character:FindFirstChildOfClass("Tool") and L_561_arg1.Character:FindFirstChild("@"..L_561_arg1.Character:FindFirstChildOfClass("Tool").Name) then
					local L_568_ = L_561_arg1.Character:FindFirstChild("@"..L_561_arg1.Character:FindFirstChildOfClass("Tool").Name)
					if L_568_:FindFirstChild("FirePart") then
						for L_569_forvar1, L_570_forvar2 in pairs(L_568_.FirePart:GetChildren()) do
							if L_570_forvar2 and L_570_forvar2.Name:sub(1, 7) == "FlashFX" then
								L_570_forvar2.Enabled = true
							end
						end
						delay(1 / 30, function()
							for L_571_forvar1, L_572_forvar2 in pairs(L_568_.FirePart:GetChildren()) do
								if L_572_forvar2 and L_572_forvar2.Name:sub(1, 7) == "FlashFX" then
									L_572_forvar2.Enabled = false
								end
							end
						end)
					end
				end
				wait(L_565_arg5 * 2)
				if L_561_arg1.Character:FindFirstChild("BasePart") and L_561_arg1.Character.BasePart:FindFirstChild("BasePartW") then
					L_25_:Create(L_561_arg1.Character:WaitForChild("BasePart"):WaitForChild("BasePartW"), TweenInfo.new(0.2), {
						C1 = CFrame.new()
					}):Play()
				end
			end
		end
		if L_562_arg2 == "ReadyHigh" then
			if L_563_arg3 then
				L_25_:Create(L_561_arg1.Character.BasePart.BasePartW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					C1 = L_567_.ReadyHighPos
				}):Play()
			end
		end
		if L_562_arg2 == "ReadyLow" then
			if L_563_arg3 then
				L_25_:Create(L_561_arg1.Character.BasePart.BasePartW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					C1 = L_567_.ReadyLowPos
				}):Play()
			end
		end
		if L_562_arg2 == "Idle" then
			if L_563_arg3 then
				L_25_:Create(L_561_arg1.Character.BasePart.RAW, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {
					C1 = L_567_.RightArmPos
				}):Play()
				L_25_:Create(L_561_arg1.Character.BasePart.LAW, TweenInfo.new(0.15, Enum.EasingStyle.Quad), {
					C1 = L_567_.LeftArmPos
				}):Play()
				L_25_:Create(L_561_arg1.Character.BasePart.BasePartW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					C1 = CFrame.new()
				}):Play()
			end
		end
		if L_562_arg2 == "Patrol" then
			if L_563_arg3 then
				L_25_:Create(L_561_arg1.Character.BasePart.RAW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					C1 = L_567_.RightPatrolPos
				}):Play()
				L_25_:Create(L_561_arg1.Character.BasePart.LAW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					C1 = L_567_.LeftPatrolPos
				}):Play()
			else
				L_25_:Create(L_561_arg1.Character.BasePart.RAW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					C1 = L_567_.RightArmPos
				}):Play()
				L_25_:Create(L_561_arg1.Character.BasePart.LAW, TweenInfo.new(0.5, Enum.EasingStyle.Quad), {
					C1 = L_567_.LeftArmPos
				}):Play()
			end
		end
	end
	if L_562_arg2 == "Stance" and L_561_arg1 ~= L_1_ and L_561_arg1.Character and L_561_arg1.Character:FindFirstChild("Humanoid") and L_561_arg1.Character.Humanoid.Health > 0 then
		if L_565_arg5 == 0 then
			L_25_:Create(L_561_arg1.Character:WaitForChild("HumanoidRootPart"):WaitForChild("RootJoint"), TweenInfo.new(0.6), {
				C0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
			}):Play()
			L_25_:Create(L_561_arg1.Character:WaitForChild("Torso"):WaitForChild("Right Hip"), TweenInfo.new(0.6), {
				C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			}):Play()
			L_25_:Create(L_561_arg1.Character:WaitForChild("Torso"):WaitForChild("Left Hip"), TweenInfo.new(0.6), {
				C0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			}):Play()
		elseif L_565_arg5 == 1 then
			L_25_:Create(L_561_arg1.Character:WaitForChild("HumanoidRootPart"):WaitForChild("RootJoint"), TweenInfo.new(0.6), {
				C0 = CFrame.new(0, -1.20000005, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
			}):Play()
			L_25_:Create(L_561_arg1.Character:WaitForChild("Torso"):WaitForChild("Right Hip"), TweenInfo.new(0.6), {
				C0 = CFrame.new(1.00000191, -0.93054074, -0.393920898, 0, 0, 1, -0.98480773, 0.173648179, 0, -0.173648179, -0.98480773, 0)
			}):Play()
			L_25_:Create(L_561_arg1.Character:WaitForChild("Torso"):WaitForChild("Left Hip"), TweenInfo.new(0.6), {
				C0 = CFrame.new(-1, 0.165270448, -0.603042603, 0, 0, -1, -0.173648179, 0.98480773, 0, 0.98480773, 0.173648179, 0)
			}):Play()
		elseif L_565_arg5 == 2 then
			L_25_:Create(L_561_arg1.Character:WaitForChild("HumanoidRootPart"):WaitForChild("RootJoint"), TweenInfo.new(0.6), {
				C0 = CFrame.new(0, -2.5999999, 0, -1, 0, 0, 0, 1, 1.19248806e-08, 0, 1.19248806e-08, -1)
			}):Play()
			L_25_:Create(L_561_arg1.Character:WaitForChild("Torso"):WaitForChild("Right Hip"), TweenInfo.new(0.6), {
				C0 = CFrame.new(1, -1, 2.98023224e-08, 0.163175702, -0.342020363, 0.925416529, 0.0593911409, 0.939692557, 0.336824328, -0.984807789, 0, 0.17364797)
			}):Play()
			L_25_:Create(L_561_arg1.Character:WaitForChild("Torso"):WaitForChild("Left Hip"), TweenInfo.new(0.6), {
				C0 = CFrame.new(-1, -1, 2.98023224e-08, 0.163175896, 0.342020363, -0.92541647, -0.0593912117, 0.939692557, 0.336824298, 0.98480773, 0, 0.173648179)
			}):Play()
		end
	end
	if L_562_arg2 == "Lean" and L_561_arg1 ~= L_1_ and L_561_arg1.Character and L_561_arg1.Character:FindFirstChild("Humanoid") and L_561_arg1.Character.Humanoid.Health > 0 then
		if L_566_arg6 == 1 then
			L_25_:Create(L_561_arg1.Character:WaitForChild("HumanoidRootPart"):WaitForChild("RootJoint"), TweenInfo.new(0.6), {
				C1 = CFrame.new(0.600000024, 0, 0, -0.939692616, 0, 0.342020124, 0.342020124, 0, 0.939692616, 0, 1, 0)
			}):Play()
			L_25_:Create(L_561_arg1.Character:WaitForChild("Torso"):WaitForChild("Right Hip"), TweenInfo.new(0.6), {
				C1 = CFrame.new(0.5, 1, 0, 0, 0.087155737, 0.99619472, 0, 0.99619472, -0.087155737, -1, 0, 0)
			}):Play()
			L_25_:Create(L_561_arg1.Character:WaitForChild("Torso"):WaitForChild("Left Hip"), TweenInfo.new(0.6), {
				C1 = CFrame.new(-0.5, 0.600000024, 0, 0, -0.342020124, -0.939692557, 0, 0.939692557, -0.342020124, 1, 0, 0)
			}):Play()
		elseif L_566_arg6 == -1 then
			L_25_:Create(L_561_arg1.Character:WaitForChild("HumanoidRootPart"):WaitForChild("RootJoint"), TweenInfo.new(0.6), {
				C1 = CFrame.new(-0.600000024, 0, 0, -0.939692557, 0, -0.342020154, -0.342020154, 0, 0.939692557, 0, 1, 0)
			}):Play()
			L_25_:Create(L_561_arg1.Character:WaitForChild("Torso"):WaitForChild("Right Hip"), TweenInfo.new(0.6), {
				C1 = CFrame.new(0.5, 0.600000024, 0, 0, 0.342020124, 0.939692557, 0, 0.939692557, -0.342020124, -1, 0, 0)
			}):Play()
			L_25_:Create(L_561_arg1.Character:WaitForChild("Torso"):WaitForChild("Left Hip"), TweenInfo.new(0.6), {
				C1 = CFrame.new(-0.5, 1, 0, 0, 0, -0.99999994, 0, 0.99999994, 0, 1, 0, 0)
			}):Play()
		elseif L_566_arg6 == 0 then
			L_25_:Create(L_561_arg1.Character:WaitForChild("HumanoidRootPart"):WaitForChild("RootJoint"), TweenInfo.new(0.6), {
				C1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
			}):Play()
			L_25_:Create(L_561_arg1.Character:WaitForChild("Torso"):WaitForChild("Right Hip"), TweenInfo.new(0.6), {
				C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			}):Play()
			L_25_:Create(L_561_arg1.Character:WaitForChild("Torso"):WaitForChild("Left Hip"), TweenInfo.new(0.6), {
				C1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
			}):Play()
		end
	end
end)
L_33_.whizEvent.OnClientEvent:connect(function(L_573_arg1, L_574_arg2, L_575_arg3, L_576_arg4, L_577_arg5, L_578_arg6, L_579_arg7, L_580_arg8, L_581_arg9)
	if L_1_ ~= L_573_arg1 then
		G_41_(L_574_arg2, L_575_arg3, L_576_arg4, L_577_arg5, L_578_arg6, L_579_arg7, L_580_arg8, L_581_arg9)
	end
end)
L_33_.serverFXEvent.OnClientEvent:connect(function(L_582_arg1, L_583_arg2)
	if L_34_.hud then
		if L_32_.globalConfig.OverlayEnabled and L_34_.painShade.ImageTransparency == 1 then
			if (L_2_.HumanoidRootPart.Position - L_582_arg1).magnitude <= 10 then
				L_34_.intenseShade.Visible = true
				L_25_:Create(L_34_.intenseShade, TweenInfo.new(0.1), {
					ImageTransparency = 0
				}):Play()
				delay(0.7, function()
					L_25_:Create(L_34_.intenseShade, TweenInfo.new(3), {
						ImageTransparency = 1
					}):Play()
				end)
			end
		end
	end
end)
L_33_.manipEvent.OnClientEvent:Connect(function(L_584_arg1, L_585_arg2, L_586_arg3, L_587_arg4)
	if L_1_ ~= L_584_arg1 then
		for L_588_forvar1, L_589_forvar2 in pairs(L_585_arg2:WaitForChild("FlashLight"):GetChildren()) do
			if L_589_forvar2 and L_589_forvar2.Name == "Enable" then
				L_589_forvar2.Enabled = L_586_arg3
			end
		end
	end
end)
L_33_.resupplyEvent.OnClientEvent:Connect(function()
	L_65_ = true
end)
L_33_.connectionEvent.OnClientEvent:Connect(function(L_590_arg1, L_591_arg2, L_592_arg3, L_593_arg4)
	if L_592_arg3 ~= L_1_ then
		spawn(function()
			G_14_(L_590_arg1, L_591_arg2, L_592_arg3, L_593_arg4)
		end)
	end
end)
L_33_.nadeEvent.OnClientEvent:Connect(function(L_594_arg1, L_595_arg2, L_596_arg3)
	if L_594_arg1 ~= L_1_ then
		local L_597_ = L_7_:WaitForChild("FRAG"):WaitForChild("NADE"):Clone()
		L_597_.Parent = workspace
		L_597_.CFrame = L_595_arg2
		L_597_.Anchored = false
		L_597_.CanCollide = true
		game.Debris:AddItem(L_597_, 5)
		local L_598_ = L_597_:GetMass()
		local L_599_ = Instance.new("BodyForce", L_597_)
		L_599_.Force = L_32_.globalConfig.NadePhysics
		L_597_.Velocity = L_596_arg3 * L_32_.globalConfig.NadeSpeed
		L_597_:WaitForChild("Indicator").MaxDistance = L_32_.globalConfig.BlastRadius
		if L_594_arg1.TeamColor ~= L_1_.TeamColor then
			L_597_:WaitForChild("Indicator"):WaitForChild("Enemy").Visible = true
		else
			L_597_:WaitForChild("Indicator"):WaitForChild("Friendly").Visible = true
		end
		if L_32_.globalConfig.NadeTrailEnabled then
			L_597_:WaitForChild("Trail").Enabled = true
		end
	end
end)
L_33_.attachmentEvent.OnClientEvent:Connect(function(L_600_arg1, L_601_arg2, L_602_arg3)
	if L_601_arg2 == "OpticNode" then
		L_89_ = L_600_arg1
		L_90_ = L_602_arg3[1]
		L_91_ = L_602_arg3[2]
		L_34_.oHopUp = L_602_arg3[3]
	elseif L_601_arg2 == "GripNode" then
		L_92_ = L_600_arg1
		L_93_ = L_602_arg3
	end
end)
L_34_.optionButton.MouseEnter:connect(function()
	L_25_:Create(L_34_.optionButton:WaitForChild("Detail"), TweenInfo.new(0.3), {
		BackgroundTransparency = 0.3
	}):Play()
end)
L_34_.optionButton.MouseLeave:connect(function()
	if L_62_ ~= "Option" then
		L_25_:Create(L_34_.optionButton:WaitForChild("Detail"), TweenInfo.new(0.3), {
			BackgroundTransparency = 1
		}):Play()
	end
end)
L_34_.optionButton.MouseButton1Click:connect(function()
	L_62_ = "Option"
	L_32_.codeArchive.OptionFunc(L_34_, L_62_)
end)
L_34_.keybindButton.MouseEnter:connect(function()
	L_25_:Create(L_34_.keybindButton:WaitForChild("Detail"), TweenInfo.new(0.3), {
		BackgroundTransparency = 0.3
	}):Play()
end)
L_34_.keybindButton.MouseLeave:connect(function()
	if L_62_ ~= "Keybind" then
		L_25_:Create(L_34_.keybindButton:WaitForChild("Detail"), TweenInfo.new(0.3), {
			BackgroundTransparency = 1
		}):Play()
	end
end)
L_34_.keybindButton.MouseButton1Click:connect(function()
	L_62_ = "Keybind"
	L_32_.codeArchive.KeybindFunc(L_34_, L_62_)
end)
L_34_.patchButton.MouseEnter:connect(function()
	L_25_:Create(L_34_.patchButton:WaitForChild("Detail"), TweenInfo.new(0.3), {
		BackgroundTransparency = 0.3
	}):Play()
end)
L_34_.patchButton.MouseLeave:connect(function()
	if L_62_ ~= "Patch" then
		L_25_:Create(L_34_.patchButton:WaitForChild("Detail"), TweenInfo.new(0.3), {
			BackgroundTransparency = 1
		}):Play()
	end
end)
L_34_.patchButton.MouseButton1Click:connect(function()
	L_62_ = "Patch"
	L_25_:Create(L_34_.patchButton:WaitForChild("Hover"), TweenInfo.new(0.3), {
		ImageTransparency = 0.6
	}):Play()
	L_34_.menuFrame:WaitForChild("PagesFrame"):WaitForChild("PageLayout"):JumpTo(L_34_.menuFrame:WaitForChild("PagesFrame"):WaitForChild(L_62_))
	for L_617_forvar1, L_618_forvar2 in pairs(L_34_.menuFrame:WaitForChild("Buttons"):GetDescendants()) do
		if L_618_forvar2 and L_618_forvar2.Name == "Hover" and L_618_forvar2.Parent ~= L_34_.patchButton then
			L_25_:Create(L_618_forvar2, TweenInfo.new(0.3), {
				ImageTransparency = 1
			}):Play()
		end
		if L_618_forvar2 and L_618_forvar2.Name == "Detail" and L_618_forvar2.Parent ~= L_34_.patchButton then
			L_25_:Create(L_618_forvar2, TweenInfo.new(0.3), {
				BackgroundTransparency = 1
			}):Play()
		end
	end
end)
L_34_.menuFrame:WaitForChild("PagesFrame"):WaitForChild("Option"):WaitForChild("BaseSens"):WaitForChild("Context").FocusLost:connect(function(L_619_arg1)
	if L_619_arg1 then
		local L_620_ = tonumber(L_34_.menuFrame:WaitForChild("PagesFrame"):WaitForChild("Option"):WaitForChild("BaseSens"):WaitForChild("Context").Text)
		if L_620_ > 0 and L_620_ <= 1 then
			L_34_.baseSens = L_620_
			L_108_.Value = L_620_
		end
	else
		L_34_.menuFrame:WaitForChild("PagesFrame"):WaitForChild("Option"):WaitForChild("BaseSens"):WaitForChild("Context").Text = L_34_.baseSens
		L_34_.menuFrame:WaitForChild("PagesFrame"):WaitForChild("Option"):WaitForChild("AimSens"):WaitForChild("Context").Text = L_34_.aimSens
	end
end)
L_34_.menuFrame:WaitForChild("PagesFrame"):WaitForChild("Option"):WaitForChild("AimSens"):WaitForChild("Context").FocusLost:connect(function(L_621_arg1)
	if L_621_arg1 then
		local L_622_ = tonumber(L_34_.menuFrame:WaitForChild("PagesFrame"):WaitForChild("Option"):WaitForChild("AimSens"):WaitForChild("Context").Text)
		if L_622_ > 0 and L_622_ <= 1 then
			L_34_.aimSens = L_622_
			L_109_.Value = L_622_
		end
	else
		L_34_.menuFrame:WaitForChild("PagesFrame"):WaitForChild("Option"):WaitForChild("BaseSens"):WaitForChild("Context").Text = L_34_.baseSens
		L_34_.menuFrame:WaitForChild("PagesFrame"):WaitForChild("Option"):WaitForChild("AimSens"):WaitForChild("Context").Text = L_34_.aimSens
	end
end)
L_34_.menuButton.MouseButton1Click:connect(function()
	L_34_.menuFrame.Visible = not L_34_.menuFrame.Visible
	if L_34_.menuFrame.Visible then
		L_34_.menuFrame:WaitForChild("PagesFrame"):WaitForChild("Option"):WaitForChild("BaseSens"):WaitForChild("Context").Text = L_34_.baseSens
		L_34_.menuFrame:WaitForChild("PagesFrame"):WaitForChild("Option"):WaitForChild("AimSens"):WaitForChild("Context").Text = L_34_.aimSens
	end
end)
L_34_.aimButton.TouchTap:Connect(function()
	if L_44_ and not L_45_ then
		if not L_47_ then
			G_19_(true, false)
		else
			G_19_(false, true)
		end
	end
end)
L_34_.sprintButton.TouchTap:Connect(function()
	if L_44_ and not L_45_ then
		if not L_48_ then
			if ((L_32_.globalConfig.StaminaEnabled and L_34_.Stamina > 0) or not L_32_.globalConfig.StaminaEnabled) and not L_49_ and L_46_ and not L_66_ and not L_71_ and not L_72_ and not L_76_ then
				G_20_(true)
			end
		else
			if not L_49_ and not L_47_ and not L_53_ and not L_50_ then
				G_20_(false)
			end
		end
	end
end)