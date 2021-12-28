function manic:entity/executioner/spawn
execute if predicate manic:chance/coinflip run tp @e[tag=manic.executioner,sort=nearest,limit=1] ~ ~-512 ~

fill ~ ~ ~ ~ ~1 ~ air