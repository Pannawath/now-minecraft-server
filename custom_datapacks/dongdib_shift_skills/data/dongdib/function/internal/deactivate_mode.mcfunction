# Deactivate active skill
scoreboard players set @s d_mode 0
scoreboard players set @s d_charge 0
scoreboard players set @s d_timer 0

# Disable Timber & Veinminer by default
scoreboard players set @s timber.off 1
scoreboard players set @s veinminer.off 1
tag @s remove timber.active

execute at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 0.8 1.0
title @s actionbar [{text:"o o o o o ",color:"gray"},{text:"[Skill DEACTIVATED]",color:"dark_gray"}]
