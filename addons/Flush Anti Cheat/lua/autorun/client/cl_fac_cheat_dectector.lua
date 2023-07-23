print("client cheat detector loaded.")

local function detectAimbot(ply)
    local prevAngle = ply:GetAngles()
    local prevDiff = 0
    local suspiciousDiff = 0
    local suspiciousCount = 0
  
    timer.Create("AimbotDetector_" .. ply:SteamID(), 0.1, 0, function()
      print("tchet")
        local curAngle = ply:GetAngles()
        local curDiff = math.abs(math.AngleDifference(prevAngle.y, curAngle.y))
        
        if curDiff > 10 then
            suspiciousDiff = suspiciousDiff + curDiff
            suspiciousCount = suspiciousCount + 1
            
            if suspiciousCount >= 3 and suspiciousDiff >= 30 then
                print(ply:GetName() .. " is using an aimbot!")
                -- Do something to handle the detected aimbot, such as banning the player or logging the incident.
            end
        else
            suspiciousDiff = 0
            suspiciousCount = 0
        end
        
        prevAngle = curAngle
    end)
  end
  
  
  hook.Add("PlayerSpawn", "AimbotDetector_PlayerSpawn", function(ply)
    detectAimbot(ply)
  end)
