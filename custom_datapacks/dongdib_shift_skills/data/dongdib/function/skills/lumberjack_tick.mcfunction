# Lumberjack tick: while Lumberjack is active, give player visual particle feedback and enable timber
execute at @s run particle sweep_attack ~ ~0.8 ~ 0.2 0.1 0.2 0 1
tag @s add timber.active
scoreboard players set @s timber.off 0
