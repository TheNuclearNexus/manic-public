execute positioned ~ ~1 ~ run particle minecraft:sweep_attack ^ ^ ^1
playsound minecraft:entity.bee.sting neutral @a ~ ~ ~ 1 0.75
#scoreboard players set @s manic.bee_delay 1
effect give @e[distance=..2.5,type=#manic:undead,sort=nearest,limit=1] instant_health 1 1 true

execute if predicate manic:chance/zombee_hurt run effect give @s poison 2 0 true