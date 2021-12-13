advancement revoke @s only pht:haunted_axe

execute store result score @s pht.health run data get entity @s Health
execute unless score @s pht.axetime matches 1.. if score @s pht.health matches 10.. if predicate pht:chance/haunted_axe_proc run function pht:item/haunted_axe/proc
execute unless score @s pht.axetime matches 1.. if score @s pht.health matches 2..10 if predicate pht:chance/haunted_axe_proc_low run function pht:item/haunted_axe/proc
execute unless score @s pht.axetime matches 1.. if score @s pht.health matches ..2 run function pht:item/haunted_axe/proc