scoreboard players add @s manic.souls 1
execute if score @s manic.souls matches 6 run scoreboard players set @s manic.sap 1
execute if score @s manic.souls matches 6 run scoreboard players set @s manic.souls 0
particle soul ~ ~0.75 ~ 0.5 0.5 0.5 0 1 force
playsound manic:entity.corpsebloom.fill block @a[distance=0..16] ~ ~ ~ 1