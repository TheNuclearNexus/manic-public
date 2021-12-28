summon marker ~ ~ ~ {Tags:["manic.entity","manic.monk_marker"]}
execute as @e[tag=manic.monk_marker] at @s run function manic:entity/monk/marker/init
scoreboard players set #manic.monk_delay manic.dummy 120