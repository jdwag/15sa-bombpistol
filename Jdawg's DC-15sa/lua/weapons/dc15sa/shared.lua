SWEP.Gun							= ("dc15sa")
if (GetConVar(SWEP.Gun.."_allowed")) != nil then
	if not (GetConVar(SWEP.Gun.."_allowed"):GetBool()) then SWEP.Base = "tfa_blacklisted" SWEP.PrintName = SWEP.Gun return end
end
SWEP.Base							= "tfa_gun_base"
SWEP.Category						= "Star Wars | Boss"
SWEP.Manufacturer 					= "Republic Factory"
SWEP.Author							= "Jdawg"
SWEP.Contact						= ""
SWEP.Spawnable						= true
SWEP.AdminSpawnable					= true
SWEP.DrawCrosshair					= true
SWEP.DrawCrosshairIS 				= false
SWEP.PrintName						= "DC-15sa"
SWEP.Type							= "Republic Blaster Pistol"
SWEP.DrawAmmo						= true
SWEP.data 							= {}
SWEP.data.ironsights				= 1
SWEP.Secondary.IronFOV				= 75
SWEP.Slot							= 1
SWEP.SlotPos						= 100

SWEP.FiresUnderwater 				= true

SWEP.IronInSound 					= nil
SWEP.IronOutSound 					= nil
SWEP.CanBeSilenced					= false
SWEP.Silenced 						= false
SWEP.DoMuzzleFlash 					= false
SWEP.SelectiveFire					= true
SWEP.DisableBurstFire				= false
SWEP.OnlyBurstFire					= false
SWEP.DefaultFireMode 				= "Semi"
SWEP.FireModeName 					= nil
SWEP.DisableChambering 				= true

SWEP.Primary.ClipSize				= 8
SWEP.Primary.DefaultClip			= 0
SWEP.Primary.RPM					= 200
SWEP.Primary.RPM_Burst				= 100
SWEP.Primary.Ammo					= "ar2"
SWEP.Primary.AmmoConsumption 		= 1
SWEP.Primary.Range 					= 52488
SWEP.Primary.RangeFalloff 			= -1
SWEP.Primary.NumShots				= 1
SWEP.Primary.Automatic				= false
SWEP.Primary.RPM_Semi				= nil
SWEP.Primary.BurstDelay				= 0.2
SWEP.Primary.Sound				    = Sound ("weapons/dc15sa/DC15SA_fire.ogg");
SWEP.Primary.ReloadSound 			= Sound ("w/pistols.wav");
SWEP.Primary.PenetrationMultiplier 	= 0
SWEP.Primary.Damage					= 50
SWEP.Primary.HullSize 				= 0
SWEP.DamageType 					= nil

SWEP.DoMuzzleFlash 					= false

SWEP.FireModes = {
	"Semi",
}

SWEP.IronRecoilMultiplier			= 0.44
SWEP.CrouchRecoilMultiplier			= 0.33
SWEP.JumpRecoilMultiplier			= 1.3
SWEP.WallRecoilMultiplier			= 1.1
SWEP.ChangeStateRecoilMultiplier	= 1.18
SWEP.CrouchAccuracyMultiplier		= 0.7
SWEP.ChangeStateAccuracyMultiplier	= 1
SWEP.JumpAccuracyMultiplier			= 5
SWEP.WalkAccuracyMultiplier			= 1.18
SWEP.NearWallTime 					= 0.25
SWEP.ToCrouchTime 					= 0.1
SWEP.WeaponLength 					= 35
SWEP.SprintFOVOffset 				= 12
SWEP.ProjectileVelocity 			= 9

SWEP.ProjectileEntity 				= nil
SWEP.ProjectileModel 				= nil

SWEP.ViewModel						= "models/bf2017/c_scoutblaster.mdl"
SWEP.WorldModel						= "models/bf2017/w_scoutblaster.mdl"
SWEP.ViewModelFOV					= 75
SWEP.ViewModelFlip					= false
SWEP.MaterialTable 					= nil
SWEP.UseHands 						= true
SWEP.HoldType 						= "pistol"

SWEP.ShowWorldModel = false

SWEP.BlowbackEnabled 				= true
SWEP.BlowbackVector 				= Vector(0,-2.5,-0.05)
SWEP.BlowbackCurrentRoot			= 0
SWEP.BlowbackCurrent 				= 0
SWEP.BlowbackBoneMods 				= nil
SWEP.Blowback_Only_Iron 			= true
SWEP.Blowback_PistolMode 			= false
SWEP.Blowback_Shell_Enabled 		= false
SWEP.Blowback_Shell_Effect 			= "None"

SWEP.Tracer							= 0
SWEP.TracerName 					= "rw_sw_laser_blue"
SWEP.TracerCount 					= 1
SWEP.TracerLua 						= false
SWEP.TracerDelay					= 0.01
SWEP.ImpactEffect 					= nil
SWEP.ImpactDecal 					= "FadingScorch"

