
if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Battery"
ATTACHMENT.ShortName = "BAT" 
ATTACHMENT.Description = { 
TFA.AttachmentColors["+"],"Recharges Ammo",
TFA.AttachmentColors["-"],"No Reloads",
}
ATTACHMENT.Icon = "entities/att_explosive_ammo.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.Damage = 5
ATTACHMENT.WeaponTable = {
["VElements"] = {
		
		["dc15"] = {["active"] = false},
		["batteryplaceholder"] = {["active"] = true},
		["int"] = {["active"] = true},
	},
	["WElements"] = {
		
		["dc15"] = {["active"] = true},
	},
["Primary"] = {
	["Ammo"] = "battery",
    },
	["CanJam"] = false,
	
}


if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end

