summon vindicator ~ ~ ~ {HandDropChances:[0.25F,0F],Tags:["pht.entity","pht.executioner","smithed.entity","global.ignore"],DeathLootTable:"pht:entity/executioner",PersistenceRequired:1b,Health:40f,HandItems:[{id:"minecraft:diamond_axe",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:slime_ball",Count:1b,tag:{CustomModelData:8360037}}],ArmorDropChances:[0.085F,0.085F,0.085F,-1000.000F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.attack_damage,Base:5},{Name:generic.knockback_resistance,Base:0.75},{Name:generic.movement_speed,Base:0.35}]}

loot replace entity @e[tag=pht.executioner,sort=nearest,limit=1] weapon.mainhand loot pht:item/executioner_axe

execute if score #pht.tcc pht.dummy matches 1.. run team join tcc.antivillager @e[tag=pht.executioner]
execute unless score #pht.tcc pht.dummy matches 1.. run team join pht.antivil @e[tag=pht.executioner]