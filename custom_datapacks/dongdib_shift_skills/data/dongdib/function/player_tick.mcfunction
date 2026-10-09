# Player main tick loop
# Detect Shift press (Rising edge)
# d_is_sneak: 0 = unpressed previously, 1 = pressed previously
# d_curr_sneak: current tick sneak state

scoreboard players set @s d_curr_sneak 0
execute if predicate timber:is_sneaking run scoreboard players set @s d_curr_sneak 1

# Rising edge: d_curr_sneak = 1 and d_is_sneak = 0
execute if score @s d_curr_sneak matches 1 if score @s d_is_sneak matches 0 run function dongdib:internal/shift_press

# Update previous sneak state
scoreboard players operation @s d_is_sneak = @s d_curr_sneak

# If mode is active (d_mode > 0)
execute if score @s d_mode matches 1..6 run function dongdib:internal/active_tick

# Default timber and veinminer to disabled (1) if uninitialized
execute unless score @s timber.off matches 0..1 run scoreboard players set @s timber.off 1
execute unless score @s veinminer.off matches 0..1 run scoreboard players set @s veinminer.off 1

# If charging (d_charge > 0 and d_mode matches 0)
execute if score @s d_charge matches 1..9 if score @s d_mode matches 0 run function dongdib:internal/charge_tick
