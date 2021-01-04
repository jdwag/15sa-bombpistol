
if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Leg destroyer"
ATTACHMENT.ShortName = "DED" 
ATTACHMENT.Description = { 
TFA.AttachmentColors["+"],"no more knees",
TFA.AttachmentColors["-"],"no more knees",
}
ATTACHMENT.Icon = "entities/att_explosive_ammo.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.Damage = 5
ATTACHMENT.WeaponTable = {
["VElements"] = {
		

	},
	["WElements"] = {
	},
["Primary"] = {
	
    },
	["CanJam"] = false,
	["DamageType"] = DMG_FALL,
}


if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end

