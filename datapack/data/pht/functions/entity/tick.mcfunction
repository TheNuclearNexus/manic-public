execute if entity @s[tag=pht.necromorph] run function pht:entity/necromorph/tick
execute if entity @s[tag=pht.revenant] run function pht:entity/revenant/tick
execute if entity @s[tag=pht.insomniac] run function pht:entity/insomniac/tick
execute if entity @s[tag=pht.respite] run function pht:entity/respite/tick
execute if entity @s[tag=pht.corpsebloom] run function pht:entity/corpsebloom/tick
execute if entity @s[tag=pht.corpsebloom.grown] run function pht:entity/corpsebloom/grown/tick
execute if entity @s[tag=pht.corpsegourd.grown] run function pht:entity/corpsegourd/grown/tick
execute if entity @s[tag=pht.trail] run function pht:entity/corpsegourd/trail/tick
execute if entity @s[tag=pht.evil_trail] run function pht:entity/necromancer/attack/trail
execute if entity @s[tag=pht.necromancer] run function pht:entity/necromancer/tick
execute if entity @s[tag=pht.hex] run function pht:entity/hex/tick
execute if entity @s[tag=pht.skeleton] unless score @s pht.dummy matches 21.. run function pht:entity/necromancer/attack/skeleton/tick
execute if entity @s[tag=pht.zombee] run function pht:entity/zombee/tick
execute if entity @s[tag=pht.keeper] run function pht:entity/keeper/tick

## Glowing Rework
#data remove storage pht:storage root.temp
#data modify storage pht:storage root.temp.effects set from entity @s ActiveEffects
#execute if data storage pht:storage root.temp.effects[{Id:24b}] unless entity @s[tag=pht.necromancer] unless entity @s[tag=pht.insomniac] unless entity @s[tag=pht.executioner] unless entity @s[type=phantom] run effect clear @s glowing
execute unless entity @s[tag=pht.necromancer] unless entity @s[tag=pht.insomniac] unless entity @s[tag=pht.executioner] run effect clear @s glowing