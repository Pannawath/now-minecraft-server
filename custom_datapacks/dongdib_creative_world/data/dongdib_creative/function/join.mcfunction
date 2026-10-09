# Tag existing return point for this player or create new one
execute in minecraft:overworld run kill @e[type=marker,tag=c_return,tag=owner]
execute at @s run summon marker ~ ~ ~ {Tags:["c_return","owner"]}

# Grant temporary OP (Level 2 as configured in server.properties)

# Teleport to creative world ground spawn platform
execute in multiworld:creative run tp @s 0.5 64 0.5 0 0
gamemode creative @s
tag @s add in_c_world
tellraw @s {"text":"[Creative World] วาร์ปสู่โลก Creative บนพื้นสปอว์นเรียบร้อย!","color":"green"}
tellraw @s {"text":"[Creative World] ได้รับสิทธิ์คำสั่งและ WorldEdit ชั่วคราวสำหรับการสร้าง (สามารถเปลี่ยนโหมดเป็น /gamemode survival หรือ creative ได้ตามต้องการ)","color":"aqua"}
tellraw @s {"text":"[Creative World] พิมพ์ /c leave เพื่อกลับจุดเดิมในโลก Survival พร้อมไอเทมและเลเวลเดิม","color":"yellow"}