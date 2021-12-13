# rx97
#  adapted from TCC

##################################
# Main Formula
# 10  @s
# 9   @s  = @s / 25
# 8   @s  = #damage *         @s          / 25   
# 7   @s  = #damage * (250 - #armor_calc) / 25
# 6   @s  = #damage * (250 - (min(200,        #armor_calc           )) / 25
# 1   @s  = #damage * (250 - (min(200, max( #armor_calc   , #10ATF ))) / 25
#
#  damage = #damage * (250 - (min(200, max( 10armor ÷ 5   , #10ATF ))) / 25
##################################

##################################
# ATF Formula
# 5   #10ATF
# 4   #10ATF = (10armor - #damage_toughness
# 3   #10ATF = (10armor - (400 * #damage_toughness          )
# 2   #10ATF = (10armor - (400 * damage / (#toughness_calc ))
# 
#     #10ATF = (10armor - (400 * damage / (80 + 10toughness))
##################################

# 1
scoreboard players operation #armor_calc pht.damage = #10armor pht.damage
scoreboard players operation #armor_calc pht.damage /= #5 pht.damage

# tellraw @s ["1 #armor_calc: ", {"score": {"name": "#armor_calc", "objective": "pht.damage"}, "color": "light_purple"}]

# 2 (ATF)
scoreboard players operation #toughness_calc pht.damage = #10toughness pht.damage
scoreboard players add #toughness_calc pht.damage 80

# tellraw @s ["2 #toughness_calc: ", {"score": {"name": "#toughness_calc", "objective": "pht.damage"}, "color": "yellow"}]

# 3
scoreboard players operation #damage_toughness pht.damage = #damage pht.damage
scoreboard players operation #damage_toughness pht.damage *= #100 pht.damage
scoreboard players operation #damage_toughness pht.damage /= #toughness_calc pht.damage

# tellraw @s ["3 #damage_toughness: ", {"score": {"name": "#damage_toughness", "objective": "pht.damage"}, "color": "light_purple"}]

# 4
scoreboard players operation #damage_toughness pht.damage *= #4 pht.damage

# tellraw @s ["4 #damage_toughness: ", {"score": {"name": "#damage_toughness", "objective": "pht.damage"}, "color": "yellow"}]

# 5
scoreboard players operation #10ATF pht.damage = #10armor pht.damage
scoreboard players operation #10ATF pht.damage -= #damage_toughness pht.damage

# tellraw @s ["5 #10ATF: ", {"score": {"name": "#10ATF", "objective": "pht.damage"}, "color": "light_purple"}]

# 6
scoreboard players operation #armor_calc pht.damage > #10ATF pht.damage

# tellraw @s ["6 #armor_calc: ", {"score": {"name": "#armor_calc", "objective": "pht.damage"}, "color": "yellow"}]

# 7
scoreboard players operation #armor_calc pht.damage < #200 pht.damage

# tellraw @s ["7 #armor_calc: ", {"score": {"name": "#armor_calc", "objective": "pht.damage"}, "color": "light_purple"}]

# 8
scoreboard players set @s pht.damage 250
scoreboard players operation @s pht.damage -= #armor_calc pht.damage

# tellraw @s ["8 @s: ", {"score": {"name": "@s", "objective": "pht.damage"}, "color": "yellow"}]

# 9
scoreboard players operation @s pht.damage *= #damage pht.damage

# tellraw @s ["9 @s: ", {"score": {"name": "@s", "objective": "pht.damage"}, "color": "light_purple"}]

# 10
scoreboard players operation @s pht.damage /= #25 pht.damage

# tellraw @s ["10 @s: ", {"score": {"name": "@s", "objective": "pht.damage"}, "color": "yellow"}]
