local att = {}
att.name = "bg_tritiumG17"
att.displayName = "Tritium sights"
att.displayNameShort = "Tritium"
att.isBG = true
att.colorType = CustomizableWeaponry.colorableParts.COLOR_TYPE_SIGHT
 
if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/NeN/bg_tritium")
    att.description = {[1] = {t = "Adds tritium sights to your gun.", c = CustomizableWeaponry.textColors.POSITIVE}}
	
	att.reticle = "atts/NeN/icontrit"
	att._reticleSize = 1
	
	function att:elementRender()
		local rc = self:getSightColor(att.name)
		local vec = Vector((rc.r / 255)*(rc.r / 255), (rc.g / 255)*(rc.g / 255), (rc.b / 255)*(rc.b / 255)) // saturated
		local mat = Material("models/weapons/v_models/[CW20-NeN] Glock 17/tritium")
		
		mat:SetVector("$selfillumtint", vec)
	end
end
 
function att:attachFunc()
	self:setBodygroup(self.TritiumBGs.main, self.TritiumBGs.on)
end

function att:detachFunc()
	self:setBodygroup(self.TritiumBGs.main, self.TritiumBGs.off)
end
 
CustomizableWeaponry:registerAttachment(att)