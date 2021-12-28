execute if entity @e[tag=manic.keeper,type=vindicator,limit=1,sort=nearest,nbt={HurtTime:10s}] run tag @s add manic.keeper.hurt
execute unless entity @s[tag=manic.keeper.hurt] positioned ^ ^ ^ as @a[distance=..1.5,nbt={HurtTime:0s}] run function manic:entity/keeper/model/attacks/damage/charge
execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=manic.mad_fire,distance=0..1] run function manic:entity/mad_fire/spawn
execute if entity @s[tag=manic.keeper.hurt] run function manic:animations/keeper/stun/start