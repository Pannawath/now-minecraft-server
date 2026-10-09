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
│   ├── dongdib_creative_world/    # ระบบสลับโลก Creative (/c, /c leave) และเซฟพิกัดย้อนกลับ
│   └── dongdib_shift_skills/      # ระบบสกิลกด Shift (Lumberjack, Utility Tracker, Veinminer)
├── datapacks/                      # ชุด Datapacks (.zip) ประจำเซิร์ฟเวอร์
│   ├── FullGhastAhead-1.0.0.zip   # ระบบขี่ Ghast และปรับความเร็ว
│   ├── dongdib_creative_world.zip # สลับโลกสร้างสรรค์ แยกช่องเก็บของ และสิทธิ์ OP ชั่วคราว
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
| WorldEdit | 7.4.6-beta-02 | เครื่องมือปรับแต่งพื้นที่และบล็อกสำหรับโลก Creative |
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
| Command Aliases | 1.1.0+mc26.3 | สร้างทางลัดคำสั่งและแม็ปคำสั่งลัด `/c` |

---

## Datapacks

### 1. `dongdib_creative_world` (ระบบโลก Creative แยกมิติ)
- สลับไปสร้างสิ่งก่อสร้างในโลก Creative ได้ตลอดเวลาผ่านคำสั่ง `/c`
- **ระบบเซฟพิกัดย้อนกลับ (Safe Marker Return):** จดจำพิกัดเดิมในโลก Overworld ก่อนวาร์ป เมื่อพิมพ์ `/c leave` จะวาร์ปกลับมายังพิกัดเดิมแม่นยำ 100%
- **ระบบแยกกระเป๋าอิสระ (Isolated Inventories):** ทำงานร่วมกับ `dimensional-inventories` เข้าโลก Creative ครั้งแรกช่องเก็บของจะโล่ง และเมื่อสลับกลับ Survival ไอเทม เลเวล หลอดเลือดจะกลับมาครบถ้วน
- **สิทธิ์คำสั่งและ WorldEdit ชั่วคราว:** มอบสิทธิ์ Operator Level 2 เฉพาะขณะอยู่ในโลก Creative เพื่อให้ใช้คำสั่งสร้างและ WorldEdit ได้อย่างอิสระ และปลดสิทธิ์ออกทันทีเมื่อกลับโลกปกติ

### 2. `dongdib_shift_skills` (ระบบสกิลกด Shift ต่อเนื่อง)
- กดย่อตัว (Shift) ติดต่อกัน 10 ครั้ง เพื่อเปิดใช้งานสกิลตามไอเทมที่ถือในมือหลักหรือมือซ้าย (Mainhand / Offhand):
  1. **Lumberjack (ขวานทุกระดับ):** สลับเปิด/ปิดระบบโค่นต้นไม้ทั้งต้น
  2. **Utility Tracker (เข็มทิศ / นาฬิกา):** แสดงพิกัด X Y Z และทิศทางบน Actionbar ตลอดเวลาที่ถือไอเทม
  3. **Veinminer (พลั่ว / อีเต้อทุกระดับ):** สลับเปิด/ปิดระบบขุดแร่ทั้งสายรายบุคคล

### 3. `FullGhastAhead-1.0.0` (Full Ghast Ahead)
- ใส่ Saddle (อานม้า) ขี่ Ghast บินบนท้องฟ้าได้ โดยคลิกขวาใส่ Ghast เพื่อสวมอาน แล้วคลิกขวาเพื่อขึ้นขี่ (Spacebar เพื่อบินขึ้น, WASD เพื่อบังคับทิศทาง, Shift เพื่อลง)
- ปรับความเร็วในการบินได้ผ่านคำสั่ง `/function full_ghast_ahead:settings` หรือกำหนดตัวเลขตรง เช่น `/function full_ghast_ahead:set {speed:2.0}`

### 4. `dongdib_custom_drops`
- Ender Dragon ดรอป Elytra + Dragon Head ทุกครั้งที่ตาย
- Shulker ดรอป 2 Shells เสมอ + โอกาส 25% ดรอป Shulker Box ทั้งกล่อง
- ผู้เล่นดรอป Player Head เมื่อตาย

