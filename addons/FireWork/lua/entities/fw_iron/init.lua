AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()

    self:SetModel("models/props_junk/garbage_bag001a.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:SetHealth(50)
    self:SetMaxHealth(50)
    self.IsExplodable = false
    local phys = self:GetPhysicsObject()

    if phys:IsValid() then

        phys:Wake()

    end
end



function ENT:OnTakeDamage(dmg)
    self:SetHealth(self:Health() - dmg:GetDamage())
    if self:Health() <= 30 then
            self:Remove()

    end
end



