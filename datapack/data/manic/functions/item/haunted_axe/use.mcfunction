advancement revoke @s only manic:technical/haunted_axe

execute store result score @s manic.health run data get entity @s Health
execute unless score @s manic.axetime matches 1.. if score @s manic.health matches 10.. if predicate manic:chance/haunted_axe_proc run function manic:item/haunted_axe/proc
execute unless score @s manic.axetime matches 1.. if score @s manic.health matches 2..10 if predicate manic:chance/haunted_axe_proc_low run function manic:item/haunted_axe/proc
execute unless score @s manic.axetime matches 1.. if score @s manic.health matches ..2 run function manic:item/haunted_axe/proc