### 5. `dongdib_qol_mechanics`
- **One Player Sleep:** นอนข้ามคืนได้เพียงคนเดียว (`playersSleepingPercentage 1`)
- สัตว์น้ำหายใจในสายฝนได้เมื่อขึ้นมาบนบก
- ปลาไม่ว่ายหนีเมื่อผู้เล่นย่อตัว (Sneak)
- คลิกขวาแปลง Farmland ด้วยพลั่ว/ที่ขุดเพื่อเปลี่ยนกลับเป็นดิน
- เรือปีนบล็อกพิเศษ (Dirt Path, Soul Sand, Snow Layer)
- สั่งการป้ายชื่อม็อบ: `_show`, `_clear`, `_baby`, `_silent`
- **Skin Persistence on Rejoin:** ตรวจจับการเข้าเซิร์ฟเวอร์ใหม่และสั่งรีเฟรชสกินอัตโนมัติภายใน 2 วินาที ป้องกันปัญหาสกินหาย

### 6. `profets_timber` & `profets_veinminer`
- โค่นต้นไม้และขุดแร่ทั้งสายแบบแอนิเมชัน สามารถเปิด/ปิดเฉพาะตัวผู้เล่นได้ด้วย `/trigger timber` และ `/trigger veinminer`

### 7. `vanilla_tweaks_suite`
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

### 1. Creative World & Dimension Commands (ระบบโลกสร้างสรรค์)
| คำสั่ง | สิทธิ์ | คำอธิบาย |
|---|---|---|
| `/c` | ทุกคน | วาร์ปเข้าสู่โลก Creative กลางเวหา, บันทึกพิกัดเดิม, สลับกระเป๋าเป็นของโลก Creative และรับสิทธิ์ใช้ WorldEdit ชั่วคราว |
| `/c leave` | ทุกคน | วาร์ปกลับสู่โลก Survival ณ พิกัดเดิมก่อนวาร์ป พร้อมคืนกระเป๋า ไอเทม เลเวลเดิม และถอนสิทธิ์พิเศษออก |

### 2. General & QoL Commands (คำสั่งทั่วไปและระบบผู้เล่น)
| คำสั่ง | สิทธิ์ | คำอธิบาย |
|---|---|---|
| `/sit` | ทุกคน | นั่งลงบนบล็อกหรือพื้นตรงจุดที่มอง/ยืนอยู่ทันที (ลุกขึ้นด้วยการกด Shift) |
| `/trigger timber` | ทุกคน | สลับเปิด/ปิดระบบตัดไม้โค่นทั้งต้นสำหรับตนเอง |
| `/trigger veinminer` | ทุกคน | สลับเปิด/ปิดระบบขุดแร่ทั้งสายสำหรับตนเอง |
| `/image2map create none <URL>` | ทุกคน | สร้างแผนที่รูปภาพขนาด 1x1 จากลิงก์รูปภาพอินเทอร์เน็ต |
| `/image2map create <กว้าง> <สูง> none <URL>` | ทุกคน | สร้างแผนที่โปสเตอร์ขนาดใหญ่หลายแผ่น เช่น `/image2map create 2 2 none <URL>` |
| `/tabtps` | ทุกคน | แสดงค่า TPS, MSPT, CPU และ Memory ปัจจุบันของเซิร์ฟเวอร์ |
| `/tabtps toggle actionbar` | ทุกคน | เปิด/ปิดการแสดงผล TPS บน Action Bar ด้านล่างจอ |
| `/tabtps toggle bossbar` | ทุกคน | เปิด/ปิดการแสดงผล TPS บน Boss Bar ด้านบนจอ |
| `/syncmatica` | ทุกคน | จัดการและแชร์แบบแปลน Litematica บนเซิร์ฟเวอร์ร่วมกับผู้เล่นคนอื่น |

