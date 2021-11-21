schedule function pht:technical/schedule_1s 1s replace
execute as @a at @s run function pht:player/tick_1s
execute as @e[tag=pht.entity] at @s run function pht:entity/tick_1s

# Processing
execute as @e[tag=!global.ignore,tag=!pht.processed,type=#pht:processing] run function pht:entity/processing/sift