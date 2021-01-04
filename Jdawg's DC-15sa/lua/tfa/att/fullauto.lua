
if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Low Power Rounds"
ATTACHMENT.ShortName = "FATO" 
ATTACHMENT.Description = { 
TFA.AttachmentColors["+"],"32 shots a mag",
TFA.AttachmentColors["+"],"Faster rate of fire",
TFA.AttachmentColors["-"],"Much more kick",
TFA.AttachmentColors["-"],".02K range",
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
		["Range"] = 1000,
		["KickUp"] = .2,
		["KickDown"] = .2,
		["KickHorizontal"] = .08,
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

