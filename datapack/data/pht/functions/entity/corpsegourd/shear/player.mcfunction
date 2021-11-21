tag @s add pht.found

playsound minecraft:entity.sheep.shear block @a
execute as @s[gamemode=!creative] run item modify entity @s weapon.mainhand pht:durability