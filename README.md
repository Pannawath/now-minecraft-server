# now-minecraft-server

**iSMP-style Minecraft survival server** running Fabric 26.3  
Inspired by [iSMP by SteveKunG](https://gist.github.com/SteveKunG/52087253c8411b621fcb8724cf00b0b6)

---

## Server Info

| Key | Value |
|---|---|
| Minecraft Version | 26.3 (Fabric Loader 0.19.5, Protocol 777, World 5023) |
| World Seed | `-4265238830911723869` (Locked in `server.properties`) |
| Server Engine | Fabric |
| Host Spec | AMD FX-6350, 16 GB RAM, 440 GB SSD |
| Heap | 12 GB (-Xmx12G -Xms4G) |
| View Distance | 7 chunks |
| Simulation Distance | 5 chunks |
| Game Port | `25565` (TCP) |
| RCON Port | `25575` (TCP) |

---

## Project Structure (โครงสร้างไฟล์โปรเจกต์)

```text
pannawat-minecraft-server/
├── config/                         # ไฟล์คอนฟิกของม็อดต่างๆ
│   ├── sit!/
│   │   ├── server-config.json     # ตั้งค่าบล็อกที่นั่งได้ (stairs, slabs, carpets, full-blocks)
│   │   └── sitting-config.json    # ตั้งค่าการนั่ง (hand-sitting: false)
│   ├── TabTPS/
│   │   └── display-configs/default.conf # คอนฟิกการแสดงผล TPS/MSPT
│   ├── dimensional-inventories/   # คอนฟิกแยกกระเป๋าและช่องเก็บของตามมิติโลก
│   │   └── v2/config/main/dimension-pools.json
│   ├── havingablast.json          # คอนฟิกการซ่อมแซมบล็อกระเบิดอัตโนมัติ
│   ├── image2map.json             # คอนฟิกการสร้างแผนที่รูปภาพ
│   ├── servercore/                # คอนฟิกปรับแต่งประสิทธิภาพและ Tick
│   ├── skinsrestorer/             # คอนฟิกจัดการสกินออฟไลน์
│   └── tab/                       # คอนฟิกแท็บลิสต์ หัว/ท้ายกระดาน
├── custom_datapacks/               # ซอร์สโค้ด Datapack ที่พัฒนาขึ้นเฉพาะเซิร์ฟเวอร์
│   └── dongdib_shift_skills/      # ระบบสกิลกด Shift (Lumberjack, Utility Tracker, Veinminer)
├── datapacks/                      # ชุด Datapacks (.zip) ประจำเซิร์ฟเวอร์
│   ├── FullGhastAhead-1.0.0.zip   # ระบบขี่ Ghast และปรับความเร็ว
│   ├── dongdib_custom_drops.zip   # ดรอปไอเทมพิเศษ (Elytra, หัวมังกร, กล่อง Shulker)
│   ├── dongdib_qol_mechanics.zip  # ระบบ QoL (หายใจในฝน, ป้ายชื่อม็อบ, นอนคนเดียว, รีเฟรชสกิน)
│   ├── dongdib_shift_skills.zip   # สกิลกด Shift (Lumberjack, Utility Tracker, Veinminer ไร้แล็ก)
│   ├── profets_timber.zip         # ระบบตัดไม้ทั้งต้นพร้อมแอนิเมชัน
│   ├── profets_veinminer.zip      # ระบบขุดแร่ทั้งสาย
│   └── vanilla_tweaks_suite.zip   # ระบบ AFK Display และ Cauldron Concrete
├── carpet.conf                     # กฎการทำงานของ Fabric Carpet
├── mods-list.txt                   # รายชื่อม็อดที่ติดตั้งทั้งหมดในเซิร์ฟเวอร์
├── server.properties               # การตั้งค่าเซิร์ฟเวอร์หลัก (Seed ถาวร, OP Level 2)
└── README.md                       # เอกสารและคู่มือการใช้งานเซิร์ฟเวอร์
```

---

## Mods (ม็อดที่ติดตั้งในระบบ)

| Mod | Version | Purpose |
|---|---|---|
| Fabric API | 0.162.0+26.3 | Core mod loader API |
| Lithium | 0.26.2+mc26.3 | General server optimization |
| C2ME | mc26.3-0.4.2-alpha.0.90 | Multi-threaded chunk loading & generation |
| Alternate Current | mc26.3-1.9.0 | Faster, lag-free redstone calculations |
| FerriteCore | 9.0.0 | Memory usage reduction |
| Krypton | 0.3.2 | Networking stack optimization |
| ServerCore | 1.5.20+26.3 | Tick optimizations, entity culling |
| Chunky | 1.5.3 | Pre-generate chunks on demand |
| Fabric Carpet | 26.3+v260915 | Server rules, `/tick`, `/player`, debug tools |
| Multiworld Bundle (Fantasy) | 1.14.2 (0.8.4+26.3) | จัดการสร้างและโหลดมิติโลกเสริม (Creative World: `multiworld:creative`) |
| Dimensional Inventories | 2.2.2+26.3 | แยกกระเป๋า ไอเทม หลอดอาหาร เลเวล ระหว่างโลก Survival และ Creative |
| WorldEdit | 7.4.6-beta-02 | เครื่องมือปรับแต่งพื้นที่และบล็อกสำหรับผู้ดูแลระบบ (OP) |
| Servux | 26.3-0.12.2 | Server-side litematica support |
| Syncmatica | 26.3-0.3.20 | Share & sync litematica schematics |
| TabTPS | 1.4.2 | Show TPS/MSPT/ping in tab list & action bar |
| TAB | 6.2.0 | Tab list & player nametag management (ปรับแต่ง Refresh Interval ลดโหลด Tick) |
| Drop Stacker | 1.2.1 | Automatically merge dropped items into stacks to reduce lag |
| Fabric Language Kotlin | 1.14.1+kotlin.2.4.20 | Required Kotlin runtime for Fabric mods |
| SkinsRestorer | 15.12.6 | Offline-mode custom skins without cooldown |
| Sit! | 1.2.6.4+26.3 | Sitting engine (right-click disabled; via `/sit` command only) |
| OtterLib | 0.4.0.2+26.3 | Core library required for Sit! |
| Image2Map | 0.15.0+26.3 | Create custom image maps/posters via `/image2map create` |
| No Chat Reports | 26.3-v2.21.0 | Remove chat report signatures |
| Having a Blast | 0.2.8+26.3 | Cartoon explosions & auto-healing craters (Creeper/TNT/Wither/etc.) |
| Spark | 1.10.187 | วิเคราะห์ประสิทธิภาพ CPU, RAM, TPS, MSPT และ Garbage Collection |
| Command Aliases | 1.1.0+mc26.3 | สร้างทางลัดคำสั่งและแม็ปคำสั่งลัด (`/help`, etc.) |

---

## Datapacks

### 1. `dongdib_shift_skills` (ระบบสกิลกด Shift ต่อเนื่อง)
- กดย่อตัว (Shift) ติดต่อกัน 10 ครั้ง เพื่อเปิดใช้งานสกิลตามไอเทมที่ถือในมือหลักหรือมือซ้าย (Mainhand / Offhand):
  1. **Lumberjack (ขวานทุกระดับ):** สลับเปิด/ปิดระบบโค่นต้นไม้ทั้งต้น
  2. **Utility Tracker (เข็มทิศ / นาฬิกา):** แสดงพิกัด X Y Z และทิศทางบน Actionbar ตลอดเวลาที่ถือไอเทม
  3. **Veinminer (พลั่ว / อีเต้อทุกระดับ):** สลับเปิด/ปิดระบบขุดแร่ทั้งสายรายบุคคล

### 2. `FullGhastAhead-1.0.0` (Full Ghast Ahead)
- ใส่ Saddle (อานม้า) ขี่ Ghast บินบนท้องฟ้าได้ โดยคลิกขวาใส่ Ghast เพื่อสวมอาน แล้วคลิกขวาเพื่อขึ้นขี่ (Spacebar เพื่อบินขึ้น, WASD เพื่อบังคับทิศทาง, Shift เพื่อลง)
- ปรับความเร็วในการบินได้ผ่านคำสั่ง `/function full_ghast_ahead:settings` หรือกำหนดตัวเลขตรง เช่น `/function full_ghast_ahead:set {speed:2.0}`

### 3. `dongdib_custom_drops`
- Ender Dragon ดรอป Elytra + Dragon Head ทุกครั้งที่ตาย
- Shulker ดรอป 2 Shells เสมอ + โอกาส 25% ดรอป Shulker Box ทั้งกล่อง
- ผู้เล่นดรอป Player Head เมื่อตาย

### 4. `dongdib_qol_mechanics`
- **One Player Sleep:** นอนข้ามคืนได้เพียงคนเดียว (`playersSleepingPercentage 1`)
- สัตว์น้ำหายใจในสายฝนได้เมื่อขึ้นมาบนบก
- ปลาไม่ว่ายหนีเมื่อผู้เล่นย่อตัว (Sneak)
- คลิกขวาแปลง Farmland ด้วยพลั่ว/ที่ขุดเพื่อเปลี่ยนกลับเป็นดิน
- เรือปีนบล็อกพิเศษ (Dirt Path, Soul Sand, Snow Layer)
- สั่งการป้ายชื่อม็อบ: `_show`, `_clear`, `_baby`, `_silent`
- **Skin Persistence on Rejoin:** ตรวจจับการเข้าเซิร์ฟเวอร์ใหม่และสั่งรีเฟรชสกินอัตโนมัติภายใน 2 วินาที ป้องกันปัญหาสกินหาย

### 5. `profets_timber` & `profets_veinminer`
- โค่นต้นไม้และขุดแร่ทั้งสายแบบแอนิเมชัน สามารถเปิด/ปิดเฉพาะตัวผู้เล่นได้ด้วย `/trigger timber` และ `/trigger veinminer`

### 6. `vanilla_tweaks_suite`
- **AFK Display:** แสดงสถานะ [AFK] บนหัวผู้เล่นเมื่อไม่ได้ขยับตัว
- **Cauldron Concrete:** โยนผง Concrete Powder ลงหม้อต้มน้ำระดับน้ำเต็ม เปลี่ยนเป็นบล็อก Concrete ทันที

---

## Carpet Rules

ตั้งค่าไว้ใน `world/carpet.conf`:

| Rule | Value | Effect |
|---|---|---|
| stackableShulkerBoxes | 64 | วางซ้อนกล่อง Shulker Box ในช่องเก็บของได้สูงสุด 64 ชิ้น |
| flippinCactus | true | ใช้ต้นกระบองเพชรหมุนทิศทางบล็อกได้ |
| renewableSponges | true | ฟองน้ำเกิดใหม่ได้จากการกำจัด Elder Guardian |
| commandPlayer | true | เปิดใช้งานคำสั่ง `/player` สำหรับเสกบอทจำลอง |
| commandTick | true | เปิดใช้งานคำสั่ง `/tick` สำหรับเร่ง/หยุดเวลาเกม |
| commandLog | true | เปิดใช้งานคำสั่ง `/log` สำหรับมอนิเตอร์อีเวนต์ |
| huskSpawningInTemples | true | ให้ Husk เกิดใน Desert Temple ได้ |
| missingTools | true | อนุญาตให้สลับเครื่องมือขุดเจาะที่เหมาะสมได้เร็วขึ้น |

---

## Server Commands (คำสั่งทั้งหมดที่ใช้งานได้ในเซิร์ฟเวอร์)

### 0. In-Game Help Menu (ระบบคู่มือช่วยเหลือในเกมแบบหลายหน้า)
ผู้เล่นทุกคนสามารถเปิดอ่านคู่มือคำสั่งในเกมได้ตลอดเวลา โดยแบ่งออกเป็นหน้าๆ พร้อมปุ่มกดคลิกเปลี่ยนหน้าได้ทันที:

| คำสั่ง | คำอธิบาย |
|---|---|
| `/help` หรือ `/help 1` | เปิดหน้าคู่มือหน้า 1 (ระบบการเล่น, คำสั่งทั่วไป, สกิน, โค่นต้นไม้, ขุดแร่, สกิล Shift) |
| `/help 2` | เปิดหน้าคู่มือหน้า 2 (ยานพาหนะ Ghast ปรับสปีด, บอท Carpet AFK, วาดแผนที่, ตรวจเช็กระบบ) |
| `/trigger help set <หน้า>` | เลือกเปิดหน้าคู่มือเจาะจงผ่าน Trigger (หน้า 1 หรือ 2) |

### 1. General & QoL Commands (คำสั่งทั่วไปและระบบผู้เล่น)
| คำสั่ง | สิทธิ์ | คำอธิบาย |
|---|---|---|
| `/sit` | ทุกคน | นั่งลงบนบล็อกหรือพื้นตรงจุดที่มอง/ยืนอยู่ทันที (ลุกขึ้นด้วยการกด Shift) |
| `/trigger timber` | ทุกคน | สลับเปิด/ปิดระบบตัดไม้โค่นทั้งต้นสำหรับตนเอง |
| `/trigger veinminer` | ทุกคน | สลับเปิด/ปิดระบบขุดแร่ทั้งสายสำหรับตนเอง |
| `/image2map create none <URL>` | ทุกคน | สร้างแผนที่รูปภาพขนาด 1x1 จากลิงก์รูปภาพอินเทอร์เน็ต |
| `/image2map create <กว้าง> <สูง> none <URL>` | ทุกคน | สร้างแผนที่โปสเตอร์ขนาดใหญ่หลายแผ่น เช่น `/image2map create 2 2 none <URL>` |
| `/syncmatica` | ทุกคน | จัดการและแชร์แบบแปลน Litematica บนเซิร์ฟเวอร์ร่วมกับผู้เล่นคนอื่น |
| `/voicechat test` | ทุกคน | ทดสอบการเชื่อมต่อไมโครโฟนและระบบ Simple Voice Chat |

### 2. SkinsRestorer Commands (คำสั่งจัดการสกิน - คูลดาวน์ 0 วินาที)
| คำสั่ง | สิทธิ์ | คำอธิบาย |
|---|---|---|
| `/skin <ชื่อผู้เล่น>` | ทุกคน | เปลี่ยนสกินตามชื่อผู้เล่นคนนั้น (ดึงสกินจาก Mojang อัตโนมัติ) |
| `/skin url <URL.png> [classic/slim]` | ทุกคน | เปลี่ยนสกินจากลิงก์รูปภาพสกิน (.png) โดยตรง |
| `/skin clear` | ทุกคน | รีเซ็ตสกินกลับเป็นสกินดั้งเดิมของตนเอง |
| `/skin update` | ทุกคน | อัปเดตสกินปัจจุบันให้เป็นข้อมูลล่าสุด |
| `/skins` | ทุกคน | เปิดหน้าต่างเมนู GUI เลือกสกิน |
| `/sr reload` | OP | รีโหลดการตั้งค่าของ SkinsRestorer |

### 3. Full Ghast Ahead Commands (คำสั่งขี่ Ghast และปรับความเร็ว)
| คำสั่ง | สิทธิ์ | คำอธิบาย |
|---|---|---|
| `/function full_ghast_ahead:settings` | OP/ทุกคน | เปิดเมนูปรับความเร็วการบินของ Ghast บนหน้าต่างแชต (คลิกเลือก 1x ถึง 4x ได้ทันที) |
| `/function full_ghast_ahead:set {speed:100}` | OP | ตั้งความเร็ว Ghast เป็น 1x (3.6 บล็อก/วินาที - ความเร็ว Vanilla ปกติ) |
| `/function full_ghast_ahead:set {speed:150}` | OP | ตั้งความเร็ว Ghast เป็น 1.5x (5.4 บล็อก/วินาที) |
| `/function full_ghast_ahead:set {speed:200}` | OP | ตั้งความเร็ว Ghast เป็น 2x (7.2 บล็อก/วินาที - ค่าเริ่มต้นปัจจุบัน) |
| `/function full_ghast_ahead:set {speed:250}` | OP | ตั้งความเร็ว Ghast เป็น 2.5x (9.0 บล็อก/วินาที) |
| `/function full_ghast_ahead:set {speed:300}` | OP | ตั้งความเร็ว Ghast เป็น 3x (10.8 บล็อก/วินาที) |
| `/function full_ghast_ahead:set {speed:400}` | OP | ตั้งความเร็ว Ghast เป็น 4x (14.4 บล็อก/วินาที - ความเร็วสูงสุด) |

### 4. Fabric Carpet Commands (คำสั่งจำลองผู้เล่น & เฝ้าฟาร์ม)
| คำสั่ง | สิทธิ์ | คำอธิบาย |
|---|---|---|
| `/player <ชื่อบอท> spawn` | ทุกคน | เสกตัวละครบอทจำลอง (Fake Player) เพื่อเฝ้าฟาร์มหรือ AFK โหลด Chunks |
| `/player <ชื่อบอท> kill` | ทุกคน | สั่งให้ตัวละครบอทจำลองออกจากโลก |
| `/player <ชื่อบอท> attack continuous` | ทุกคน | สั่งให้บอทคลิกซ้ายตีต่อเนื่อง (เหมาะกับฟาร์มม็อบ) |
| `/player <ชื่อบอท> use continuous` | ทุกคน | สั่งให้บอทคลิกขวาต่อเนื่อง (วางบล็อก/ปลูกผัก) |
| `/player <ชื่อบอท> look at @p` | ทุกคน | สั่งให้บอทหันหน้ามามองผู้เล่น |
| `/player <ชื่อบอท> move forward` | ทุกคน | สั่งให้บอทก้าวเดินตรงไปข้างหน้า |
| `/player <ชื่อบอท> stop` | ทุกคน | สั่งให้บอทหยุดการกระทำทั้งหมด |
| `/tick rate <20>` | OP | ปรับความเร็ว Game Tick ของโลก (ค่าปกติคือ 20) |
| `/tick warp <ticks>` | OP | เร่งเวลาล่วงหน้าเพื่อทดสอบกลไกเรดสโตนหรือฟาร์ม |
| `/carpet <rule> <value>` | OP | ตรวจสอบหรือปรับเปลี่ยนกฎของ Carpet แบบเรียลไทม์ |

### 5. WorldEdit Commands (คำสั่งสร้างพื้นที่สำหรับ OP)
| คำสั่ง | สิทธิ์ | คำอธิบาย |
|---|---|---|
| `//wand` | OP | เสกขวานไม้ WorldEdit สำหรับมาร์กจุด Pos1 (คลิกซ้าย) และ Pos2 (คลิกขวา) |
| `//set <บล็อก>` | OP | เติมบล็อกทั้งหมดในพื้นที่ที่เลือก |
| `//replace <บล็อกเดิม> <บล็อกใหม่>` | OP | แทนที่บล็อกที่กำหนดเฉพาะในพื้นที่ที่เลือก |
| `//copy` / `//paste` | OP | คัดลอกและวางสิ่งก่อสร้างตามพิกัดสัมพัทธ์ |
| `//undo` / `//redo` | OP | ย้อนกลับคำสั่งหรือทำซ้ำการเปลี่ยนแปลงล่าสุด |

### 6. Diagnostics & Performance Commands (คำสั่งตรวจสอบและดูแลระบบ)
| คำสั่ง | สิทธิ์ | คำอธิบาย |
|---|---|---|
| `/spark tps` | ทุกคน | ตรวจสอบค่า TPS เฉลี่ย (1m, 5m, 15m) และค่า MSPT |
| `/spark health` | OP | ตรวจสอบสุขภาพของเซิร์ฟเวอร์ (TPS, CPU, RAM และ GC) |
| `/spark profiler start` / `/spark profiler stop` | OP | บันทึก Profiler วิเคราะห์และค้นหาจุดที่ทำให้เซิร์ฟเวอร์ช้า |
| `/chunky start` | OP | เริ่มต้นการ Pre-generate Chunks ในแมพ |
| `/chunky pause` / `/chunky continue` | OP | พักหรือทำต่อการ Pre-generate Chunks |
| `/chunky progress` / `/chunky cancel` | OP | ตรวจสอบความคืบหน้าหรือยกเลิกการโหลด Chunks |
| `/save-all flush` | OP | บังคับบันทึกข้อมูลโลกและไฟล์ผู้เล่นทั้งหมดลงดิสก์ทันที |
| `/reload` | OP | รีโหลด Datapack และไฟล์คอนฟิกทั้งหมดในเกมโดยไม่ต้องรีสตาร์ตเซิร์ฟเวอร์ |
| `/seed` | OP | แสดงค่า Seed ของโลกปัจจุบัน |

### 8. Special Name Tag Features (ฟังก์ชันป้ายชื่อพิเศษ)
ตั้งชื่อบน Name Tag ผ่านทั่ง (Anvil) แล้วนำไปแปะใส่ม็อบ:
- `_show` : แสดงป้ายชื่อม็อบตลอดเวลา (CustomNameVisible: true)
- `_clear` : ซ่อนป้ายชื่อม็อบออก
- `_baby` : เปลี่ยนสัตว์ให้เป็นตัวเล็ก/เบบี้ถาวร
- `_silent` : ปิดเสียงม็อบให้เงียบสนิท (Silent: true)

---

## Performance & Optimization Guidelines (แนวทางการปรับแต่งลดอาการแล็ก)
- **Tick Performance:** ปรับแต่ง TAB Placeholder Refresh Interval เป็น 1000ms เพื่อป้องกัน packet spam และถอด placeholder ที่กินโหลดเธรดหลักออก
- **SkinsRestorer:** ปิด `dismountPlayerOnSkinUpdate` และ `remountPlayerOnSkinUpdate` ป้องกันปัญหาผู้เล่นติด loop force-sending blocks
- **Shift Skills:** ออกแบบลูปตรวจจับแบบ Edge Detection ร่วมกับ One-shot Pulse ลดการวน selector `@e` ทุก tick ช่วยรักษาค่า MSPT อยู่ที่ ~10.5ms (20 TPS นิ่ง)

---

## Backup

Previous PaperMC server files are archived in [Minecraft-see-backups-](https://github.com/Pannawat-h/Minecraft-see-backups-) under `minecarft-paper-backup-20261007/`.

---

## Credits

- Server design inspired by [SteveKunG's iSMP](https://gist.github.com/SteveKunG/52087253c8411b621fcb8724cf00b0b6)
- [Fabric](https://fabricmc.net/) | [Modrinth](https://modrinth.com/)
