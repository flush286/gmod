local att = {}
att.name = "bg_glock17black"
att.displayName = "Black Matte"
att.displayNameShort = "Black"
att.isBG = true
 
att.statModifiers = {}
 
if CLIENT then
    att.displayIcon = surface.GetTextureID("atts/NeN/bg_glock17black")
    att.description = {[1] = {t = "A clean, rather recent black matte look for your gun.", c = CustomizableWeaponry.textColors.POSITIVE}}
end
 
function att:attachFunc()
    if SERVER then
        return
    end
 
    if self.CW_VM then
        self.CW_VM:SetSkin(1)
    end
    if self.WMEnt then
        self.WMEnt:SetSkin(1)
    end
end
 
function att:detachFunc()
    if SERVER then
        return
    end
 
    if self.CW_VM then
        self.CW_VM:SetSkin(0)
    end
    if self.WMEnt then
        self.WMEnt:SetSkin(0)
    end
end
 
CustomizableWeaponry:registerAttachment(att)