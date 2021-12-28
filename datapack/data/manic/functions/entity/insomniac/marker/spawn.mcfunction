summon marker ~ ~ ~ {Tags:["manic.entity","manic.insomniac_marker"]}
execute as @e[tag=manic.insomniac_marker] at @s run function manic:entity/insomniac/marker/init
scoreboard players set #manic.insom_delay manic.dummy 120