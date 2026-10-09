# Slime radar tick countdown and border particle loop
scoreboard players remove @s d_slime_timer 1
execute if score @s d_slime_timer matches 1.. if score @s d_temp matches 1 at @s run function dongdib:skills/render_chunk_border
execute if score @s d_slime_timer matches 0 run title @s actionbar [{text:"[Slime Radar Scan Complete]",color:"aqua"}]
