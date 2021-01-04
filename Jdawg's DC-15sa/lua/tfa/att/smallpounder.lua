if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "100LB"
ATTACHMENT.ShortName = "FLA"
ATTACHMENT.Icon = "entities/att_stum_ammo.png"
ATTACHMENT.Description = { 

}

ATTACHMENT.WeaponTable = {
	["VElements"] = {

	},
	["WElements"] = {

	},

	["Primary"] = {
		["Sound"] = "w/dc17mrocket.wav",
		["KickUp"] = function(wep,stat) return stat * 4 end,
		["KickDown"] = function(wep,stat) return stat * 4 end,
		["Damage"] = 500,

		["RPM"] = 200,
	},
}

function ATTACHMENT:Attach(wep)

end

function ATTACHMENT:Detach(wep)

end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
