execute unless score @s manic.safe_time matches 1.. run scoreboard players remove @s manic.sanity 20
summon creeper ^ ^ ^-.1 {Silent:1b,DeathLootTable:"0",NoAI:1b,ExplosionRadius:-1b,Fuse:0,ignited:1b,Tags:["manic.entity","smithed.entity","manic.keeper.explosion"],CustomName:'{"translate":"manic.entity.keeper"}'}
stopsound @a[distance=..20] * minecraft:entity.generic.explode
execute at @s run playsound minecraft:entity.player.hurt player @a[distance=0..16]
tag @s add manic.damage.the_keeper
execute if score #manic.difficulty manic.dummy matches 1 run scoreboard players set @s manic.damage 6
execute if score #manic.difficulty manic.dummy matches 2 run scoreboard players set @s manic.damage 8
execute if score #manic.difficulty manic.dummy matches 3 run scoreboard players set @s manic.damage 10
function manic:player/damage/apply/armor
tag @s remove manic.damage.the_keeper