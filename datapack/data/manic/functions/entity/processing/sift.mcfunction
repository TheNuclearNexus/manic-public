tag @s add manic.processed
execute if entity @s[type=#manic:antivil] run function manic:entity/processing/antivil

# Mob Replacements
execute at @s if entity @s[type=minecraft:witch] if predicate manic:location/dark_forest if predicate manic:chance/coinflip run function manic:entity/necromancer/spawn
execute at @s if entity @s[type=minecraft:witch] if entity @s[nbt={HasRaidGoal:1b}] if predicate manic:chance/necromancer_spawn run function manic:entity/necromancer/spawn