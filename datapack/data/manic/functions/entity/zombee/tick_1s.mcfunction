data remove entity @s Offers.Recipes
playsound minecraft:entity.bee.loop neutral @a ~ ~ ~ 0.15 0.75

execute if entity @e[type=#manic:undead,distance=..16] run function manic:entity/zombee/ai/track
execute if entity @e[type=#manic:undead,distance=..2.5] unless score @s manic.bee_delay matches 1.. run function manic:entity/zombee/ai/init_attack
#execute if score @s manic.bee_delay matches 1.. run scoreboard players remove @s manic.bee_delay 1

execute if entity @e[distance=..16,tag=manic.corpsebloom.grown] run effect give @s regeneration 3 1 true