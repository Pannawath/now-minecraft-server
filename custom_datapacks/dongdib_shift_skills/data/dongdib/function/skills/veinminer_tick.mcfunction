# Veinminer tick: while Veinminer is active, show sparkle particles and keep veinminer enabled
execute at @s run particle electric_spark ~ ~0.8 ~ 0.2 0.2 0.2 0 1
scoreboard players set @s veinminer.off 0
