# Revoke temporary OP immediately

# Return to survival position where marker is located
execute in minecraft:overworld run execute as @s at @e[type=marker,tag=c_return,tag=owner,limit=1] run tp @s ~ ~ ~
execute unless entity @e[type=marker,tag=c_return,tag=owner] in minecraft:overworld run tp @s 0 64 0
execute in minecraft:overworld run kill @e[type=marker,tag=c_return,tag=owner]

gamemode survival @s
tag @s remove in_c_world
tellraw @s {"text":"[Creative World] คุณได้กลับสู่โลก Survival ณ พิกัดเดิม พร้อมสถานะและไอเทมครบถ้วน!","color":"green"}
tellraw @s {"text":"[Creative World] ถอนสิทธิ์คำสั่งพิเศษเรียบร้อยแล้ว","color":"gray"}