SWEP.VMPos = Vector(1.5, -7, -2)
SWEP.VMAng = Vector(0,0,0)

SWEP.IronSightTime 					= 0.2
SWEP.Primary.KickUp					= 0.1
SWEP.Primary.KickDown				= 0.1
SWEP.Primary.KickHorizontal			= 0.05
SWEP.Primary.StaticRecoilFactor 	= 0.5
SWEP.Primary.Spread					= 0.01
SWEP.Primary.IronAccuracy 			= 0.001
SWEP.Primary.SpreadMultiplierMax 	= 2
SWEP.Primary.SpreadIncrement 		= 0.3
SWEP.Primary.SpreadRecovery 		= 0.98
SWEP.DisableChambering 				= true
SWEP.MoveSpeed 						= 1
SWEP.IronSightsMoveSpeed 			= 0.8

SWEP.IronSightsPos = Vector(-5.55, -6, 3.5)
SWEP.IronSightsAng = Vector(0, 0, 0)

SWEP.RunSightsPos = Vector(5, -6.5, 2)
SWEP.RunSightsAng = Vector(-15, 38, 0)

SWEP.InspectPos = Vector(8, -4, -2)
SWEP.InspectAng = Vector(12, 38, 0)

SWEP.ViewModelBoneMods = {
	["v_scoutblaster_reference001"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, -0.3, 0), angle = Angle(0, 0, 0) }
}

