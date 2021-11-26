advancement revoke @s only pht:consume/corpse_sap
execute unless score @s pht.sanity matches ..1111 run scoreboard players add @s pht.sanity 120
execute if score @s pht.sanity matches ..1111 run scoreboard players add @s pht.sanity 60

effect clear @s wither
effect clear @s mining_fatigue
effect clear @s slowness
effect clear @s weakness
effect clear @s blindness
effect clear @s bad_omen
effect clear @s nausea
effect clear @s poison
effect clear @s hunger
effect clear @s unluck
effect clear @s levitation