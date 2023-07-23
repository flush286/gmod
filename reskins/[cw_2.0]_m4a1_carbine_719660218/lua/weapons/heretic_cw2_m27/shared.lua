if CustomizableWeaponry then
AddCSLuaFile()
AddCSLuaFile("sh_sounds.lua")
include("sh_sounds.lua")

	util.PrecacheModel("models/weapons/v_her_m27IA.mdl")
	util.PrecacheModel("models/weapons/w_her_m27IA.mdl")
	
if CLIENT then
	SWEP.DrawCrosshair = false
	SWEP.PrintName = "M4 Carbine"
	SWEP.CSMuzzleFlashes = true
	SWEP.MuzzlePosMod = {x = 0, y = -1, z = 0}
	SWEP.ViewModelMovementScale = 0.8
	SWEP.FireMoveMod = 2.4
	SWEP.CrosshairParts = {left = true, right = true, upper = false, lower = false}
	
	
	SWEP.IconLetter = "w"
	
	
	SWEP.MuzzleEffect = "muzzleflash_OTS"
	SWEP.PosBasedMuz = true
	SWEP.SnapToGrip = true
	SWEP.ShellScale = 0.2
	SWEP.ShellOffsetMul = 0
	SWEP.ShellPosOffset = {x = 0, y = 1.2, z = -5.5}
	SWEP.InvertShellEjectAngle = false
	
	SWEP.ForeGripOffsetCycle_Draw = 0.74
	SWEP.ForeGripOffsetCycle_Reload = 0.9
	SWEP.ForeGripOffsetCycle_Reload_Empty = 0.95
	SWEP.M203OffsetCycle_Reload = 0.5
	SWEP.M203OffsetCycle_Reload_Empty = 0.9
	SWEP.M203OffsetCycle_Draw = 0.1
	
	SWEP.DrawTraditionalWorldModel = false
	SWEP.WM = "models/weapons/w_her_m27IA.mdl"
	SWEP.WMPos = Vector(0, 0, -1)
	SWEP.WMAng = Vector(-12, 0, 180)
	
	SWEP.CustomizePos = Vector(1.6, -0.805, -1)
	SWEP.CustomizeAng = Vector(6.82, 30.35, 0)
	
	SWEP.M203Pos = Vector(-0.562, -2.481, 0.24)
	SWEP.M203Ang = Vector(0, 0, 0)
	
	SWEP.KKINS2CSTMCMorePos = Vector(-2.096, -2, 0.4)
	SWEP.KKINS2CSTMCMoreAng = Vector(-0.1, -0.1, 0)
	
	SWEP.CoD4ReflexPos = Vector(-2.096, 0, 0.239)
	SWEP.CoD4ReflexAng = Vector(1.84, -0.12, 0)
	
	SWEP.EoTech553Pos = Vector(-2.1, 0, 0.36)
	SWEP.EoTech553Ang = Vector(0.35, 0.029, 0)
	
	SWEP.LeupoldPos = Vector(-2.06, 0, 0.319)
	SWEP.LeupoldAng = Vector(1.5, 0.26, 0)
	
	SWEP.MagnifierPos = Vector(-2.08, 0, 0.56)
	SWEP.MagnifierAng = Vector(-0.08, 0.11, 0)
	
	SWEP.IronsightPos = Vector(-2.091, 0, 0.36)
	SWEP.IronsightAng = Vector(0.3, 0.02, 0)
	
	SWEP.CoD4ACOGPos = Vector(-2.096, 0, 0.439)
	SWEP.CoD4ACOGAng = Vector(0.68, -0.12, 0) 
		
	SWEP.ELCANPos = Vector(-2.162, -1.2, 0.72)
	SWEP.ELCANAng = Vector(0.1, 0.05, 0)
	
	SWEP.FrontRearPos = Vector(-2.1, 1, 0.28)
	SWEP.FrontRearAng = Vector(-0.5, 0.38, 0)
	
	SWEP.FAS2AimpointPos = Vector(-2.08, 0, 0.68)
	SWEP.FAS2AimpointAng = Vector(-0.08, 0.05, 0)
	
	SWEP.AimpointPos = Vector(-7.441, -2.8, 0.079)
    SWEP.AimpointAng = Vector(1.799, 0, 0)
	
	SWEP.BackupReflexPos = Vector(-0.88, 0, 0.639)
	SWEP.BackupReflexAng = Vector(0, 0, 45)
	
	SWEP.EoTechPos = Vector(-2.161, 0, 0.239)
	SWEP.EoTechAng = Vector(1.68, 0.15, 0)
	
	SWEP.MicroT1Pos = Vector(-2.161, 0, 0.439)
    SWEP.MicroT1Ang = Vector(-0.101, 0.3, 0)
	
	SWEP.ACOGPos = Vector(-2.641, 0, 0.039)
	SWEP.ACOGAng = Vector(0.15, -0.3, 0)
	
	SWEP.SprintPos = Vector(0, 0, 0)
	SWEP.SprintAng = Vector(-16.885, 18.995, -21.81)
	
	SWEP.SwimPos = Vector(0, 0, 0)
	SWEP.SwimAng = Vector(-43.508, 16.569, -31.659)
	
	SWEP.SightWithRail = true
	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	
	SWEP.AlternativePos = Vector(0.2, 0, -1)
	SWEP.AlternativeAng = Vector(0, 0, 0)
	
	SWEP.BackupSights = {
	["md_elcan"] = {[1] = Vector(-2.161, 0, 0.159), [2] = Vector(-0.101, 0.05, 0)},
	["md_acog_fixed"] = {[1] = Vector(-2.59, 0, -0.7), [2] = Vector(-0.25, 0.03, 0)}
	}

	SWEP.ACOGAxisAlign = {right = 0, up = 0, forward = 0}
	SWEP.CSGOACOGAxisAlign = {right = 0, up = 0, forward = -40}
	SWEP.M203CameraRotation = {p = -90, y = 0, r = -90}
	SWEP.BaseArm = "Left_U_Arm"
	SWEP.BaseArmBoneOffset = Vector(-50, 0, 0)	
	
	SWEP.AttachmentModelsVM = {
	["kk_ins2_flashlight"] = { type = "Model", model = "models/weapons/upgrades/a_flashlight_band.mdl", bone = "body", rel = "", pos = Vector(14.8, -3.131, 0), angle = Angle(0, 0, 0), size = Vector(0.949, 0.949, 0.949), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_railcover_m27"] = { type = "Model", model = "models/hereticattachments/railcover.mdl", bone = "body", rel = "", pos = Vector(-5.5, -5.816, -2.07), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_tachandgrip_m27"] = { type = "Model", model = "models/hereticattachments/tachandguard.mdl", bone = "body", rel = "", pos = Vector(-4.85, -5.2, -2), angle = Angle(90, 0, -90), size = Vector(0.649, 0.649, 0.649), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_flashsup_m27"] = { type = "Model", model = "models/hereticattachments/flashhider.mdl", bone = "body", rel = "", pos = Vector(-19.4, -3.1, -0), angle = Angle(0, 0, 87.662), size = Vector(0.55, 0.55, 0.55), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_Pbsilencer_m27"] = { type = "Model", model = "models/cw2/attachments/pbs1.mdl", bone = "body", rel = "", pos = Vector(18, -3.1, -1.101), angle = Angle(0, -90, 0), size = Vector(0.86, 0.86, 0.86), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_Ospreyrif_m27"] = { type = "Model", model = "models/hereticattachments/ospreysil2.mdl", bone = "body", rel = "", pos = Vector(-13.601, -4.651, -3.9), angle = Angle(90, -90, 0), size = Vector(1.2, 1.2, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_bipod"] = { type = "Model", model = "models/wystan/attachments/bipod.mdl", bone = "body", rel = "", pos = Vector(11.3, -1.571, 0), angle = Angle(-90, 90, 0), size = Vector(0.699, 0.699, 0.699), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_AngGripm27"] = { type = "Model", model = "models/hereticattachments/angledforegrip.mdl", bone = "body", rel = "", pos = Vector(8.149, -1.56, 0.1), angle = Angle(0, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_m203"] = { type = "Model", model = "models/cw2/attachments/m203.mdl", bone = "body", rel = "", pos = Vector(-4.676, -4.321, -1.961), angle = Angle(0, 0, -90), size = Vector(0.8, 0.8, 0.8), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_foregrip"] = { type = "Model", model = "models/wystan/attachments/foregrip1.mdl", bone = "body", rel = "", pos = Vector(16.95, -0.06, -0.35), angle = Angle(90, 0, -90), size = Vector(0.649, 0.649, 0.649), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_anpeq15"] = { type = "Model", model = "models/cw2/attachments/anpeq15.mdl", bone = "body", rel = "", pos = Vector(10.6, -4.2, 0.059), angle = Angle(180, 0, -90), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_backup_reflex_rail"] = { type = "Model", model = "models/c_angled_rails.mdl", bone = "body", rel = "", pos = Vector(7, -3.701, 0), angle = Angle(180, 0, -90), size = Vector(1.2, 1.2, 1.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_backup_reflex"] = { type = "Model", model = "models/c_docter.mdl", bone = "body", rel = "", pos = Vector(8.199, -4.5, -0.52), angle = Angle(0, 0, -135), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_fas2_leupold"] = { type = "Model", model = "models/v_fas2_leupold.mdl", bone = "body", rel = "", pos = Vector(1.5, -5.37, 0), angle = Angle(0, 0, -90), size = Vector(1.6, 1.6, 1.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_fas2_leupold_mount"] = { type = "Model", model = "models/v_fas2_leupold_mounts.mdl", bone = "body", rel = "", pos = Vector(1.5, -5.37, 0), angle = Angle(0, 0, -90), size = Vector(1.6, 1.6, 1.6), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_magnifier_scope"] = { type = "Model", model = "models/c_magnifier_scope.mdl", bone = "body", rel = "", pos = Vector(5.849, -3.83, 0), angle = Angle(0, 0, -90), size = Vector(0.98, 0.98, 0.98), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_cod4_acog_v2"] = { type = "Model", model = "models/v_cod4_acog.mdl", bone = "body", rel = "", pos = Vector(0, -1.5, 0), angle = Angle(180, 0, -90), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_fas2_aimpoint"] = { type = "Model", model = "models/c_fas2_aimpoint_rigged.mdl", bone = "body", rel = "", pos = Vector(6.752, -3.461, 0), angle = Angle(0, 0, -90), size = Vector(1.149, 1.149, 1.149), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_fas2_eotech"] = { type = "Model", model = "models/c_fas2_eotech.mdl", bone = "body", rel = "", pos = Vector(6.752, -3.701, 0), angle = Angle(0, 0, -90), size = Vector(1.1, 1.1, 1.1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["md_cod4_reflex"] = { type = "Model", model = "models/v_cod4_reflex.mdl", bone = "body", rel = "", pos = Vector(-0.519, -1.3, -0), angle = Angle(180, 0, -90), size = Vector(0.899, 0.899, 0.899), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["kk_ins2_cstm_cmore"] = { type = "Model", model = "models/weapons/attachments/v_cw_kk_ins2_cstm_cmore.mdl", bone = "body", rel = "", pos = Vector(2.9, -4.301, 0), angle = Angle(-90, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	}
	
	SWEP.M203HoldPos = {
		["Dummy02"] = { scale = Vector(1, 1, 1), pos = Vector(2.036, 0, -2.779), angle = Angle(0, 0, 0) }
	}

	SWEP.ForeGripHoldPos = {
	["Dummy02"] = { scale = Vector(1, 1, 1), pos = Vector(0.555, 0, -0.301), angle = Angle(0, 0, 0) }
	}
		SWEP.ForegripOverridePos = {
			["md_railcoverm27"] = {
		["Left12"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-30, 0, 0) },
	["Left14"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-7.778, 0, 0) },
	["Left5"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-21.112, 0, 0) },
	["Left8"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-7.778, 0, 0) },
	["Left15"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(-7.778, 0, 0) },
	["Dummy02"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, -0.69), angle = Angle(0, 0, 0) },
	["Left1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(1.11, -3.333, 0) }
			},
			["md_tachandgrip"] = {
	["Left1"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(14.444, 3.332, 10) },
	["Dummy02"] = { scale = Vector(1, 1, 1), pos = Vector(0, -0.151, -0.371), angle = Angle(0, 0, 0) },
	["Left_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, -16.667) }
			},
		}
	SWEP.BoltBone = "ring"
	SWEP.BoltShootOffset = Vector(0, 0, 0)

	SWEP.LaserPosAdjust = Vector(-0.7, -5, 0.2)--{x = 1, y = 0, z = 0}
	SWEP.LaserAngAdjust = Angle(0, 180, 0) --{p = 2, y = 180, r = 0}
	

end

SWEP.MuzzleVelocity = 750

SWEP.SightBGs = {main = 1, none = 1}
SWEP.MagBGs = {main = 2, regular = 0, Pmag = 1, Dual = 2}
SWEP.StockBGs = {main = 3, regular = 0, Ass = 1, Heavy = 2}
SWEP.LuaViewmodelRecoil = false
SWEP.FullAimViewmodelRecoil = false
SWEP.LuaVMRecoilAxisMod = {vert = -0, hor = 1, roll = 1, forward = 1.1, pitch = 0.3}
SWEP.BoltBonePositionRecoverySpeed = 15

if CustomizableWeaponry_KK_HK416 then
	SWEP.Attachments = {
	[1] = {header = "Sight", offset = {-800, -600},  atts = {"md_cod4_reflex","md_fas2_eotech","md_fas2_aimpoint","md_cod4_acog_v2","md_fas2_leupold"}},
	[2] = {header = "Barrel", offset = {-800, -150}, atts = {"md_Ospreyrif_m27","md_Pbsilencer_m27","md_flashsup_m27","md_Heavybarrel"}},
	[3] = {header = "Handrail", offset = {-800, 350}, atts = {"md_bipod","md_tachandgrip_m27","md_railcover_m27"}},
	[4] = {header = "Secondary Sights", offset = {150, -600}, atts = {"md_anpeq15","md_backup_reflex","md_magnifier_scope"}},
	[5] = {header = "Magazine", offset = {1500, -600}, atts = {"md_dualmag_m27","md_magpulpmag_m27",}},
	[6] = {header = "Stocks", offset = {1500, -150}, atts = {"md_Assaultstock_m27","md_Heavystock_m27"}},
	
	
	["+reload"] = {header = "Ammo", offset = {1500, 350}, atts = {"am_magnum", "am_matchgrade"}}}
else
	SWEP.Attachments = {
	
	[1] = {header = "Nothing for you to see here.", offset = {-700, -720},  atts = {}},
	[2] = {header = "If you want attachments, go sub to KK's HK416", offset = {-700, -620}, atts = {}},}
	
end
	
		SWEP.AttachmentDependencies = {
	["md_magnifier_scope"] = {"md_cod4_reflex","md_fas2_eotech","md_fas2_aimpoint"}
}

	SWEP.AttachmentExclusions = {
	
		["md_backup_reflex"] = {"md_bipod"},
		["md_tachandgrip_m27"] = {"md_Heavystock_m27"},
		["md_Heavystock_m27"] = {"md_tachandgrip_m27"},
	}

SWEP.Animations = {fire = {"Shoot1","shoot2"},
	reload = "Reload_full",
	reload_empty = "reload",
	idle = "Idle",
	draw = "fold"}
	
SWEP.Sounds = {ready = {{time = 0.27, sound = "m27.Boltback"},
						{time = 0.45, sound = "m27.Boltforward"},
},
	fold = {{time = 0.45, sound = "m27.fold"},
},


	Reload_full = {{time = 0.4, sound = "m27.MagOut"},
	{time = 1.24, sound = "m27.MagIn"}},
	
	Reload_full_taped = {{time = 0.3, sound = "m27.MagOut"},
	{time = 1.11, sound = "m27.MagIn"}},
	
	reload = {{time = 0.4, sound = "m27.MagOut"},
	{time = 1.27, sound = "m27.MagIn"},
	{time = 1.88, sound = "m27.Boltback"},
	{time = 2.05, sound = "m27.Boltforward"}
	}
	
}



SWEP.SpeedDec = 35

SWEP.Slot = 2
SWEP.SlotPos = 0
SWEP.NormalHoldType = "ar2"
SWEP.RunHoldType = "passive"
SWEP.FireModes = {"auto", "3burst", "semi"}
SWEP.BurstCooldownMul = 1
SWEP.BurstRecoilMul = 0.8	
SWEP.BurstSpreadIncMul = 0.8
SWEP.Base = "cw_base"
SWEP.Category = "Hex's Cw2 SWAT"

SWEP.Author			= "HereTic"
SWEP.Contact		= ""
SWEP.Purpose		= "Multi purposes assault rifle"
SWEP.Instructions	= "Tap fire for maximum effectiveness"
SWEP.CustomizationMenuScale = 0.0095

SWEP.ViewModelFOV	= 65
SWEP.ViewModelFlip	= false
SWEP.ViewModel		= "models/weapons/v_her_m27IA.mdl"
SWEP.WorldModel		= "models/weapons/w_her_m27IA.mdl"

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.Primary.ClipSize		= 30
SWEP.Primary.DefaultClip	= 30
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "5.56x45MM"
SWEP.magType = "arMag"

SWEP.FireDelay = 60/750
SWEP.FireSound = "Weapon_m27.Single"
SWEP.FireSoundSuppressed = "Weapon_m27.Silenced2"
SWEP.Recoil = 0.68
SWEP.BipodRecoilModifier = 0.5
SWEP.SightWithRail = false

SWEP.HipSpread = 0.13
SWEP.AimSpread = 0.008
SWEP.HolsterTime = 0.4
SWEP.HolsterWait = 0
SWEP.PenMod = 2
SWEP.VelocitySensitivity = 2	
SWEP.MaxSpreadInc = 0.002
SWEP.SpreadPerShot = 0.0015
SWEP.SpreadCooldown = 0.1
SWEP.FadeCrosshairOnAim = true
SWEP.Shots = 1
SWEP.ViewbobEnabled  = true
SWEP.ReloadViewBobEnabled = true
SWEP.RVBPitchMod = 3
SWEP.RVBYawMod = 2
SWEP.RVBRollMod = 5
SWEP.Damage = 31
SWEP.AimBreathingEnabled = true
SWEP.AimBreathingIntensity = 0.8
SWEP.BreathRegenRate = 0.25
SWEP.BreathDrainRate = 0.09
SWEP.BreathRegenDelay = 0.5
SWEP.BreathDelay = 0.6
SWEP.BreathHoldVelocityMinimum = 30
SWEP.SwayIntensity = 1.5
SWEP.AimSwayIntensity = 1.6
SWEP.DeployTime = 0.85
SWEP.Drawspeed = 0.85
SWEP.ADSFireAnim = false
SWEP.BipodInstalled = false

SWEP.ReloadSpeed = 0.85
SWEP.ReloadTime = 1.7
SWEP.ReloadTime_Empty = 2.5
SWEP.ReloadHalt = 1.7
SWEP.ReloadHalt_Empty = 2.5
SWEP.SnapToIdlePostReload = true
SWEP.magType = "arMag"



 function SWEP:IndividualThink()
 	self.Animations.draw = "ready"

	if self.Animations.draw == "ready" then
		self.DeployTime = 0.85
	end
	
if self.dt.State == CW_AIMING then 
self.LuaVMRecoilAxisMod = {vert = -0, hor = 0.5, roll = 1, forward = 0.7, pitch = 0.3}
self.LuaViewmodelRecoil = true
self.FullAimViewmodelRecoil = true
else if self.dt.State == CW_IDLE then 

self.LuaViewmodelRecoil = true
self.FullAimViewmodelRecoil = true
self.LuaVMRecoilAxisMod = {vert = 0.6, hor = 1.5, roll =2.5, forward = 1, pitch = 1}

end
end
end



end