scoreboard players reset @s pht.last_sleep
execute if score #pht.difficulty pht.dummy matches 1 unless score @s pht.sanity matches ..5 run scoreboard players add @s pht.sanity 888
execute if score #pht.difficulty pht.dummy matches 2 unless score @s pht.sanity matches ..1111 run scoreboard players add @s pht.sanity 666
execute if score #pht.difficulty pht.dummy matches 3 unless score @s pht.sanity matches ..2222 run scoreboard players add @s pht.sanity 444

execute if score #pht.difficulty pht.dummy matches 1 if score @s pht.sanity matches ..5 run scoreboard players add @s pht.sanity 444
execute if score #pht.difficulty pht.dummy matches 2 if score @s pht.sanity matches ..1111 run scoreboard players add @s pht.sanity 333
execute if score #pht.difficulty pht.dummy matches 3 if score @s pht.sanity matches ..2222 run scoreboard players add @s pht.sanity 222
