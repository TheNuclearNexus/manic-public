schedule function pht:technical/schedule_10s 10s replace
execute as @a at @s run function pht:player/tick_10s
execute as @e[tag=pht.decay] run function pht:entity/decay/tick

## Additional
execute if score #pht.insom_delay pht.dummy matches 1.. run scoreboard players remove #pht.insom_delay pht.dummy 1
execute if score #pht.mansion pht.dummy matches 1.. run scoreboard players remove #pht.mansion pht.dummy 1