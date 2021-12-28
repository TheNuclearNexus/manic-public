scoreboard players add @e[tag=manic.altar,sort=nearest,limit=1] manic.default 1
function manic:entity/corpsegourd/trail/delete
execute as @e[tag=manic.altar,sort=nearest,limit=1] run function manic:entity/altar/states/update