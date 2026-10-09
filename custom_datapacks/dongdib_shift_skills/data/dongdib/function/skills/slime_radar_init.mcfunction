# Initialize Slime Radar check
# Set 15 seconds timer (300 ticks)
scoreboard players set @s d_slime_timer 300
execute at @s run playsound minecraft:entity.slime.squish master @s ~ ~ ~ 1 1.2
execute at @s run function dongdib:skills/slime_radar_check_chunk
