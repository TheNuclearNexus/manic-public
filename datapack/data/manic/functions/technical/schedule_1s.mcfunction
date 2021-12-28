schedule function manic:technical/schedule_1s 1s replace
execute as @a at @s run function manic:player/tick_1s
execute as @e[type=#manic:affected,tag=manic.entity] at @s run function manic:entity/tick_1s

## Processing
execute as @e[tag=!smithed.entity,tag=!global.ignore,tag=!manic.processed,type=#manic:processing] run function manic:entity/processing/sift

## Misc
execute if score #manic.global_sleep manic.dummy matches 1 as @a run function manic:player/sleep/regen
scoreboard players reset #manic.global_sleep manic.dummy