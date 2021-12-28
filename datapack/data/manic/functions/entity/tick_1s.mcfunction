execute if entity @s[tag=manic.marker_insomniac] run function manic:entity/marker_insomniac/tick
execute if entity @s[tag=manic.spook] run function manic:entity/spook/tick_1s
execute if entity @s[tag=manic.revenant] run function manic:entity/revenant/tick_1s
execute if entity @s[tag=manic.eidolon] run function manic:entity/eidolon/tick_1s
execute if entity @s[tag=manic.mirage] run function manic:entity/mirage/tick_1s
execute if entity @s[tag=manic.corpsebloom] run function manic:entity/corpsebloom/tick_1s
execute if entity @s[tag=manic.corpsegourd] run function manic:entity/corpsegourd/tick_1s
execute if entity @s[tag=manic.corpsegourd.grown] run function manic:entity/corpsegourd/grown/tick_1s
execute if entity @s[tag=manic.insomniac] run function manic:entity/insomniac/tick_1s
execute if entity @s[tag=manic.necromancer] run function manic:entity/necromancer/tick_1s
execute if entity @s[tag=manic.hex] run function manic:entity/hex/tick_1s
execute if entity @s[tag=manic.zombee] run function manic:entity/zombee/tick_1s
execute if entity @s[tag=manic.keeper_spawn] run function manic:entity/keeper/marker
execute if entity @s[tag=manic.keeper] run function manic:entity/keeper/tick_1s
execute if entity @s[tag=manic.keeper_scare] run function manic:entity/keeper/scare_tick
execute if entity @s[tag=manic.corpsepitcher] run function manic:entity/corpsepitcher/tick_1s
execute if entity @s[tag=manic.corpsecreep] run function manic:entity/corpsecreep/tick_1s
execute if entity @s[tag=manic.corpsethorn] run function manic:entity/corpsethorn/tick_1s
execute if entity @s[tag=manic.podium] run function manic:entity/podium/tick_1s
execute if entity @s[tag=manic.altar] run function manic:entity/altar/tick_1s
execute if entity @s[tag=manic.monk] run function manic:entity/monk/tick_1s
execute as @e[type=armor_stand,tag=manic.snare] at @s unless entity @e[tag=manic.snared,distance=..0.5] run function manic:entity/corpsebloom/grown/snare/feed

## Wandering Trader
execute if entity @s[type=minecraft:wandering_trader] run effect give @s invisibility 999999 0 true
execute if entity @s[type=minecraft:wandering_trader] run data modify entity @s HandItems[0].tag.manic.fix set value 0
execute if entity @s[type=minecraft:wandering_trader,tag=!manic.insomniac] run data remove entity @s Offers.Recipes