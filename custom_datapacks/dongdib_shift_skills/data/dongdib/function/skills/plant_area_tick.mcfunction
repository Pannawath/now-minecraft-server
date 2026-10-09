# Area Farmer tick - One-shot pulse mode
# d_farm_timer counts down from 60 (3 seconds) to 0
scoreboard players remove @s d_farm_timer 1

# If timer expires, automatically turn off mode 2
execute if score @s d_farm_timer matches ..0 run scoreboard players set @s d_mode 0
