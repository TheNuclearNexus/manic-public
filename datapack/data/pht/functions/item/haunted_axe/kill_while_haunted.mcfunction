particle soul ~ ~1.5 ~ 0.5 0.5 0.5 0.1 1
playsound pht:item.haunted_axe.tick player @a

scoreboard players add @s pht.axetime 30
execute if score @s pht.axetime matches 101.. run scoreboard players set @s pht.axetime 100
scoreboard players remove @s pht.sanity 4
scoreboard players add @s pht.axekills 1

advancement revoke @s only pht:kill_while_haunted