SWEP.VElements = {
	["dc15sa"] = { type = "Model", model = "models/rcremastered/w_dc15pistol.mdl", bone = "v_scoutblaster_reference001", rel = "", pos = Vector(-.2, -2.5, 02.1), angle = Angle(0, 180, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1} },
	["extendedbarrel"] = { type = "Model", model = "models/suppy/sabarrel.mdl", bone = "v_scoutblaster_reference001", rel = "", pos = Vector(-.2, -2.5, 02.1), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1}, active = false },
	["suppressor"] = { type = "Model", model = "models/suppy/sasuppressor.mdl", bone = "v_scoutblaster_reference001", rel = "", pos = Vector(-.2, -12, 2.1), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1}, active = false },
	["int"] = { type = "Model", model = "models/hunter/plates/plate.mdl", bone = "v_scoutblaster_reference001", rel = "", pos = Vector(-.96, -1.3, 1.65), angle = Angle(0, 0, 0), size = Vector(.1, .1, .15), color = Color(0, 255, 0, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {}, active = false },
	["ina"] = { type = "Model", model = "models/hunter/plates/plate.mdl", bone = "v_scoutblaster_reference001", rel = "", pos = Vector(-.96, -1.3, 1.65), angle = Angle(0, 0, 0), size = Vector(.1, .1, .15), color = Color(0, 0, 255, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {}, active = false },
	["inp"] = { type = "Model", model = "models/hunter/plates/plate.mdl", bone = "v_scoutblaster_reference001", rel = "", pos = Vector(-.96, -1.3, 1.65), angle = Angle(0, 0, 0), size = Vector(.1, .1, .15), color = Color(50, 50, 50, 255), surpresslightning = true, material = "models/debug/debugwhite", skin = 0, bodygroup = {}, active = false },
	["scope"] = { type = "Model", model = "models/rtcircle.mdl", bone = "v_scoutblaster_reference001", rel = "", pos = Vector(-.199, 1, 3.942), angle = Angle(0, -90, 0), size = Vector(.32, .32, .32), color = Color(255, 255, 255, 255), surpresslightning = false, material = "!tfa_rtmaterial", skin = 0, bodygroup = {}, active = false },
	["sight"] = { type = "Model", model = "models/wystan/attachments_tfa/aimpoint.mdl", bone = "v_scoutblaster_reference001", rel = "", pos = Vector(-.765, -1, 2.8), angle = Angle(0, 90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {}, active = false },
	["laser"] = { type = "Model", model = "models/sw_battlefront/props/flashlight/flashlight.mdl", bone = "v_scoutblaster_reference001", rel = "", pos = Vector(-.2, -8.5, 0), angle = Angle(0, 90, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1}, active = false },
	["laser_beam"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "v_scoutblaster_reference001", rel = "", pos = Vector(-.2, -11, 0), angle = Angle(0, 90, 90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1}, active = false },
	["launcher"] = { type = "Model", model = "models/suppy/launcher.mdl", bone = "v_scoutblaster_reference001", rel = "", pos = Vector(-.2, -2.5, 2.1), angle = Angle(0, -90, 0), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1}, active = false },
}




SWEP.WElements = {
	["dc15sa"] = { type = "Model", model = "models/rcremastered/w_dc15pistol.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5, 1, -3.25), angle = Angle(0, -90, 175), size = Vector(0.9, 0.9, 0.9), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["extendedbarrel"] = { type = "Model", model = "models/suppy/sabarrel.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.25, 1, -3.25), angle = Angle(6, 180, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1}, active = false },
	["suppressor"] = { type = "Model", model = "models/suppy/sasuppressor.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(14.25, 1, -4.45), angle = Angle(6, 180, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1}, active = false },
	["sight"] = { type = "Model", model = "models/wystan/attachments_tfa/aimpoint.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.5, 1.5, -3.8), angle = Angle(-7, 0, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1}, active = false },
	["laser"] = { type = "Model", model = "models/sw_battlefront/props/flashlight/flashlight.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(10, 1.2, -1.5), angle = Angle(-7, 0, -90), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1}, active = false },
	["laser_beam"] = { type = "Model", model = "models/tfa/lbeam.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(10, 1.2, -1.5), angle = Angle(-7, 0, 180), size = Vector(1, 1, 1), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {[1] = 1}, active = false },
}

SWEP.Attachments = {
	[1] = { 
	header = "Sights",
	atts = { "sight"},
	},
	[2] = { 
	header = "Barrels",
	atts = { "extendedbarrel", "suppressor"},
	},
	[3] = { 
	header = "Ammo",
	atts = { "battery", "fullauto", "stealth", "flare", "smoke", "hex"},
	},
	[4] = { 
	header = "underBarrels",
	atts = { "flashlight", "launcher"},
	},
}--22
local MaxTimer = 55
local CurrentTimer = 0

SWEP.Animations = { --Override this after SWEP:Initialize, for example, in attachments
	["reload"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or acteeeeee
		["value"] = ACT_VM_RELOAD_EMPTY,
		["enabled"] = true
	},
	["reload_empty"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_RELOAD_EMPTY
	},
	["reload_silenced"] = {
		["type"] = TFA.Enum.ANIMATION_ACT, --Sequence or act
		["value"] = ACT_VM_RELOAD_EMPTY,
		["enabled"] = true
	},
}




SWEP.ThirdPersonReloadDisable		=false
SWEP.Primary.DamageType 			= DMG_BULLET
SWEP.DamageType 					= DMG_BULLET
SWEP.RTScopeAttachment				= -1
SWEP.Scoped_3D 						= false
SWEP.ScopeReticule 					= "scope/gdcw_elcanreticle" 
SWEP.Secondary.ScopeZoom 			= 1
SWEP.ScopeReticule_Scale 			= {1.1,1.1}
if surface then
	SWEP.Secondary.ScopeTable = nil --[[
		{
			scopetex = surface.GetTextureID("scope/gdcw_closedsight"),
			reticletex = surface.GetTextureID("scope/gdcw_acogchevron"),
			dottex = surface.GetTextureID("scope/gdcw_acogcross")
		}
	]]--
end
DEFINE_BASECLASS( SWEP.Base )

function SWEP:Think()
	
	if (self.Weapon:Clip1() < self.Primary.ClipSize) and SERVER and self:IsAttached("battery") then
		if (CurrentTimer <= 0) then 
			CurrentTimer = MaxTimer
			self.Weapon:SetClip1( self.Weapon:Clip1() + 1 )
		else
			CurrentTimer = CurrentTimer-1
		end
	
	end
	

	
end

function SWEP:ShootBullet(...)
	if self:IsAttached("flare") or self:IsAttached("smoke") or self:IsAttached("hex") and IsFirstTimePredicted() then
		if self:IsAttached("flare") then ew = "obj_vj_flareround" lnc = 5000 print("flare") end
		if self:IsAttached("smoke") then ew = "zeus_smokegrenade" lnc = 1000 print("smoke") end
		if self:IsAttached("hex") then ew = "hexshield_grenade" lnc = 2000 print("hex") end
			if SERVER then
				timer.Simple(0, function()
					local ent = ents.Create(ew)
					local dir
					local ang = self.Owner:EyeAngles()
					rec, aimcone = self:CalculateConeRecoil()
					dir = ang:Forward()
					ang:RotateAroundAxis(ang:Right(), - aimcone / 2)
				if !self:GetIronSights( issighting ) then
					ent:SetPos(self.Owner:GetShootPos() + ang:Forward()*10 + ang:Right()*13 + ang:Up()*-10)
				end
				if self:GetIronSights( issighting ) then
					ent:SetPos(self.Owner:GetShootPos() + ang:Forward()*25 + ang:Right() + ang:Up()*-25)
				end
				ent:SetOwner(self.Owner)
				ent:Spawn()
				ent:SetVelocity(dir * lnc)
				local phys = ent:GetPhysicsObject()
				if IsValid(phys) then
					phys:SetVelocity(dir * lnc)
					phys:EnableGravity( true )
					phys:EnableDrag(false)
				end
			end)
		end
		return
	end
	return BaseClass.ShootBullet(self,...)
end