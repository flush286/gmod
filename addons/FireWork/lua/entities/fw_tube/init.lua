AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("constraint.lua")

include("shared.lua")
include("constraint.lua")



function ENT:Initialize()


    self:SetModel("models/props_junk/propane_tank001a.mdl")
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetMoveType(MOVETYPE_VPHYSICS)
    self:SetSolid(SOLID_VPHYSICS)
    self:SetHealth(50)
    self:SetMaxHealth(50)
    local phys = self:GetPhysicsObject()

    if phys:IsValid() then
        phys:Wake()
    end
end


function ENT:OnTakeDamage(dmg)
    self:SetHealth(self:Health() - dmg:GetDamage())
    if self:Health() <= 0 then
        self:Remove()
    end

end

function ENT:Explode()
    -- Ajoutez ici votre logique d'explosion
    -- Par exemple, vous pouvez créer une entité d'explosion et la faire exploser
    self:EmitSound("explosion.wav", 100, 100)
    local explosion = ents.Create("env_explosion")
    explosion:SetPos(self:GetPos())
    explosion:SetKeyValue("iMagnitude", "100")
    explosion:Spawn()
    explosion:Fire("Explode", "", 0)    
    self:Remove()
end

function ENT:StartTouch(ent)
    local phys = self:GetPhysicsObject()

    if ent:GetClass(    ) == "fw_mixer" then
        local lc_mixing = ent:Get_shv_fw_mixing()
        print(lc_mixing)
    
        local phys1 = self:GetPhysicsObject()
        local phys2 = ent:GetPhysicsObject()
        if phys1:IsValid() and phys2:IsValid() then
            local constraint = constraint.Weld(phys1, phys2, 0, 0, 0, true)
            constraint:SetKeyValue("FrictionScale", "0") -- optionnel : réduit le frottement entre les entités soudées
        end
    end
end
