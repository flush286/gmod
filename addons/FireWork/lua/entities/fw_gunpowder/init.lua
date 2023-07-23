AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")

function ENT:Initialize()

    self:SetModel("models/props_junk/cardboard_box004a.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:SetHealth(1)
    self:SetMaxHealth(1)
    local phys = self:GetPhysicsObject()

    if phys:IsValid() then
        phys:Wake()
    end
end



function ENT:OnTakeDamage(dmginfo)
    self:SetHealth(self:Health() - dmginfo:GetDamage())
    if self:Health() <= 0 then
        self:Explode()
    end
end

function ENT:Explode()
    local explosion = ents.Create("env_explosion")
    if IsValid(explosion) then
        explosion:SetPos(self:GetPos())
    end
    explosion:SetKeyValue("iMagnitude", "100")
    explosion:Spawn()
    explosion:Fire("Explode", "", 0)
    self:EmitSound("explosion.wav", 100, 100)
    self:Remove()
end

