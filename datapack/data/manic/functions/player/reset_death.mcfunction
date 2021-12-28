execute if score #manic.difficulty manic.dummy matches 3 run execute if score @s manic.sanity matches ..3333 run scoreboard players set @s manic.sanity 3333

execute if score #manic.difficulty manic.dummy matches 2 run execute if score @s manic.sanity matches ..5555 run scoreboard players set @s manic.sanity 5555

execute if score #manic.difficulty manic.dummy matches ..1 run scoreboard players set @s manic.sanity 9999
# If you are on peaceful, why are you even playing this datapack tbh.

scoreboard players reset @s manic.death
scoreboard players reset @s manic.last_sleep
scoreboard players reset @s manic.safe_time
scoreboard players reset @s manic.ichor_time
scoreboard players reset @s manic.flute_time

stopsound @s * manic:ambience.insane
stopsound @s * manic:ambience.waning

execute if score @s manic.axetime matches 1.. run function manic:item/haunted_axe/unproc
