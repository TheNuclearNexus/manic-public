effect clear @e[tag=manic.keeper,type=vindicator,limit=1,sort=nearest] minecraft:slowness
execute if entity @s[tag=manic.animation.summon] run function manic:entity/keeper/model/spawn_end
function manic:animations/keeper/summon/stop
function manic:animations/keeper/bite/stop
function manic:animations/keeper/launch/stop
function manic:animations/keeper/slam/stop
function manic:animations/keeper/charge/stop
function manic:animations/keeper/stun/stop
function manic:animations/keeper/walk/start