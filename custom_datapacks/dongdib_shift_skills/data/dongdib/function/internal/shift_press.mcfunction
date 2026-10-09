# When shift is pressed once
# First check what player is holding
function dongdib:internal/check_item

# If holding invalid item (d_temp == 0) and not active, do nothing
execute if score @s d_temp matches 0 if score @s d_mode matches 0 run return 0

# If holding eligible item (d_temp > 0) and inactive, charge up
execute if score @s d_temp matches 1..3 if score @s d_mode matches 0 run function dongdib:internal/add_charge
