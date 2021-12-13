particle enchant ~ ~1 ~ 0.5 0.5 0.5 0.1 1
scoreboard players add @s pht.sanity 50
scoreboard players remove @a[distance=..10] pht.sanity 10
execute as @a[distance=..10] at @s run particle enchant ~ ~1 ~ 0.5 0.5 0.5 0 10 force
playsound minecraft:entity.guardian.attack hostile @a ~ ~ ~ 1 1.5