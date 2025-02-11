if not ATTACHMENT then
	ATTACHMENT = {}
end

ATTACHMENT.Name = "Sight"
ATTACHMENT.ShortName = "Aim" 
ATTACHMENT.Description = { 
TFA.AttachmentColors["+"],"Small zoom",
}
ATTACHMENT.Icon = "entities/att_scope.png" --Revers to label, please give it an icon though!  This should be the path to a png, like "entities/tfa_ammo_match.png"
ATTACHMENT.Damage = 5
ATTACHMENT.WeaponTable = {
["RTDrawEnabled"] = true,

	["RTScopeFOV"] = 90 / 6 / 2, -- Default FOV / Scope Zoom / screenscale
	-- ["RTScopeAttachment"] = -1,

	["RTReticleMaterial"] = Material("#sw/visor/sw_ret_redux_blue"),
	-- ["RTReticleColor"] = color_white,
	-- ["RTReticleScale"] = 1,

	-- ["RTShadowMaterial"] = Material("vgui/scope_shadowmask_test"),
	-- ["RTShadowColor"] = color_white,
	-- ["RTShadowScale"] = 2,
	
["VElements"] = {
		
		["dc15"] = {["active"] = false},
		["sight"] = {["active"] = true},
		["scope"] = {["active"] = true},
	},
	["WElements"] = {
		
		["dc15"] = {["active"] = true},
		["sight"] = {["active"] = true},
	},
["Primary"] = {
	
    },
	["IronSightsPos"] = Vector(-5.55, -6, 3.25),
	["CanJam"] = false,
	["Scoped_3D"] = true,
	["RTOpaque"] = true,
	["RTMaterialOverride"] = -1,
	["RTScopeAttachment"] = -1,
	["ScopeReticule_Scale"] = {1,1},
}
local cd = {}

local fallbackReticle = Material("scope/gdcw_scopesightonly")
local fallbackShadow = Material("vgui/scope_shadowmask_test")

ATTACHMENT.Reticle = "#sw/visor/sw_ret_redux_blue"

local flipcv = GetConVar("cl_tfa_viewmodel_flip")

function ATTACHMENT:RTCode(wep, rt, scrw, scrh)
	if not wep.OwnerIsValid or not wep:VMIV() then return end

	local rtw, rth = rt:Width(), rt:Height()

	-- clearing view
	render.OverrideAlphaWriteEnable(true, true)
	surface.SetDrawColor(color_white)
	surface.DrawRect(-rtw, -rth, rtw * 2, rth * 2)

	local vm = wep.OwnerViewModel

	local ang = vm:GetAngles()
	ang:RotateAroundAxis(ang:Forward(), -wep:GetStat("IronSightsAng").z)

	local scopeAtt = wep:GetStat("RTScopeAttachment", -1)

	if scopeAtt > 0 then
		local AngPos = vm:GetAttachment(scopeAtt)

		if AngPos then
			ang = AngPos.Ang

			if flipcv:GetBool() then
				ang.y = -ang.y
			end
		end
	end

	cd.angles = ang
	cd.origin = wep:GetOwner():GetShootPos()
	cd.x = 0
	cd.y = 0
	cd.w = rtw
	cd.h = rth
	cd.fov = wep:GetStat("RTScopeFOV", 90 / wep:GetStat("ScopeZoom", 1) / 2)
	cd.drawviewmodel = false
	cd.drawhud = false

	-- main RT render view
	render.Clear(0, 0, 0, 255, true, true)
	render.SetScissorRect(0, 0, rtw, rth, true)

	if wep.IronSightsProgress > 0.005 then
		render.RenderView(cd)
	end

	render.SetScissorRect(0, 0, rtw, rth, false)
	render.OverrideAlphaWriteEnable(false, true)

	cam.Start2D()

	-- ADS transition darkening
	draw.NoTexture()
	surface.SetDrawColor(ColorAlpha(color_black, 255 * (1 - wep.IronSightsProgress)))
	surface.DrawRect(0, 0, rtw, rth)

	surface.SetMaterial(wep:GetStat("RTReticleMaterial", fallbackReticle))
	surface.SetDrawColor(wep:GetStat("RTReticleColor", color_white))
	local retScale = wep:GetStat("RTReticleScale", 1)
	surface.DrawTexturedRect(rtw / 2 - rtw * retScale / 2, rth / 2 - rth * retScale / 2, rtw * retScale, rth * retScale)

	surface.SetMaterial(wep:GetStat("RTShadowMaterial", fallbackShadow))
	surface.SetDrawColor(wep:GetStat("RTShadowColor", color_white))
	local shadScale = wep:GetStat("RTShadowScale", 2)
	surface.DrawTexturedRect(rtw / 2 - rtw * shadScale / 2, rth / 2 - rth * shadScale / 2, rtw * shadScale, rth * shadScale)

	cam.End2D()
end

if not TFA_ATTACHMENT_ISUPDATING then
	TFAUpdateAttachments()
end
