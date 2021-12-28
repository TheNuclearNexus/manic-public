tag @s add manic.found

playsound minecraft:entity.sheep.shear block @a
execute as @s[gamemode=!creative] run scoreboard players set @s manic.default 1
execute as @s[gamemode=!creative] run function manic:player/durability/mainhand