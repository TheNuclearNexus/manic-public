particle minecraft:happy_villager ~ ~0.25 ~ 0.5 0.6 0.5 0.1 2
playsound minecraft:block.composter.fill_success neutral @a ~ ~ ~ 1 0.75
item modify entity @s[gamemode=!creative] weapon.mainhand pht:remove_1
execute as @e[tag=pht.corpsebloom,sort=nearest,limit=1] run function pht:entity/corpsebloom/feed