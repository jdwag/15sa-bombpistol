if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "launcher attachment"
ATTACHMENT.ShortName = "LAU"
ATTACHMENT.Icon = "entities/launc.png"
ATTACHMENT.Description = { 

}

ATTACHMENT.WeaponTable = {
	["VElements"] = {
	["launcher"] = {
			["active"] = true
		},
	},
	["WElements"] = {

	},

	["Primary"] = {
		
		["KickUp"] = function(wep,stat) return stat * 1.5 end,
		["KickDown"] = function(wep,stat) return stat * 1.5 end,

	},
}

function ATTACHMENT:Attach(wep)

end

function ATTACHMENT:Detach(wep)

end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
