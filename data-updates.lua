if krastorio.general.getSafeSettingValue("kr-pipes-and-belts-changes") then
    -- space underground-belt 
    if data.raw["underground-belt"]["se-space-underground-belt"] then
        data.raw["underground-belt"]["se-space-underground-belt"].max_distance = data.raw["underground-belt"]["express-underground-belt"].max_distance
    end
    if data.raw.recipe["se-space-underground-belt"] then
        data.raw.recipe["se-space-underground-belt"].result_count = data.raw.recipe["express-underground-belt"].result_count 
    end

    -- space underground-pipe  
    if data.raw["pipe-to-ground"]["se-space-pipe-to-ground"] then
        for index, connection in pairs(data.raw["pipe-to-ground"]["se-space-pipe-to-ground"].fluid_box.pipe_connections) do
            if connection.max_underground_distance then
            -- see prototypes\vanilla-changes\optional\pipes-and-belts-changes.lua
                data.raw["pipe-to-ground"]["se-space-pipe-to-ground"].fluid_box.pipe_connections[index].max_underground_distance = 20
            end
        end
    end
end
if data.raw.recipe["se-space-pipe-to-ground"] then
    data.raw.recipe["se-space-pipe-to-ground"].result_count = data.raw.recipe["pipe-to-ground"].result_count 
end

tank1 = data.raw["storage-tank"]["kr-fluid-storage-1"]
if tank1 then
    tank1.se_allow_in_space = true
end

tank2 = data.raw["storage-tank"]["kr-fluid-storage-2"]
if tank2 then
    tank2.se_allow_in_space = true
end

krastorio.technologies.addUnlockRecipe("se-electric-boiler", "se-electric-boiling-steam-415")
krastorio.technologies.addUnlockRecipe("se-electric-boiler", "se-electric-boiling-steam-975")