# Only set mode 3 if player Y < 40
# In Minecraft volume selectors, positioned y=-64 with dy=103 covers Y from -64 up to 39
execute positioned ~ -64 ~ if entity @s[dy=103] run scoreboard players set @s d_temp 3
