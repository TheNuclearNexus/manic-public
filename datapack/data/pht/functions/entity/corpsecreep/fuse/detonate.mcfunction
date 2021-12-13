## Self
playsound pht:pht.item.blight_mold hostile @a[distance=0..16] ~ ~ ~ 0.5 0.75
playsound minecraft:entity.generic.explode hostile @a[distance=0..16] ~ ~ ~ 0.5 1.5
particle minecraft:squid_ink ~ ~1 ~ 0.25 0.25 0.25 0.25 100
tp @s ~ -512 ~
function pht:item/blight_mold/convert

## Nearby
execute as @e[type=#pht:undead,distance=0..8] run effect give @s minecraft:wither 7 2
execute as @a[distance=0..4] run effect give @s minecraft:wither 7 2
execute as @a[distance=5..8] run effect give @s minecraft:wither 4 1
execute at @e[type=#pht:undead,distance=0..8] run particle minecraft:squid_ink ~ ~1 ~ 0.25 0.25 0.25 0.25 5
execute at @e[type=#pht:undead,distance=0..8,limit=6] run function pht:item/blight_mold/convert