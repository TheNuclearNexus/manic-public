advancement revoke @s only pht:consume/berry_wine

execute if score @s pht.sanity matches 5555.. run scoreboard players remove @s pht.sanity 300
execute unless score @s pht.sanity matches 5555.. run scoreboard players add @s pht.sanity 300