# Mob radar tick - throttled to run scan every 10 ticks (0.5s) to prevent lag
title @s actionbar [{"text":"* [Mob Radar Active] * ","color":"red","bold":true},{"text":"Dark Spots (Spawn Risk) Marked with Flame","color":"gold"}]

scoreboard players add @s d_mob_timer 1
execute if score @s d_mob_timer matches 10.. at @s run particle smoke ~ ~0.1 ~ 0.2 0.05 0.2 0.01 2
execute if score @s d_mob_timer matches 10.. at @s run function dongdib:skills/mob_radar_scan
execute if score @s d_mob_timer matches 10.. run scoreboard players set @s d_mob_timer 0
