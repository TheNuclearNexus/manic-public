scoreboard players add @s pht.dummy 1
playsound minecraft:block.fire.extinguish hostile @a ~ ~ ~ 3
particle flash
particle soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.1 15
particle reverse_portal ~ ~ ~ 0.5 0.5 0.5 0.1 10
execute if score @s pht.dummy matches 5 run function pht:entity/marker_phantom/activate