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