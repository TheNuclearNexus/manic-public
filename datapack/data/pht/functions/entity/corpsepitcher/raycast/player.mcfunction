# Anirrum
execute if predicate pht:vanilla_item as @s[tag=pht.interact.dip_sword] as @e[tag=pht.pitcher.anirrum,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/dip_sword
execute if predicate pht:vanilla_item as @s[tag=pht.interact.dip_pickaxe] as @e[tag=pht.pitcher.anirrum,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/dip_pickaxe
execute if predicate pht:vanilla_item as @s[tag=pht.interact.dip_axe] as @e[tag=pht.pitcher.anirrum,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/dip_axe
execute if predicate pht:vanilla_item as @s[tag=pht.interact.dip_shovel] as @e[tag=pht.pitcher.anirrum,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/dip_shovel
execute if predicate pht:vanilla_item as @s[tag=pht.interact.dip_hoe] as @e[tag=pht.pitcher.anirrum,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/dip_hoe
execute as @s[tag=pht.interact.empty_pitcher_2] as @e[tag=pht.corpsepitcher,sort=nearest,limit=1] run function pht:entity/corpsepitcher/states/open
execute as @s[tag=pht.interact.lava_bucket] as @e[tag=pht.pitcher.empty,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/lava
execute as @s[tag=pht.interact.empty_lava] as @e[tag=pht.pitcher.lava,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/empty_lava
execute as @s[tag=pht.interact.reticulum] as @e[tag=pht.pitcher.lava,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/make_anirrum
execute as @s[tag=pht.interact.anirrum_bucket] as @e[tag=pht.pitcher.empty,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/anirrum
execute as @s[tag=pht.interact.empty_anirrum] as @e[tag=pht.pitcher.anirrum,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/empty_anirrum
tag @s remove pht.interact.lava_bucket
tag @s remove pht.interact.empty_lava
tag @s remove pht.interact.anirrum_bucket
tag @s remove pht.interact.empty_anirrum
tag @s remove pht.interact.reticulum
tag @s remove pht.interact.dip_sword
tag @s remove pht.interact.dip_pickaxe
tag @s remove pht.interact.dip_axe
tag @s remove pht.interact.dip_shovel
tag @s remove pht.interact.dip_hoe

# Wine
execute if predicate pht:vanilla_item as @s[tag=pht.interact.honey_bottle] as @e[tag=pht.pitcher.empty,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/honey
execute as @s[tag=pht.interact.empty_honey] as @e[tag=pht.pitcher.honey,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/empty_honey
execute as @s[tag=pht.interact.fermented_spider_eye] as @e[tag=pht.pitcher.honey,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/fermented_spider_eye
execute as @s[tag=pht.interact.empty_fermented_spider_eye] as @e[tag=pht.pitcher.fermented_spider_eye,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/empty_fermented_spider_eye
execute as @s[tag=pht.interact.chorus_fruit] as @e[tag=pht.pitcher.fermented_spider_eye,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/make_chorus_wine
execute as @s[tag=pht.interact.sweet_berries] as @e[tag=pht.pitcher.fermented_spider_eye,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/make_sweet_berry_wine
execute as @s[tag=pht.interact.glow_berries] as @e[tag=pht.pitcher.fermented_spider_eye,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/make_glow_berry_wine
execute as @s[tag=pht.interact.empty_sweet_berry_wine] as @e[tag=pht.pitcher.sweet_berry_wine,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/empty_sweet_berry_wine
execute as @s[tag=pht.interact.empty_glow_berry_wine] as @e[tag=pht.pitcher.glow_berry_wine,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/empty_glow_berry_wine
execute as @s[tag=pht.interact.empty_chorus_wine] as @e[tag=pht.pitcher.chorus_wine,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/empty_chorus_wine
tag @s remove pht.interact.honey_bottle
tag @s remove pht.interact.empty_honey
tag @s remove pht.interact.fermented_spider_eye
tag @s remove pht.interact.empty_fermented_spider_eye
tag @s remove pht.interact.chorus_fruit
tag @s remove pht.interact.sweet_berries
tag @s remove pht.interact.glow_berries
tag @s remove pht.interact.empty_sweet_berry_wine
tag @s remove pht.interact.empty_glow_berry_wine
tag @s remove pht.interact.empty_chorus_wine

# Cheese
execute as @s[tag=pht.interact.milk_bucket] as @e[tag=pht.pitcher.empty,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/milk
execute as @s[tag=pht.interact.empty_milk] as @e[tag=pht.pitcher.milk,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/empty_milk
execute as @s[tag=pht.interact.brown_mushroom] as @e[tag=pht.pitcher.milk,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/make_mundane_cheese
execute as @s[tag=pht.interact.red_mushroom] as @e[tag=pht.pitcher.milk,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/make_potent_cheese
execute as @s[tag=pht.interact.crimson_fungus] as @e[tag=pht.pitcher.milk,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/make_blunt_cheese
execute as @s[tag=pht.interact.warped_fungus] as @e[tag=pht.pitcher.milk,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/make_trippy_cheese
execute as @s[tag=pht.interact.empty_mundane_cheese] as @e[tag=pht.pitcher.mundane_cheese,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/empty_mundane_cheese
execute as @s[tag=pht.interact.empty_potent_cheese] as @e[tag=pht.pitcher.potent_cheese,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/empty_potent_cheese
execute as @s[tag=pht.interact.empty_blunt_cheese] as @e[tag=pht.pitcher.blunt_cheese,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/empty_blunt_cheese
execute as @s[tag=pht.interact.empty_trippy_cheese] as @e[tag=pht.pitcher.trippy_cheese,sort=nearest,limit=1] run function pht:entity/corpsepitcher/insert/empty_trippy_cheese
tag @s remove pht.interact.milk_bucket
tag @s remove pht.interact.empty_milk
tag @s remove pht.interact.brown_mushroom
tag @s remove pht.interact.red_mushroom
tag @s remove pht.interact.crimson_fungus
tag @s remove pht.interact.warped_fungus
tag @s remove pht.interact.empty_mundane_cheese
tag @s remove pht.interact.empty_potent_cheese
tag @s remove pht.interact.empty_blunt_cheese
tag @s remove pht.interact.empty_trippy_cheese

# End
tag @s remove pht.interact