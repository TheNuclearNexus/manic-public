execute if entity @s[tag=manic.spook] run function manic:entity/spook/tick
execute if entity @s[tag=manic.revenant] run function manic:entity/revenant/tick
execute if entity @s[tag=manic.eidolon] run function manic:entity/eidolon/tick
execute if entity @s[tag=manic.mirage] run function manic:entity/mirage/tick
execute if entity @s[tag=manic.insomniac] run function manic:entity/insomniac/tick
execute if entity @s[tag=manic.respite] run function manic:item/respite/tick
execute if entity @s[tag=manic.corpsebloom] run function manic:entity/corpsebloom/tick
execute if entity @s[tag=manic.corpsebloom.grown] run function manic:entity/corpsebloom/grown/tick
execute if entity @s[tag=manic.corpsegourd.grown] run function manic:entity/corpsegourd/grown/tick
execute if entity @s[tag=manic.trail] run function manic:entity/corpsegourd/trail/tick
execute if entity @s[tag=manic.evil_trail] run function manic:entity/necromancer/attack/trail
execute if entity @s[tag=manic.eidolon_trail] run function manic:entity/eidolon/beam/trail
execute if entity @s[tag=manic.necromancer] run function manic:entity/necromancer/tick
execute if entity @s[tag=manic.hex] run function manic:entity/hex/tick
execute if entity @s[tag=manic.skeleton] unless score @s manic.dummy matches 21.. run function manic:entity/necromancer/attack/skeleton/tick
execute if entity @s[tag=manic.zombee] run function manic:entity/zombee/tick
execute if entity @s[tag=manic.keeper] run function manic:entity/keeper/tick
execute if entity @s[tag=manic.corpsepitcher] run function manic:entity/corpsepitcher/tick
execute if entity @s[tag=manic.corpsecreep] run function manic:entity/corpsecreep/tick
execute if entity @s[tag=manic.chitter] run function manic:entity/chitter/tick
execute if entity @s[tag=manic.corpsethorn] run function manic:entity/corpsethorn/tick
execute if entity @s[tag=manic.spawn_marker] run function manic:entity/spawn_marker/tick
execute if entity @s[tag=manic.podium] run function manic:entity/podium/tick
execute if entity @s[tag=manic.altar] run function manic:entity/altar/tick
execute if entity @s[tag=manic.mad_fire] run function manic:entity/mad_fire/tick
execute if entity @s[tag=manic.monk] run function manic:entity/monk/tick

execute if entity @s[tag=manic.spawn_egg] run function manic:entity/spawn_egg

## Glowing Rework
data remove storage manic:storage root.temp
data modify storage manic:storage root.temp.effects set from entity @s ActiveEffects
execute if data storage manic:storage root.temp.effects[{Id:24b}] if entity @s[tag=manic.schizoid] at @s run function manic:entity/holy_arrow
execute if data storage manic:storage root.temp.effects[{Id:24b}] if entity @s[tag=manic.hex] at @s run function manic:entity/holy_arrow
execute if data storage manic:storage root.temp.effects[{Id:24b}] unless entity @s[tag=manic.necromancer] unless entity @s[tag=manic.insomniac] unless entity @s[tag=manic.executioner] unless entity @s[type=phantom] run effect clear @s glowing