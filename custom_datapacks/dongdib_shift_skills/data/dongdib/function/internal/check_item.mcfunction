# Determine held item category for player (mainhand or offhand)
# mode 0: none/invalid
# mode 1: Axe (Timber / Lumberjack)
# mode 2: Seed (Area Planter)
# mode 3: Slime block & Slime ball (Slime Radar, Y < 40)
# mode 4: Torch & Soul Torch (Mob Radar)
# mode 5: Clock & Compass (Utility)
# mode 6: Pickaxe (Veinminer)

scoreboard players set @s d_temp 0

# 1. Axe (Lumberjack / Timber)
execute if items entity @s weapon.mainhand #minecraft:axes run scoreboard players set @s d_temp 1
execute if items entity @s weapon.offhand #minecraft:axes run scoreboard players set @s d_temp 1

# 6. Pickaxe (Veinminer)
execute if items entity @s weapon.mainhand #minecraft:pickaxes run scoreboard players set @s d_temp 6
execute if items entity @s weapon.offhand #minecraft:pickaxes run scoreboard players set @s d_temp 6

# 2. Seeds & Hoes (Area Farmer / Planter & Harvester)
execute if items entity @s weapon.mainhand #minecraft:hoes run scoreboard players set @s d_temp 2
execute if items entity @s weapon.offhand #minecraft:hoes run scoreboard players set @s d_temp 2
execute if items entity @s weapon.mainhand minecraft:wheat_seeds run scoreboard players set @s d_temp 2
execute if items entity @s weapon.offhand minecraft:wheat_seeds run scoreboard players set @s d_temp 2
execute if items entity @s weapon.mainhand minecraft:carrot run scoreboard players set @s d_temp 2
execute if items entity @s weapon.offhand minecraft:carrot run scoreboard players set @s d_temp 2
execute if items entity @s weapon.mainhand minecraft:potato run scoreboard players set @s d_temp 2
execute if items entity @s weapon.offhand minecraft:potato run scoreboard players set @s d_temp 2
execute if items entity @s weapon.mainhand minecraft:beetroot_seeds run scoreboard players set @s d_temp 2
execute if items entity @s weapon.offhand minecraft:beetroot_seeds run scoreboard players set @s d_temp 2
execute if items entity @s weapon.mainhand minecraft:pumpkin_seeds run scoreboard players set @s d_temp 2
execute if items entity @s weapon.offhand minecraft:pumpkin_seeds run scoreboard players set @s d_temp 2
execute if items entity @s weapon.mainhand minecraft:melon_seeds run scoreboard players set @s d_temp 2
execute if items entity @s weapon.offhand minecraft:melon_seeds run scoreboard players set @s d_temp 2
execute if items entity @s weapon.mainhand minecraft:torchflower_seeds run scoreboard players set @s d_temp 2
execute if items entity @s weapon.offhand minecraft:torchflower_seeds run scoreboard players set @s d_temp 2
execute if items entity @s weapon.mainhand minecraft:pitcher_pod run scoreboard players set @s d_temp 2
execute if items entity @s weapon.offhand minecraft:pitcher_pod run scoreboard players set @s d_temp 2

# 3. Slime (Block or Ball) - only triggers if Y < 40
execute if items entity @s weapon.mainhand minecraft:slime_block run function dongdib:internal/check_slime_y
execute if items entity @s weapon.mainhand minecraft:slime_ball run function dongdib:internal/check_slime_y
execute if items entity @s weapon.offhand minecraft:slime_block run function dongdib:internal/check_slime_y
execute if items entity @s weapon.offhand minecraft:slime_ball run function dongdib:internal/check_slime_y

# 4. Torch (Normal or Soul)
execute if items entity @s weapon.mainhand minecraft:torch run scoreboard players set @s d_temp 4
execute if items entity @s weapon.offhand minecraft:torch run scoreboard players set @s d_temp 4
execute if items entity @s weapon.mainhand minecraft:soul_torch run scoreboard players set @s d_temp 4
execute if items entity @s weapon.offhand minecraft:soul_torch run scoreboard players set @s d_temp 4

# 5. Clock / Compass
execute if items entity @s weapon.mainhand minecraft:clock run scoreboard players set @s d_temp 5
execute if items entity @s weapon.offhand minecraft:clock run scoreboard players set @s d_temp 5
execute if items entity @s weapon.mainhand minecraft:compass run scoreboard players set @s d_temp 5
execute if items entity @s weapon.offhand minecraft:compass run scoreboard players set @s d_temp 5
execute if items entity @s weapon.mainhand minecraft:recovery_compass run scoreboard players set @s d_temp 5
execute if items entity @s weapon.offhand minecraft:recovery_compass run scoreboard players set @s d_temp 5
