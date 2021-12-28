execute anchored eyes if score @s manic.use_coas matches 1.. run function manic:item/use_coas

execute if score @s manic.sword matches 1.. run function manic:item/anirrum/sword
execute if score @s manic.pickaxe matches 1.. run function manic:item/anirrum/pickaxe
execute if score @s manic.axe matches 1.. run function manic:item/anirrum/axe
execute if score @s manic.shovel matches 1.. run function manic:item/anirrum/shovel
execute if score @s manic.hoe matches 1.. run function manic:item/anirrum/hoe

execute if score @s manic.n.sword matches 1.. run function manic:item/anirrum/nether/sword
execute if score @s manic.n.pickaxe matches 1.. run function manic:item/anirrum/nether/pickaxe
execute if score @s manic.n.axe matches 1.. run function manic:item/anirrum/nether/axe
execute if score @s manic.n.shovel matches 1.. run function manic:item/anirrum/nether/shovel
execute if score @s manic.n.hoe matches 1.. run function manic:item/anirrum/nether/hoe

execute if score @s manic.axetime matches 1.. run function manic:item/haunted_axe/tick
execute if score @s manic.axetime matches 1 run function manic:item/haunted_axe/unproc

execute if predicate manic:time/new_moon_end if score @s manic.sanity matches ..2222 if score @s manic.nm_death matches 12000.. if score #manic.dragon_beat manic.dummy matches 1 if score #manic.wither_beat manic.dummy matches 1 if predicate manic:location/overworld run advancement grant @s only manic:mania/new_moon

execute if score @s manic.bow matches 1.. run function manic:item/ichor/shoot
execute if score @s manic.crossbow matches 1.. run function manic:item/ichor/shoot