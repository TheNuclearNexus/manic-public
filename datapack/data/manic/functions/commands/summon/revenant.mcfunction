function manic:entity/revenant/spawn
execute as @e[tag=manic.revenant,sort=nearest,limit=1] run function manic:entity/decay/remove_decay