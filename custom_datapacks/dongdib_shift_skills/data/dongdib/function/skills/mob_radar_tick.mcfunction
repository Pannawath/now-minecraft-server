# Mob radar tick - One-shot pulse mode with 6-second cooldown timer
# d_mob_timer counts down from 120 (6 seconds) to 0
scoreboard players remove @s d_mob_timer 1

# If timer expires, automatically turn off mode 4
execute if score @s d_mob_timer matches ..0 run scoreboard players set @s d_mode 0
execute if score @s d_mob_timer matches ..0 run title @s actionbar [{"text":"[Mob Radar Scan Finished]","color":"gray"}]
