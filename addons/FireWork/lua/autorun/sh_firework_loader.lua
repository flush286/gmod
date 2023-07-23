MsgC(Color(200,50,50), "[FireWork]", Color(150, 150, 150), "by", Color(50, 150, 200), "Flush")

if SERVER then 
    --sending neccesary lua files to client.
    --AddCSLuaFile("firework/client/cl_function.lua")

elseif CLIENT then
    --Load neccesary lua files for client.
    --include("firework/client/cl_function.lua")

end