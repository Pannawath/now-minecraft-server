# Increment charge
scoreboard players add @s d_charge 1
# Reset timeout window to 10 seconds (200 ticks)
scoreboard players set @s d_timer 200

# Play note block ding sound (pitch increases with charge)
execute at @s if score @s d_charge matches 1..2 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.8
execute at @s if score @s d_charge matches 3..4 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.0
execute at @s if score @s d_charge matches 5..6 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.2
execute at @s if score @s d_charge matches 7..8 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.5
execute at @s if score @s d_charge matches 9 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.8

# Display Actionbar 5 dots using SNBT format identical to Veinminer
execute if score @s d_charge matches 1..2 run title @s actionbar [{text:"* ",color:"green"},{text:"o o o o",color:"gray"},{text:"  [1/5]",color:"yellow"}]
execute if score @s d_charge matches 3..4 run title @s actionbar [{text:"* * ",color:"green"},{text:"o o o",color:"gray"},{text:"  [2/5]",color:"yellow"}]
execute if score @s d_charge matches 5..6 run title @s actionbar [{text:"* * * ",color:"green"},{text:"o o",color:"gray"},{text:"  [3/5]",color:"yellow"}]
execute if score @s d_charge matches 7..8 run title @s actionbar [{text:"* * * * ",color:"green"},{text:"o",color:"gray"},{text:"  [4/5]",color:"yellow"}]
execute if score @s d_charge matches 9 run title @s actionbar [{text:"* * * * ",color:"green"},{text:"o",color:"gray"},{text:"  [READY!]",color:"gold"}]

# When reaching 10 presses, activate mode!
execute if score @s d_charge matches 10.. run function dongdib:internal/activate_mode
