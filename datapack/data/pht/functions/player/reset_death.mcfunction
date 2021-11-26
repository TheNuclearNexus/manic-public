execute if score #pht.difficulty pht.dummy matches 3 run execute if score @s pht.sanity matches ..3333 run scoreboard players set @s pht.sanity 3333

execute if score #pht.difficulty pht.dummy matches 2 run execute if score @s pht.sanity matches ..5555 run scoreboard players set @s pht.sanity 5555

execute if score #pht.difficulty pht.dummy matches 1 run scoreboard players set @s pht.sanity 10000
execute if score #pht.difficulty pht.dummy matches 0 run scoreboard players set @s pht.sanity 10000
# If you are on peaceful, why are you even playing this datapack tbh.

scoreboard players reset @s pht.death
scoreboard players reset @s pht.last_sleep
scoreboard players reset @s pht.safe_time
scoreboard players reset @s pht.flute_time