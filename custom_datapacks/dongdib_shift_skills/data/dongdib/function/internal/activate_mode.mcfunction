# Activate mode corresponding to held item
# Set d_mode = d_temp
scoreboard players operation @s d_mode = @s d_temp
scoreboard players set @s d_charge 0
scoreboard players set @s d_timer 200

# Level up / activation chime sound
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.2
execute at @s run particle enchant ~ ~1 ~ 0.5 0.5 0.5 1 50

# Mode-specific activation announcements (SNBT)
execute if score @s d_mode matches 1 run title @s actionbar [{text:"* * * * * ",color:"gold",bold:true},{text:"[Lumberjack ACTIVATED]",color:"gold",bold:true}]
execute if score @s d_mode matches 2 run title @s actionbar [{text:"* * * * * ",color:"green",bold:true},{text:"[Area Planter ACTIVATED]",color:"green",bold:true}]
execute if score @s d_mode matches 3 run title @s actionbar [{text:"* * * * * ",color:"aqua",bold:true},{text:"[Slime Radar ACTIVATED]",color:"aqua",bold:true}]
execute if score @s d_mode matches 4 run title @s actionbar [{text:"* * * * * ",color:"red",bold:true},{text:"[Mob Radar ACTIVATED]",color:"red",bold:true}]
execute if score @s d_mode matches 5 run title @s actionbar [{text:"* * * * * ",color:"yellow",bold:true},{text:"[Utility Tracker ACTIVATED]",color:"yellow",bold:true}]
execute if score @s d_mode matches 6 run title @s actionbar [{text:"* * * * * ",color:"gold",bold:true},{text:"[Veinminer ACTIVATED]",color:"gold",bold:true}]

# Enable Timber (mode 1) or Veinminer (mode 6)
execute if score @s d_mode matches 1 run scoreboard players set @s timber.off 0
execute if score @s d_mode matches 6 run scoreboard players set @s veinminer.off 0

# Trigger immediate one-time actions
execute if score @s d_mode matches 2 at @s run scoreboard players set @s d_farm_timer 60
execute if score @s d_mode matches 2 at @s run function dongdib:skills/plant_area
execute if score @s d_mode matches 3 at @s run function dongdib:skills/slime_radar_init
execute if score @s d_mode matches 4 at @s run scoreboard players set @s d_mob_timer 120
execute if score @s d_mode matches 4 at @s run function dongdib:skills/mob_radar_scan
