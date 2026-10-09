# Check if player is still holding required item for current active mode
function dongdib:internal/check_item

# If d_temp == d_mode, reset the 10-second idle countdown
execute if score @s d_temp = @s d_mode run scoreboard players set @s d_timer 200

# If d_temp != d_mode, countdown timer ticks down
execute unless score @s d_temp = @s d_mode run scoreboard players remove @s d_timer 1

# If countdown expires, disable mode
execute if score @s d_timer matches ..0 run function dongdib:internal/deactivate_mode

# Continuous skill behaviors while active
execute if score @s d_mode matches 1 run function dongdib:skills/lumberjack_tick
execute if score @s d_mode matches 3 run function dongdib:skills/slime_radar_tick
execute if score @s d_mode matches 4 run function dongdib:skills/mob_radar_tick
execute if score @s d_mode matches 5 run function dongdib:skills/utility_tracker_tick
execute if score @s d_mode matches 6 run function dongdib:skills/veinminer_tick
