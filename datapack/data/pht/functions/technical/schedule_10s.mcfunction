schedule function pht:technical/schedule_10s 10s replace
execute as @a at @s run function pht:player/tick_10s
execute as @e[tag=pht.decay] run function pht:entity/decay/tick