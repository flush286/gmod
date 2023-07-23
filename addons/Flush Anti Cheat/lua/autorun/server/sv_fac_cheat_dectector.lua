print("server cheat dectetor loaded.")


local lastMousePositions = {}

hook.Add( "CreateMove", "NoRecoilDetector", function( cmd )
    local ply = LocalPlayer()
    if not ply or not ply:IsValid() then return end
    
    local curPos = input.GetCursorPos()
    table.insert( lastMousePositions, curPos )
    
    -- Limit the number of positions to compare
    local maxPositions = 10
    if #lastMousePositions > maxPositions then
        table.remove( lastMousePositions, 1 )
    end
    
    -- Check if the mouse positions are very similar
    local varianceThreshold = 5 -- Adjust this value as needed
    local lastPos = lastMousePositions[1]
    local isNoRecoil = true
    for _, pos in ipairs( lastMousePositions ) do
        local diff = math.abs( pos.x - lastPos.x ) + math.abs( pos.y - lastPos.y )
        if diff > varianceThreshold then
            isNoRecoil = false
            break
        end
        lastPos = pos
    end
    
    if isNoRecoil then
        print( "Possible no-recoil detected for " .. ply:GetName() )
        -- Trigger other actions as needed
    end
end )

hook.Add("EntityTakeDamage", "MonHookDeDegats", function(target, dmginfo)
    -- Vérifier si la cible est un joueur
    if target:IsPlayer() then
       -- Récupérer l'entité qui a infligé les dégâts
       local attacker = dmginfo:GetAttacker()
       print(attacker:Nick())
       -- Vérifier si l'attaquant est un joueur
       if attacker:IsPlayer() then


        local playerToKick = attacker:Nick()
        
        -- Vérifier si l'entité du joueur existe
        if IsValid(playerToKick) and playerToKick:IsPlayer() then
           -- Utiliser la fonction "kick" pour kicker le joueur
           playerToKick:Kick("FAC Auto-Ban : Permanent [Aimbot+Wallhack]")
        else
           print("Impossible de trouver le joueur spécifié")
        end
          print(PlayerToKick .. " a infligé des dégâts à " .. target:Nick())
       end
    end
 end)