effect give @s levitation 1 8 true
execute unless score @s pht.safe_time matches 1.. run scoreboard players remove @s pht.sanity 100
execute at @s run playsound minecraft:entity.player.hurt player @a[distance=0..16]

tag @s add pht.damage.the_keeper
execute if score #pht.difficulty pht.dummy matches 1 run scoreboard players set @s pht.damage 12
execute if score #pht.difficulty pht.dummy matches 2 run scoreboard players set @s pht.damage 16
execute if score #pht.difficulty pht.dummy matches 3 run scoreboard players set @s pht.damage 19
function pht:player/damage/apply/armor
tag @s remove pht.damage.the_keeper