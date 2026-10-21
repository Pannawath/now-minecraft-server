# now-minecraft-server

**High-Performance Clean Minecraft Survival Server** running Fabric 26.3

---

## Server Info

| Key | Value |
|---|---|
| Minecraft Version | 26.3 (Fabric Loader 0.19.5, Protocol 777, World 5023) |
| Server Engine | Fabric |
| Host Spec | AMD FX-6350, 16 GB RAM, 440 GB SSD |
| Heap | 12 GB (-Xmx12G -Xms4G) |
| View Distance | 12 chunks |
| Simulation Distance | 24 chunks |
| Game Port | 25565 (TCP) |
| RCON Port | 25575 (TCP) |

---

## Optimization & Performance Stack (ระบบเร่งความเร็วลดความหน่วง)

1. **Lithium:** ปรับแต่งฟิสิกส์, AI สิ่งมีชีวิต และการโหลดบล็อกให้กิน CPU ต่ำสุด
2. **C2ME (Concurrent Chunk Management Engine):** แยกการโหลดและสร้าง Chunks ทำงานพร้อมกันบนหลาย CPU Cores แบบ Asynchronous
3. **FerriteCore:** ลดการใช้หน่วยความจำ RAM ของบล็อกและโมเดลมากกว่า 40%
4. **Krypton:** ปรับปรุง Network I/O Stack ป้องกันการหน่วงจากแพ็กเก็ตเน็ตเวิร์ก
5. **Alternate Current:** คำนวณ Redstone เร็วขึ้นและไม่กระตุกเธรดหลัก
6. **ServerCore:** Dynamic Entity Culling, Dynamic View Distance และลดภาระ Tick
7. **VMP (Versatile Multithreaded Processing):** กระจายการประมวลผลระบบ Tracking และ Chunks
8. **zFastNoise + zConfig:** เร่งความเร็วการประมวลผลคณิตศาสตร์ Noise การกำเนิดโลก
9. **Drop Stacker:** รวบรวมไอเทมที่ตกบนพื้นให้เป็นกองเดียวกันอัตโนมัติ ลด Entity Lag
10. **Chunky:** เครื่องมือพรีโหลด Chunks ป้องกันเซิร์ฟเวอร์สะดุดขณะผู้เล่นบินสำรวจโลก

---

## Datapacks (ระบบช่วยเหลือการเล่น)

### 1. dongdib_shift_skills (ระบบสกิลกด Shift)
- กดย่อตัว (Shift) ต่อเนื่อง 10 ครั้ง เพื่อเปิด/ปิดการทำงานของสกิลตามไอเทมที่ถือ:
  - **ถือขวาน (Mainhand/Offhand):** สลับเปิด/ปิด Lumberjack (โค่นต้นไม้ทั้งต้น)
  - **ถืออีเต้อ (Mainhand/Offhand):** สลับเปิด/ปิด Veinminer (ขุดแร่ทั้งสาย)
  - **ถือเข็มทิศ / นาฬิกา:** สลับเปิด/ปิด Utility Tracker แสดงพิกัด X Y Z และทิศทางบน Actionbar

### 2. profets_timber
- ระบบตัดไม้โค่นทั้งต้นพร้อมแอนิเมชันไม้ร่วง สลับเปิด/ปิดได้ด้วยตนเองผ่าน /trigger timber หรือผ่านสกิล Shift

### 3. profets_veinminer
- ระบบขุดแร่ทั้งสาย สลับเปิด/ปิดได้ด้วยตนเองผ่าน /trigger veinminer หรือผ่านสกิล Shift
