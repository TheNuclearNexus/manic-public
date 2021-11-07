tag @s add pht.found

# Optimise in the future
execute if score @e[tag=pht.corpsebloom,sort=nearest,limit=1] pht.dummy3 matches 1 if entity @s[tag=pht.corpsebloom.rotten_flesh] run function pht:entity/corpsebloom/raycast/success
execute if score @e[tag=pht.corpsebloom,sort=nearest,limit=1] pht.dummy3 matches 2 if entity @s[tag=pht.corpsebloom.bones] run function pht:entity/corpsebloom/raycast/success
execute if score @e[tag=pht.corpsebloom,sort=nearest,limit=1] pht.dummy3 matches 3 if entity @s[tag=pht.corpsebloom.gunpowder] run function pht:entity/corpsebloom/raycast/success
execute if score @e[tag=pht.corpsebloom,sort=nearest,limit=1] pht.dummy3 matches 4 if entity @s[tag=pht.corpsebloom.string] run function pht:entity/corpsebloom/raycast/success
execute if score @e[tag=pht.corpsebloom,sort=nearest,limit=1] pht.dummy3 matches 5 if entity @s[tag=pht.corpsebloom.ectoplasm] run function pht:entity/corpsebloom/raycast/success
execute if score @e[tag=pht.corpsebloom,sort=nearest,limit=1] pht.dummy3 matches 6 if entity @s[tag=pht.corpsebloom.membrane] run function pht:entity/corpsebloom/raycast/success

tag @s remove pht.corpsebloom.rotten_flesh
tag @s remove pht.corpsebloom.bones
tag @s remove pht.corpsebloom.gunpowder
tag @s remove pht.corpsebloom.string
tag @s remove pht.corpsebloom.ectoplasm
tag @s remove pht.corpsebloom.membrane