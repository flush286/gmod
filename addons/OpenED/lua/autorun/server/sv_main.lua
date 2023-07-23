
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


hook.Add("InitPostEntity", "PlaceEntityOnDoorLocks", PlaceEntityOnDoorLocks)


hook.Add("EntityTakeDamage", "OpenDoorOnEntityDamage", function(ent, dmg)
    
    if ent.door and IsValid(ent.door) and (ent.door.isKeysOwnable or ent.door:IsDoor()) then
       
        ent.door:Fire("Open")
    end
end)
