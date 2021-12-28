schedule function manic:technical/schedule_10s 10s replace
execute as @a at @s run function manic:player/tick_10s
execute as @e[tag=manic.decay] at @s run function manic:entity/decay/tick

## Updater
execute as @e[tag=pht.entity] at @s run function manic:entity/updater/start

## Additional
execute if score #manic.insom_delay manic.dummy matches 1.. run scoreboard players remove #manic.insom_delay manic.dummy 1
execute if score #manic.monk_delay manic.dummy matches 1.. run scoreboard players remove #manic.monk_delay manic.dummy 1
execute if score #manic.mansion manic.dummy matches 1.. run scoreboard players remove #manic.mansion manic.dummy 1
execute store result score #manic.difficulty manic.dummy run difficulty