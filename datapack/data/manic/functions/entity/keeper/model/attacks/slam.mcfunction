execute positioned ~ ~-1 ~ as @a[distance=..20,nbt={OnGround:1b}] at @s run function manic:entity/keeper/model/attacks/damage/slam

particle crit ~ ~ ~ 1.5 0.5 1.5 0 20 force
particle block dark_oak_planks ~ ~ ~ 1.5 0.5 1.5 0 20 force
playsound manic:entity.keeper.slam hostile @a ~ ~ ~ 1.4