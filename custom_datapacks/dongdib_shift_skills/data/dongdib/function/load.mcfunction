# Dongdib Shift Skills Load
scoreboard objectives add d_charge dummy
scoreboard objectives add d_timer dummy
scoreboard objectives add d_mode dummy
scoreboard objectives add d_is_sneak dummy
scoreboard objectives add d_curr_sneak dummy
scoreboard objectives add d_sneak_stat custom:sneak_time
scoreboard objectives add d_temp dummy
scoreboard objectives add d_slime_timer dummy
scoreboard objectives add d_farm_timer dummy
scoreboard objectives add d_mob_timer dummy

# Default constants
scoreboard players set #c10 d_temp 10
scoreboard players set #c200 d_temp 200

# Ensure timber & veinminer objectives exist
scoreboard objectives add timber.off dummy
scoreboard objectives add veinminer.off dummy

# Default all current players to disabled (1) if not explicitly set
execute as @a unless score @s timber.off matches 0..1 run scoreboard players set @s timber.off 1
execute as @a unless score @s veinminer.off matches 0..1 run scoreboard players set @s veinminer.off 1

tellraw @a [{"text":"[Dongdib Skills] ","color":"gold","bold":true},{"text":"Loaded successfully!","color":"green"}]
