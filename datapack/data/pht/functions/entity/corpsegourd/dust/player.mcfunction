tag @s add pht.found

playsound minecraft:block.stone.place block @a ~ ~ ~ 1 0.75
execute as @s[gamemode=!creative] run item modify entity @s weapon.mainhand pht:remove_1