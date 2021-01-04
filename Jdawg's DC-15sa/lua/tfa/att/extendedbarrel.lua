if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Extended Barrel"
ATTACHMENT.ShortName = "EB" 

ATTACHMENT.Description = { 
TFA.AttachmentColors["+"],"2x damage",
TFA.AttachmentColors["+"],"Better iron sight accuracy",
TFA.AttachmentColors["-"],"Slower",
}
ATTACHMENT.Icon = "entities/exbarel.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.Damage = 5
ATTACHMENT.WeaponTable = {
["VElements"] = {
		["extendedbarrel"] = {
			["active"] = true
		},
		["dc15sa"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["ds15sa"] = {
			["active"] = true
		},
		["extendedbarrel"] = {
			["active"] = true
		}
	},
["Primary"] = {
	["IronAccuracy "] = function( wep, val ) return val * .5 end,
		["Range"] = 78732,
		["Damage"] = function( wep, val) return val * 2 end,
		["NumShots"] = 1,
		["RPM"] = function( wep, val) return val * .5 end,
		["Automatic"] = false,
		["RPM_Semi"] = function( wep, val) return val * .5 end,
		["AmmoConsumption"] = 1,
    },
	["IronSightTime"] = function( wep, val ) return val * 2.20 end,
	["CanJam"] = false,
	["MoveSpeed"] = .9
}




if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end

