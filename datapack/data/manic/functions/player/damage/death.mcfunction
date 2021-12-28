gamerule showDeathMessages false
kill @s

execute as @s[tag=manic.damage.corpsethorn] run tellraw @a {"translate":"manic.death.corpsethorn","with":[{"selector":"@s"}]}
execute as @s[tag=manic.damage.mad_fire] run tellraw @a {"translate":"death.attack.inFire","with":[{"selector":"@s"}]}
execute as @s[tag=manic.damage.eidolon] run tellraw @a {"translate":"manic.death.mindflayer","with":[{"selector":"@s"},{"selector":"@e[sort=nearest,limit=1,tag=manic.eidolon]"}]}
execute as @s[tag=manic.damage.the_keeper] run tellraw @a {"translate":"manic.death.mass","with":[{"selector":"@s"},{"selector":"@e[sort=nearest,limit=1,tag=manic.keeper]"}]}

gamerule showDeathMessages true