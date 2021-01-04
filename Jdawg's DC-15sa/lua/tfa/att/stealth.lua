--[[
addons/dc-17m/lua/tfa/att/storm.lua
--]]
if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Assassin Rounds"
ATTACHMENT.ShortName = "SR" --Abbreviation, 5 chars or less please
--ATTACHMENT.ID = "base" -- normally this is just your filename
ATTACHMENT.Description = { 

}
ATTACHMENT.Icon = "entities/att_ext_ammo.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.Damage = 5
ATTACHMENT.WeaponTable = {
["VElements"] = {
		["inp"] = {
			["active"] = true
		},
		["dc15sa"] = {
			["active"] = true
		}
	},
	["WElements"] = {
		["dc15sa"] = {
			["active"] = true
		},
	},
["Primary"] = {
	["Damage"] = 500,
	["RPM"] = 10,
	["ClipSize"] = 2,
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

