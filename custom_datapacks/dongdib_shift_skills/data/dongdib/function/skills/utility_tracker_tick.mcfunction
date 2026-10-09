# Utility Tracker: Displays coordinates and visual indicator
# Run continuously while mode 5 is active

title @s actionbar [{"text":"[🧭 Tracker Active] ","color":"yellow","bold":true},{"text":"XYZ: ","color":"gray"},{"nbt":"Pos[0]","entity":"@s"},{"text":", "},{"nbt":"Pos[1]","entity":"@s"},{"text":", "},{"nbt":"Pos[2]","entity":"@s"}]
execute at @s run particle portal ~ ~0.8 ~ 0.2 0.2 0.2 0 1
