particle crit ~ ~0.75 ~ 0.25 0.5 0.25 0.1 15
playsound minecraft:entity.wither.shoot block @a ~ ~ ~ 0.3 1.25
execute if predicate pht:chance/corpsebloom_fill as @e[distance=..11,tag=pht.corpsebloom.grown,sort=nearest,limit=1,scores={pht.max_sap=..3}] at @s run function pht:entity/corpsebloom/grown/fill
kill @s