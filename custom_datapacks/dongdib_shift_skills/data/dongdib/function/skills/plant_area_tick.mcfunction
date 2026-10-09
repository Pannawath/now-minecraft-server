# Farmer / Planter & Harvester tick behavior
title @s actionbar [{"text":"* [Farmer Active] * ","color":"green","bold":true},{"text":"Auto Harvesting & Replanting","color":"yellow"}]
execute at @s run particle composter ~ ~0.2 ~ 0.3 0.1 0.3 0 1

# Run harvest & replant every 10 ticks (0.5s)
scoreboard players add @s d_farm_timer 1
execute if score @s d_farm_timer matches 10.. at @s run function dongdib:skills/plant_area
execute if score @s d_farm_timer matches 10.. run scoreboard players set @s d_farm_timer 0
