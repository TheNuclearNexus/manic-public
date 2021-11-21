tag @s add pht.processed
execute if entity @s[type=#pht:antivil] run function pht:entity/processing/antivil

# Mob Replacements
execute at @s if entity @s[type=minecraft:witch] if predicate pht:dark_forest if predicate pht:chance/coinflip run function pht:entity/necromancer/spawn
execute at @s if entity @s[type=minecraft:witch] if entity @s[nbt={HasRaidGoal:1b}] if predicate pht:chance/necromancer_spawn run function pht:entity/necromancer/spawn