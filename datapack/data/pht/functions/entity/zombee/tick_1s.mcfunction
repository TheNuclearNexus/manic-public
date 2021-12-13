data remove entity @s Offers.Recipes
playsound minecraft:entity.bee.loop neutral @a ~ ~ ~ 0.15 0.75

execute if entity @e[type=#pht:undead,distance=..16] run function pht:entity/zombee/ai/track
execute if entity @e[type=#pht:undead,distance=..2.5] unless score @s pht.bee_delay matches 1.. run function pht:entity/zombee/ai/init_attack
#execute if score @s pht.bee_delay matches 1.. run scoreboard players remove @s pht.bee_delay 1

execute if entity @e[distance=..16,tag=pht.corpsebloom.grown] run effect give @s regeneration 3 1 true