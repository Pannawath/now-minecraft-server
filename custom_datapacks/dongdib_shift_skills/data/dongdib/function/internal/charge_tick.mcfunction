# Decrement charge timeout timer (10 seconds = 200 ticks)
scoreboard players remove @s d_timer 1
execute if score @s d_timer matches ..0 run function dongdib:internal/reset_charge
