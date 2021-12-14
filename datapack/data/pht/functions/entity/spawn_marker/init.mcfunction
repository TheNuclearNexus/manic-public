## Spread
execute if predicate pht:range/over_128 run spreadplayers ~ ~ 1 20 false @s
execute if predicate pht:range/96_to_128 run spreadplayers ~ ~ 1 20 under 127 false @s
execute if predicate pht:range/64_to_96 run spreadplayers ~ ~ 1 20 under 96 false @s
execute if predicate pht:range/32_to_64 run spreadplayers ~ ~ 1 20 under 64 false @s
execute if predicate pht:range/0_to_32 run spreadplayers ~ ~ 1 20 under 32 false @s
execute if predicate pht:range/-64_to_0 run spreadplayers ~ ~ 1 20 under 0 false @s


# Phantoms
execute if predicate pht:in_overworld unless predicate pht:underground if predicate pht:chance/coinflip run tag @s add pht.is_phantom
execute if entity @s[tag=pht.is_phantom] run tp @s ~ ~30 ~

# Detect EIT Blood Moons
execute if score #eit eit.blood_moon matches 1.. run tag @s add pht.blood_moon
execute if score #eit.blood_moon eit.dummy matches 1 run tag @s add pht.blood_moon
# Two checks because the EIT update is not out, but this is future proofing.

# Remaining Checks
execute if predicate pht:in_the_nether run tag @s add pht.is_revenant
execute if predicate pht:in_the_end run tag @s add pht.is_eidolon
execute if predicate pht:in_overworld run tag @s[tag=!pht.blood_moon,tag=!pht.is_phantom] add pht.is_necromorph
execute if predicate pht:in_overworld run tag @s[tag=pht.blood_moon,tag=!pht.is_phantom] add pht.is_revenant

## Kill-Off
execute at @s if entity @a[distance=..1] run kill @s
execute at @s if entity @s[tag=pht.is_necromorph] if predicate pht:safe_light unless entity @a[tag=pht.gelatin,distance=..48] run kill @s