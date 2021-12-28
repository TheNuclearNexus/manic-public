scoreboard players set @s manic.satisfied 0
data merge storage manic:storage {min: 1, max: 4}

# Save input parameters as scores
execute store result score #min manic.default run data get storage manic:storage min
execute store result score #max manic.default run data get storage manic:storage max
scoreboard players operation #max manic.default -= #min manic.default
scoreboard players add #max manic.default 1

# Xn+1 = (aXn + c) mod m
scoreboard players operation #lcg manic.default *= #lcg_a manic.default
scoreboard players operation #lcg manic.default += #lcg_c manic.default
scoreboard players operation #lcg manic.default %= #lcg_m manic.default

# Trim "low quality" bits
scoreboard players operation $out manic.default = #lcg manic.default
scoreboard players operation $out manic.default /= #8 manic.default

# Get within desired range
scoreboard players operation $out manic.default %= #max manic.default
scoreboard players operation $out manic.default += #min manic.default

scoreboard players operation @s manic.crave = $out manic.default
