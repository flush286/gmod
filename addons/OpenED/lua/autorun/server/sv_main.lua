
local function PlaceEntityOnDoorLocks()
    
    for _, door in ipairs(ents.GetAll()) do
        
        if door.isKeysOwnable and door.isDoor and door:isKeysOwnable() and door:isDoor() then
            local doorLockPos = door:OBBCenter() 
            doorLockPos = door:LocalToWorld(doorLockPos) 

            
            local offset = Vector(0, 20, -10) 
            local entPos = doorLockPos + offset

            
            local ent = ents.Create("openflushed_lock") 
            if IsValid(ent) then
                ent:SetPos(entPos)
                ent:Spawn()

                
                ent.door = door

                if door.isKeysOwnable then
                    
                    constraint.Weld(ent, door, 0, 0, 0, true, false)
                else
                    -- Vérifie si la porte est fermée pour DarkRP
                    if door:isKeysOwned() and door:isKeysLocked() then
                        door:Fire("unlock")
                        door:Fire("open")  
                    end
                end

                print("Entité attachée au verrou de la porte !")
            end
        end
    end
end

-- Appelle la fonction pour placer ton entité sur chaque porte lorsque la carte est chargée
hook.Add("InitPostEntity", "PlaceEntityOnDoorLocks", PlaceEntityOnDoorLocks)

-- Hook pour gérer le tir sur l'entité
hook.Add("EntityTakeDamage", "OpenDoorOnEntityDamage", function(ent, dmg)
    -- Vérifie si l'entité touchée est une de tes entités créées
    if ent.door and IsValid(ent.door) and (ent.door.isKeysOwnable or ent.door:IsDoor()) then
        -- Ouverture de la porte
        ent.door:Fire("Open")
    end
end)
