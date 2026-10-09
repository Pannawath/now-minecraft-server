# Triggered upon 10-shift activation with seeds in main hand
execute at @s run playsound minecraft:item.crop.plant master @s ~ ~ ~ 1 1.0
execute at @s run particle composter ~ ~0.5 ~ 1 0.5 1 0 30
# Check which seed
execute if items entity @s weapon.mainhand minecraft:wheat_seeds run function dongdib:skills/plant_wheat
execute if items entity @s weapon.mainhand minecraft:carrot run function dongdib:skills/plant_carrot
execute if items entity @s weapon.mainhand minecraft:potato run function dongdib:skills/plant_potato
execute if items entity @s weapon.mainhand minecraft:beetroot_seeds run function dongdib:skills/plant_beetroot
