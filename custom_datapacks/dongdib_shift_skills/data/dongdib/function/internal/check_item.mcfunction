# Determine held item category for player (mainhand or offhand)
# mode 0: none/invalid
# mode 1: Axe (Timber / Lumberjack)
# mode 2: Clock & Compass (Utility Tracker)
# mode 3: Pickaxe (Veinminer)

scoreboard players set @s d_temp 0

# 1. Axe (Lumberjack / Timber)
execute if items entity @s weapon.mainhand #minecraft:axes run scoreboard players set @s d_temp 1
execute if items entity @s weapon.offhand #minecraft:axes run scoreboard players set @s d_temp 1

# 3. Pickaxe (Veinminer)
execute if items entity @s weapon.mainhand #minecraft:pickaxes run scoreboard players set @s d_temp 3
execute if items entity @s weapon.offhand #minecraft:pickaxes run scoreboard players set @s d_temp 3

# 2. Clock / Compass (Utility Tracker)
execute if items entity @s weapon.mainhand minecraft:clock run scoreboard players set @s d_temp 2
execute if items entity @s weapon.offhand minecraft:clock run scoreboard players set @s d_temp 2
execute if items entity @s weapon.mainhand minecraft:compass run scoreboard players set @s d_temp 2
execute if items entity @s weapon.offhand minecraft:compass run scoreboard players set @s d_temp 2
execute if items entity @s weapon.mainhand minecraft:recovery_compass run scoreboard players set @s d_temp 2
execute if items entity @s weapon.offhand minecraft:recovery_compass run scoreboard players set @s d_temp 2
