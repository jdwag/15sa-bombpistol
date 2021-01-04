
if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Extended mag"
ATTACHMENT.ShortName = "FATO" 
ATTACHMENT.Description = { 
TFA.AttachmentColors["+"],"32 shots a mag",
TFA.AttachmentColors["+"],"Faster rate of fire",
TFA.AttachmentColors["-"],"YOU BETTER NOT CRASH THE SERVER",
TFA.AttachmentColors["-"],"I SEE YOU",
}
ATTACHMENT.Icon = "entities/att_stun_ammo.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.Damage = 5
ATTACHMENT.WeaponTable = {
["VElements"] = {
		
		["dc15"] = {["active"] = false},
		["ina"] = {["active"] = true},
	},
	["WElements"] = {
		
		["dc15"] = {["active"] = true},
	},
["Primary"] = {
		["RPM"] = 450,
		["Automatic"] = true,
		["ClipSize"] = 32,


		["Damage"] = function( wep, val) return val * .5 end,

    },
	["CanJam"] = false,
}
function ATTACHMENT:Attach(wep)
	wep:Unload()
end

function ATTACHMENT:Detach(wep)
	wep:Unload()
	
end


if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end

