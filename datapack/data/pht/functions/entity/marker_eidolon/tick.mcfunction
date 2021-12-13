scoreboard players add @s pht.dummy 1
playsound minecraft:item.axe.scrape hostile @a[distance=0..16] ~ ~ ~ 1 0.25
particle smoke ~ ~ ~ 0.5 0.5 0.5 0 8
particle soul_fire_flame ~ ~0.3 ~ 0.1 0.5 0.1 0.1 8

execute if score @s pht.dummy matches 5 run function pht:entity/marker_eidolon/activate