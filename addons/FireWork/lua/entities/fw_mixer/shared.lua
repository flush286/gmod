ENT.Type = "anim"
ENT.Base = "base_gmodentity"

ENT.PrintName = "fw_mixer"
ENT.Spawnable = true
ENT.Category = "FireWork Entities"

function ENT:SetupDataTables()

    self:NetworkVar("Int", 0, "_shv_fw_isexplodable")

    self:NetworkVar("Int", 1, "_shv_fw_gunpowder")
    self:NetworkVar("Int", 2, "_shv_fw_iron")
    self:NetworkVar("Int", 3, "_shv_fw_mixing")

end