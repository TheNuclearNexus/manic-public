advancement revoke @s only manic:technical/use_nametag

execute as @e[tag=manic.spook,tag=manic.decay,sort=nearest,limit=1] unless data entity @s {CustomName:'{"translate":"manic.entity.spook"}'} run function manic:entity/decay/remove_decay

execute as @e[type=phantom,tag=manic.decay,sort=nearest,limit=1] unless data entity @s {CustomName:'{"translate":"entity.minecraft.phantom"}'} run function manic:entity/decay/remove_decay

execute as @e[tag=manic.hex,tag=manic.decay,sort=nearest,limit=1] unless data entity @s {CustomName:'{"translate":"manic.entity.hex"}'} run function manic:entity/decay/remove_decay

execute as @e[tag=manic.revenant,tag=manic.decay,sort=nearest,limit=1] unless data entity @s {CustomName:'{"translate":"manic.entity.revenant"}'} run function manic:entity/decay/remove_decay

execute as @e[tag=manic.eidolon,tag=manic.decay,sort=nearest,limit=1] unless data entity @s {CustomName:'{"translate":"manic.entity.eidolon"}'} run function manic:entity/decay/remove_decay

execute as @e[tag=manic.mirage,tag=manic.decay,sort=nearest,limit=1] unless data entity @s {CustomName:'{"translate":"manic.entity.mirage"}'} run function manic:entity/decay/remove_decay
