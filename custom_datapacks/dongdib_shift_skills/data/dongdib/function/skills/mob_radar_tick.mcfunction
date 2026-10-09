# Mob radar tick
title @s actionbar [{"text":"* [Mob Radar Active] * ","color":"red","bold":true},{"text":"Dark Spots (Spawn Risk) Marked with Flame","color":"gold"}]
execute at @s run particle smoke ~ ~0.1 ~ 0.25 0.05 0.25 0.01 2
execute at @s run function dongdib:skills/mob_radar_scan
