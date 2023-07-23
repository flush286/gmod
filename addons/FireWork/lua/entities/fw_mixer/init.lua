AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")


function ENT:Initialize()

    self:SetModel("models/props_junk/gascan001a.mdl")
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

function ENT:StartTouch(ent)

    if ent:GetClass() == "fw_gunpowder" then
        if self:Get_shv_fw_gunpowder() == 0 then
            self:Set_shv_fw_gunpowder(1)
            ent:Remove()
        end
    elseif ent:GetClass() == "fw_iron" then
        if self:Get_shv_fw_iron() == 0 then
            self:Set_shv_fw_iron(1)
            ent:Remove()
        end 
    end

    if phys:IsValid() then
        phys:EnableGravity(false)
        phys:EnableMotion(false)
    end
end

function ENT:Think()
    local phys = self:GetPhysicsObject()
    if self:Get_shv_fw_gunpowder() == 1 && self:Get_shv_fw_iron() == 1 then
        if phys:IsValid() then
            local speed = phys:GetVelocity():Length()
            if speed > 500 then -- ajustez la valeur de la vitesse selon vos besoins
                if self:Get_shv_fw_mixing() <= 99 then
                    self:Set_shv_fw_mixing(self:Get_shv_fw_mixing() + math.random(1, 10)) -- valeur aléatoire entre 1 et 10
                    self:EmitSound("media/sound/se_fw_mixer_mixing.wav", 75, randomValue) -- jouer un son avec une intensité aléatoire
                    -- ajoutez ici votre logique pour traiter l'entité qui bouge beaucoup
                    print(self:Get_shv_fw_mixing())
                else
                    print("Ready!")
                end
            end
        end
    self:NextThink(CurTime() + 1) -- définir la prochaine heure de la pensée
    end
end


local lastUsedTime = 0
local cooldownTime = 5

function ENT:Use(activator, caller, useType, value)
    if CurTime() - lastUsedTime >= cooldownTime then

        if activator:IsPlayer() then
            activator:ChatPrint("Nombre d'entités fw_gunpowder touchées : " .. self:Get_shv_fw_gunpowder())
            activator:ChatPrint("Nombre d'entités fw_iron touchées : " .. self:Get_shv_fw_iron())
            activator:ChatPrint("Pourcentage mixer : " .. self:Get_shv_fw_mixing())
        end
        lastUsedTime = CurTime()
    end
end

function ENT:OnTakeDamage(dmg)
    self:SetHealth(self:Health() - dmg:GetDamage())
    if self:Health() <= 30 then
        if self:Get_shv_fw_gunpowder() == 1 then
            self:Explode()
        elseif self:Health() <= 0 then
            self:Remove()
        end

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

