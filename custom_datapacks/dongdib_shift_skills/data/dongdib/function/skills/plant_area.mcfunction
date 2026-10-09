# Area Farmer: Harvest mature crops, auto-collect, and replant in 9x9
# 1. Harvest mature crops
function dongdib:skills/harvest_area

# 2. Instantly pick up drops into player inventory
execute at @s as @e[type=item,distance=..8] run data modify entity @s PickupDelay set value 0s
execute at @s as @e[type=item,distance=..8] run tp @s ~ ~0.5 ~

# 3. Planting sound and particles
execute at @s run playsound minecraft:item.crop.plant master @s ~ ~ ~ 1 1.0
execute at @s run particle composter ~ ~0.5 ~ 1 0.5 1 0 25

# 4. Replant available seeds
execute if items entity @s container.* minecraft:wheat_seeds run function dongdib:skills/plant_wheat
execute if items entity @s container.* minecraft:carrot run function dongdib:skills/plant_carrot
execute if items entity @s container.* minecraft:potato run function dongdib:skills/plant_potato
execute if items entity @s container.* minecraft:beetroot_seeds run function dongdib:skills/plant_beetroot
