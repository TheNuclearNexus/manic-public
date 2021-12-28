playsound manic:entity.corpsethorn.fill block @a
execute as @e[tag=manic.corpsethorn,tag=!manic.corpsethorn.satisfied,sort=nearest,limit=1,distance=..1] if entity @s[tag=manic.corpsethorn.unbloomed] run function manic:entity/corpsethorn/states/satisfied
execute as @e[tag=manic.corpsethorn,tag=!manic.corpsethorn.satisfied,sort=nearest,limit=1,distance=..1] if entity @s[tag=manic.corpsethorn.bloomed] run function manic:entity/corpsethorn/states/blooming_satisfied
function manic:entity/corpsegourd/trail/delete