### 3. SkinsRestorer Commands (คำสั่งจัดการสกิน - คูลดาวน์ 0 วินาที)
| คำสั่ง | สิทธิ์ | คำอธิบาย |
|---|---|---|
| `/skin <ชื่อผู้เล่น>` | ทุกคน | เปลี่ยนสกินตามชื่อผู้เล่นคนนั้น (ดึงสกินจาก Mojang อัตโนมัติ) |
| `/skin url <URL.png> [classic/slim]` | ทุกคน | เปลี่ยนสกินจากลิงก์รูปภาพสกิน (.png) โดยตรง |
| `/skin clear` | ทุกคน | รีเซ็ตสกินกลับเป็นสกินดั้งเดิมของตนเอง |
| `/skin update` | ทุกคน | อัปเดตสกินปัจจุบันให้เป็นข้อมูลล่าสุด |
| `/skins` | ทุกคน | เปิดหน้าต่างเมนู GUI เลือกสกิน |
| `/sr reload` | OP | รีโหลดการตั้งค่าของ SkinsRestorer |

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

### 5. Having a Blast Commands (คำสั่งควบคุมการซ่อมหลุมระเบิด - ทุกคนใช้ได้)
| คำสั่ง | สิทธิ์ | คำอธิบาย |
|---|---|---|
| `/havingablast status` | ทุกคน | ดูสถานะระบบซ่อมหลุมระเบิดและจำนวนบล็อกที่กำลังรอซ่อม |
| `/havingablast now` | ทุกคน | บังคับให้เริ่มซ่อมแซมบล็อกที่ค้างอยู่ทั้งหมดทันที |
| `/havingablast delay <วินาที>` | ทุกคน | ปรับเวลาหน่วงก่อนเริ่มซ่อมหลุมระเบิด (เช่น `/havingablast delay 3`) |
| `/havingablast speed <เปอร์เซ็นต์>` | ทุกคน | ปรับความเร็วในการวางบล็อกซ่อมแซม 25-400% (เช่น `/havingablast speed 100`) |
| `/havingablast repair <ชนิด>` | ทุกคน | สลับเปิด/ปิดการซ่อมของระเบิดแต่ละชนิด (`creeper`, `tnt`, `bed`, `anchor`, `crystal`, `fireball`, `wither`) |

### 6. Datapack Utility Commands
| คำสั่ง | สิทธิ์ | คำอธิบาย |
|---|---|---|
| `/function full_ghast_ahead:settings` | OP/ทุกคน | เปิดเมนูปรับแต่งความเร็วในการขี่ Ghast (1×, 1.5×, 2×, 2.5×, 3×) |

### 7. Server Administration & Diagnostics Commands (คำสั่งดูแลเซิร์ฟเวอร์)
| คำสั่ง | สิทธิ์ | คำอธิบาย |
|---|---|---|
| `/save-all flush` | OP | บังคับบันทึกข้อมูลโลกและผู้เล่นทั้งหมดลงดิสก์ทันที |
| `/stop` | OP | เซฟโลกและปิดเซิร์ฟเวอร์อย่างปลอดภัย |
| `/reload` | OP | รีโหลด Datapack และไฟล์คอนฟิกทั้งหมดในเกม |
| `/seed` | OP | แสดงค่า Seed ของโลกปัจจุบัน |
| `/chunky start` | OP | เริ่มต้นการ Pre-generate Chunks ในแมพ |
| `/chunky pause` | OP | พักการ Pre-generate ชั่วคราว |
| `/chunky continue` | OP | ดำเนินการ Pre-generate ต่อ |
| `/chunky cancel` | OP | ยกเลิกการ Pre-generate |
| `/chunky progress` | OP | ตรวจสอบความคืบหน้าการ Pre-generate Chunks |
| `/servercore status` | OP | ดูสถานะและประสิทธิภาพการปรับแต่ง Tick ของ ServerCore |
| `/servercore reload` | OP | รีโหลดการตั้งค่าของ ServerCore |
| `/spark health` | OP | ตรวจสอบสุขภาพของเซิร์ฟเวอร์ (TPS, CPU, Memory) |
| `/spark profiler start` | OP | รัน Profiler วัดการใช้งานของแต่ละโมดูลอย่างละเอียด |

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
