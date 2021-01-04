
if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "suppressor"
ATTACHMENT.ShortName = "Sp" --Abbreviation, 5 chars or less please
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { 

}
ATTACHMENT.Icon = "entities/suppressor.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.Damage = 5
ATTACHMENT.WeaponTable = {
["VElements"] = {
		["suppressor"] = {
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
		["suppressor"] = {
			["active"] = true
		}
	},
["Primary"] = {
		["IronAccuracy "] = function( wep, val ) return val * .5 end,
		
		["Sound"] = Sound ("weapons/bf3/dc15sa_quiet.ogg")
    },
	["IronSightTime"] = function( wep, val ) return val * 1.60 end,
	["CanJam"] = false,
}




if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end

