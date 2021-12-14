particle dust_color_transition 0.102 1.000 0.000 2 0.114 0.212 0.176 ~ ~0.75 ~ 0.5 0.5 0.5 2 25 force
playsound minecraft:entity.firework_rocket.blast_far hostile @a ~ ~ ~ 2

execute if entity @s[tag=pht.is_phantom] run summon phantom ~ ~ ~ {Tags:["pht.entity","smithed.entity","global.ignore","pht.phantom","pht.decay"],Attributes:[{Name:generic.attack_damage,Base:4}]}

execute if entity @s[tag=pht.is_necromorph] run function pht:entity/necromorph/spawn
execute if entity @s[tag=pht.is_revenant] run function pht:entity/revenant/spawn
execute if entity @s[tag=pht.is_eidolon] run function pht:entity/eidolon/spawn