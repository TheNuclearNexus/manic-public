advancement revoke @s only manic:technical/consume/berry_wine

execute if score @s manic.sanity matches 5555.. run scoreboard players remove @s manic.sanity 300
execute unless score @s manic.sanity matches 5555.. run scoreboard players add @s manic.sanity 300

effect give @s nausea 10
effect give @s regeneration 20 1