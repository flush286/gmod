--AddCSLuaFile("imgui.lua")

--local imgui = include("imgui.lua")
include("shared.lua")


function ENT:Draw()

    self:DrawModel()


    local ang = self:GetAngles()
    local pos = self:GetPos()

    local r = ang:RotateAroundAxis(self:GetAngles():Right(),0)
    local f = ang:RotateAroundAxis(self:GetAngles():Forward(),0)

    cam.Start3D2D(self:GetPos() + self:GetAngles():Forward() * -8 + self:GetAngles():Right() * 20, ang, 0.1)

        draw.RoundedBox(0,0,-100,100, 100,Color(120,255,120))
        draw.SimpleText("Poudre à canon", "DermaDefault", 50,-50,Color(120,120,255),1,1)
        

    cam.End3D2D()
end