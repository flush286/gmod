include("shared.lua")


function ENT:Draw()
    self:DrawModel()

    local ang = self:GetAngles()
    local pos = self:GetPos()

    ang:RotateAroundAxis(self:GetAngles():Right(),90)
    ang:RotateAroundAxis(self:GetAngles():Forward(),90)

    cam.Start3D2D(self:GetPos(), ang, 0.1)

        draw.RoundedBox(0,0,0,100,100,Color(120,255,120))
        draw.SimpleText("Tube Vide", "DermaDefault", 50,50,Color(120,120,255),1,1)

    cam.End3D2D()
end