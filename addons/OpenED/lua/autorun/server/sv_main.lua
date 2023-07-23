-- Fonction pour placer ton entité au niveau du verrou de chaque porte et lier l'entité à la porte
local function PlaceEntityOnDoorLocks()
    -- Boucle à travers toutes les portes sur la carte
    for _, door in ipairs(ents.GetAll()) do
        -- Vérifie si l'entité est une porte propre à un joueur pour DarkRP
        if door.isKeysOwnable and door.isDoor and door:isKeysOwnable() and door:isDoor() then
            local doorLockPos = door:OBBCenter() -- Obtient la position du centre de la boîte de collision de la porte
            doorLockPos = door:LocalToWorld(doorLockPos) -- Convertit la position en coordonnées mondiales

            -- Ajoute un décalage pour placer l'entité au niveau du verrou de la porte
            local offset = Vector(0, 20, -10) -- Ajuste le décalage en fonction de la position du verrou sur la porte
            local entPos = doorLockPos + offset

            -- Crée et place ton entité à la position du verrou de la porte
            local ent = ents.Create("openflushed_lock") -- Remplace "nom_de_ton_entite" par le nom de ton entité
            if IsValid(ent) then
                ent:SetPos(entPos)
                ent:Spawn()

                -- Lier l'entité à la porte où elle apparaît
                ent.door = door

                if door.isKeysOwnable then
                    -- Attacher l'entité à la porte avec une contrainte Weld (pour Garry's Mod)
                    constraint.Weld(ent, door, 0, 0, 0, true, false)
                else
                    -- Vérifie si la porte est fermée pour DarkRP
                    if door:isKeysOwned() and door:isKeysLocked() then
                        door:Fire("unlock") -- Déverrouiller la porte si elle est fermée
                        door:Fire("open")   -- Ouvrir la porte
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
