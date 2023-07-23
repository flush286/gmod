MsgC(Color(200,50,50), "Open", Color(50, 150, 200), "ED", Color(50, 150, 200), "by", Color(50, 150, 200), "Flush")

if SERVER then 
    --sending neccesary lua files to client.
    --AddCSLuaFile("opened/client/cl_main.lua")

elseif CLIENT then
    --Load neccesary lua files for client.
    --include("opened/client/cl_main.lua")

end