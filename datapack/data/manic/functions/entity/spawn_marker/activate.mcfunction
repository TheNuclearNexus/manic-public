particle dust_color_transition 0.102 1.000 0.000 2 0.114 0.212 0.176 ~ ~0.75 ~ 0.5 0.5 0.5 2 25 force
playsound manic:entity.spawn_marker.end hostile @a ~ ~ ~ 2
kill @e[tag=manic.schizoid_portal,distance=0..1]

execute if entity @s[tag=manic.is_phantom] run summon phantom ~ ~ ~ {Tags:["manic.entity","smithed.entity","global.ignore","manic.phantom","manic.decay","manic.schizoid"],Attributes:[{Name:generic.attack_damage,Base:4}]}

execute if entity @s[tag=manic.is_spook] run function manic:entity/spook/spawn
execute if entity @s[tag=manic.is_revenant] run function manic:entity/revenant/spawn
execute if entity @s[tag=manic.is_eidolon] run function manic:entity/eidolon/spawn
execute if entity @s[tag=manic.is_mirage] run function manic:entity/mirage/spawn