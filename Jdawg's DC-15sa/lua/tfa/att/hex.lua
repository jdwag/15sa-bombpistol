if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Hex launcher ammo"
ATTACHMENT.ShortName = "HEX"
ATTACHMENT.Icon = "entities/att_heavy_ammo.png"
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
		["Ammo"] = "grenade",
		["ClipSize"] = 1,
		["RPM"] = 200,
	},
}

function ATTACHMENT:Attach(wep)
	wep:Unload()
	wep:Reload( true )
end

function ATTACHMENT:Detach(wep)
	wep:Unload()
	wep:Reload( true )
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
