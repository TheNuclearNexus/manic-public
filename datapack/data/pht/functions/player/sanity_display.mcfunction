## NOTE
# I plan to introduce actionbar compat in a future update.

#title @s actionbar [{"text":"Sanity: "},{"score":{"name":"@s","objective":"pht.sanity"}}]

#0
#1..1111
#1112..2222
#2223..3333
#3334..4444
#4445..5555
#5556..6666
#6667..7777
#7778..8888
#8889..10000

execute if score @s pht.sanity matches 0 run title @s actionbar {"text":"\ua000\ua000\ua000\ua000\ua004\ua000\ua000\ua000\ua000","font":"pht:sanity_bar"}

execute if score @s pht.sanity matches 1..1111 run title @s actionbar {"text":"\ua001\ua000\ua000\ua000\ua004\ua000\ua000\ua000\ua000","font":"pht:sanity_bar"}

execute if score @s pht.sanity matches 1112..2222 run title @s actionbar {"text":"\ua001\ua001\ua000\ua000\ua004\ua000\ua000\ua000\ua000","font":"pht:sanity_bar"}

execute if score @s pht.sanity matches 2223..3333 run title @s actionbar {"text":"\ua001\ua001\ua001\ua000\ua002\ua000\ua000\ua000\ua000","font":"pht:sanity_bar"}

execute if score @s pht.sanity matches 3334..4444 run title @s actionbar {"text":"\ua001\ua001\ua001\ua001\ua002\ua000\ua000\ua000\ua000","font":"pht:sanity_bar"}

execute if score @s pht.sanity matches 4445..5555 run title @s actionbar {"text":"\ua001\ua001\ua001\ua001\ua003\ua000\ua000\ua000\ua000","font":"pht:sanity_bar"}

execute if score @s pht.sanity matches 5556..6666 run title @s actionbar {"text":"\ua001\ua001\ua001\ua001\ua003\ua001\ua000\ua000\ua000","font":"pht:sanity_bar"}

execute if score @s pht.sanity matches 6667..7777 run title @s actionbar {"text":"\ua001\ua001\ua001\ua001\ua003\ua001\ua001\ua000\ua000","font":"pht:sanity_bar"}

execute if score @s pht.sanity matches 7778..8888 run title @s actionbar {"text":"\ua001\ua001\ua001\ua001\ua003\ua001\ua001\ua001\ua000","font":"pht:sanity_bar"}

execute if score @s pht.sanity matches 8889..10000 run title @s actionbar {"text":"\ua001\ua001\ua001\ua001\ua003\ua001\ua001\ua001\ua001","font":"pht:sanity_bar"}