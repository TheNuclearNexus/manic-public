particle soul ~ ~1.5 ~ 0.5 0.5 0.5 0.1 1
playsound manic:item.haunted_axe.tick player @a

scoreboard players add @s manic.axetime 30
execute if score @s manic.axetime matches 101.. run scoreboard players set @s manic.axetime 100
scoreboard players remove @s manic.sanity 4
scoreboard players add @s manic.axekills 1

advancement revoke @s only manic:technical/kill_while_haunted