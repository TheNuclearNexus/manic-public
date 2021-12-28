execute unless score @s manic.safe_time matches 1.. run scoreboard players remove @s manic.sanity 10
execute at @s run playsound minecraft:entity.player.hurt player @a[distance=0..16]
effect give @s levitation 1 9 true
tag @s add manic.damage.the_keeper
execute if score #manic.difficulty manic.dummy matches 1 run scoreboard players set @s manic.damage 5
execute if score #manic.difficulty manic.dummy matches 2 run scoreboard players set @s manic.damage 7
execute if score #manic.difficulty manic.dummy matches 3 run scoreboard players set @s manic.damage 9
function manic:player/damage/apply/armor
tag @s remove manic.damage.the_keeper