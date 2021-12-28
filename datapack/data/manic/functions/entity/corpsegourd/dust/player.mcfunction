tag @s add manic.found

playsound minecraft:block.stone.place block @a ~ ~ ~ 1 0.75
execute as @s[gamemode=!creative] run item modify entity @s weapon.mainhand manic:remove_1