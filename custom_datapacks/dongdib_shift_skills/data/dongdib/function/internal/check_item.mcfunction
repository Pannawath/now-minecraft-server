# Determine held item category for player
# mode 0: none/invalid
# mode 1: Pickaxes & Axes (Mining & Lumberjack)
# mode 2: Seed (wheat, carrot, potato, beetroot)
# mode 3: Slime block & Slime ball (Slime Radar)
# mode 4: Torch & Soul Torch (Mob Radar)
# mode 5: Clock & Compass (Utility)

scoreboard players set @s d_temp 0

# 1. Axe (Lumberjack / Timber)
execute if items entity @s weapon.mainhand #minecraft:axes run scoreboard players set @s d_temp 1

# 6. Pickaxe (Veinminer)
execute if items entity @s weapon.mainhand #minecraft:pickaxes run scoreboard players set @s d_temp 6

# 2. Seeds
execute if items entity @s weapon.mainhand minecraft:wheat_seeds run scoreboard players set @s d_temp 2
execute if items entity @s weapon.mainhand minecraft:carrot run scoreboard players set @s d_temp 2
execute if items entity @s weapon.mainhand minecraft:potato run scoreboard players set @s d_temp 2
execute if items entity @s weapon.mainhand minecraft:beetroot_seeds run scoreboard players set @s d_temp 2
execute if items entity @s weapon.mainhand minecraft:pumpkin_seeds run scoreboard players set @s d_temp 2
execute if items entity @s weapon.mainhand minecraft:melon_seeds run scoreboard players set @s d_temp 2
execute if items entity @s weapon.mainhand minecraft:torchflower_seeds run scoreboard players set @s d_temp 2
execute if items entity @s weapon.mainhand minecraft:pitcher_pod run scoreboard players set @s d_temp 2

# 3. Slime (Block or Ball)
execute if items entity @s weapon.mainhand minecraft:slime_block run scoreboard players set @s d_temp 3
execute if items entity @s weapon.mainhand minecraft:slime_ball run scoreboard players set @s d_temp 3

# 4. Torch (Normal or Soul)
execute if items entity @s weapon.mainhand minecraft:torch run scoreboard players set @s d_temp 4
execute if items entity @s weapon.mainhand minecraft:soul_torch run scoreboard players set @s d_temp 4

# 5. Clock / Compass
execute if items entity @s weapon.mainhand minecraft:clock run scoreboard players set @s d_temp 5
execute if items entity @s weapon.mainhand minecraft:compass run scoreboard players set @s d_temp 5
execute if items entity @s weapon.mainhand minecraft:recovery_compass run scoreboard players set @s d_temp 5
