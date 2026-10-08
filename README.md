# now-minecraft-server

**iSMP-style Minecraft survival server** running Fabric 1.21.4 (26.3)  
Inspired by [iSMP by SteveKunG](https://gist.github.com/SteveKunG/52087253c8411b621fcb8724cf00b0b6)

---

## Server Info

| Key | Value |
|---|---|
| Minecraft Version | 26.3 (1.21.4) |
| Server Engine | Fabric + Loader 0.19.5 |
| Host Spec | AMD FX-6350, 16 GB RAM, 440 GB SSD |
| Heap | 12 GB (-Xmx12G -Xms4G) |
| View Distance | 7 chunks |
| Simulation Distance | 5 chunks |

---

## Mods

| Mod | Version | Purpose |
|---|---|---|
| Fabric API | 0.162.0+26.3 | Core mod loader API |
| Lithium | 0.26.2+mc26.3 | General server optimization |
| C2ME | mc26.3-0.4.2-alpha.0.90 | Multi-threaded chunk loading/generation |
| Alternate Current | mc26.3-1.9.0 | Faster, lag-free redstone |
| FerriteCore | 9.0.0 | Memory usage reduction |
| Krypton | 0.3.2 | Networking stack optimization |
| ServerCore | 1.5.20+26.3 | Tick optimizations, entity culling |
| Chunky | 1.5.3 | Pre-generate chunks on demand |
| Fabric Carpet | 26.3+v260915 | Server rules, `/tick`, `/player`, debug tools |
| Servux | 26.3-0.12.2 | Server-side litematica support |
| Syncmatica | 26.3-0.3.20 | Share/sync litematica schematics |
| TabTPS | 1.4.2 | Show TPS/MSPT/ping in tab list |
| TAB | 6.2.0 | Tab list & player nametag management |
| Drop Stacker | 1.2.1 | Automatically merge dropped items into stacks to reduce lag |
| Fabric Language Kotlin | 1.14.1+kotlin.2.4.20 | Required Kotlin runtime for Fabric mods |
| CommandAliases | 1.1.0+mc26.3 | Create custom server commands & aliases |
| SkinsRestorer | 15.12.6 | Offline-mode custom skins without cooldown |
| Sit! | 1.2.6.4+26.3 | Sitting engine (right-click disabled; via command only) |
| OtterLib | 0.4.0.2+26.3 | Core library required for Sit! |
| Image2Map | 0.15.0+26.3 | Create custom image maps/posters via `/image2map create` |
| No Chat Reports | 26.3-v2.21.0 | Remove chat report signatures |
| Having a Blast | 0.2.8+26.3 | Cartoon explosions & auto-healing craters (Creeper/TNT/etc.) |

---

## Datapacks

### `profets_timber` (Profet's Timber)
- ฟันโค่นต้นไม้ทั้งต้นพร้อมเอฟเฟกต์โค่นล้มแบบแอนิเมชัน
- ลดการกระตุก ไม่แล็กเซิร์ฟเวอร์

### `OreVeinMiner` (Ore Vein Miner by quillphen)
- ขุดแร่ทั้งสายพร้อมกันเมื่อ Sneak (ย่อตัว)
- รองรับ Fortune, Silk Touch และหัก Durability ตามจำนวนบล็อกจริง

### `stealth_horror_pack` (Stealth Psychological Horror)
- ระบบจิตวิทยาสยองขวัญ สุ่มเหตุการณ์หลอนใส่ผู้เล่นในโหมด Survival
- ปรับแต่งความถี่และเปิด/ปิดได้ใน `config/horror/settings.mcfunction`
- ปัจจุบันตั้งค่า: ปิดการทำงานชั่วคราว (`horror_enabled 0`)

### `ismp_custom_drops`
- Ender Dragon ดรอป Elytra + Dragon Head ทุกครั้งที่ตาย
- Shulker ดรอป 2 Shells เสมอ + โอกาส 25% ดรอป Shulker Box ทั้งกล่อง
- ผู้เล่นดรอป Player Head เมื่อตาย

### `ismp_qol_mechanics`
- **One Player Sleep:** นอนข้ามคืนได้เพียงคนเดียว (`playersSleepingPercentage 1`)
- สัตว์น้ำหายใจในสายฝนได้เมื่อขึ้นมาบนบก
- ปลาไม่ว่ายหนีเมื่อผู้เล่นย่อตัว (Sneak)
- คลิกขวาแปลง Farmland ด้วยพลั่ว/ที่ขุดเพื่อเปลี่ยนกลับเป็นดิน
- เรือปีนบล็อกพิเศษ (Dirt Path, Soul Sand, Snow Layer)
- สั่งการป้ายชื่อม็อบ: `_show`, `_clear`, `_baby`, `_silent`

### `vanilla_tweaks_suite`
- AFK Display — แสดงสถานะ AFK บนหัวผู้เล่น

---

## Carpet Rules

Configured in `world/carpet.conf`:

| Rule | Value | Effect |
|---|---|---|
| stackableShulkerBoxes | 64 | Stack Shulker Boxes in inventory |
| ctrlQCrafting | true | Ctrl+Q to drop full stack from crafting |
| flippinCactus | true | Flip/rotate blocks with cactus |
| renewableSponges | true | Sponges renewable via Elder Guardian |
| commandPlayer | true | `/player` command for fake players |
| commandTick | true | `/tick` command for tick control |
| commandLog | true | `/log` command for event logging |

---

## Server Commands (คำสั่งทั้งหมดที่ใช้งานได้ในเซิร์ฟเวอร์)

### 1. General & QoL Commands (คำสั่งทั่วไปและระบบผู้เล่น)
| คำสั่ง | สิทธิ์ | คำอธิบาย |
|---|---|---|
| `/sit` | ทุกคน | นั่งลงบนบล็อกหรือพื้นตรงจุดที่มอง/ยืนอยู่ได้ทันที (ลุกขึ้นด้วยการกด Shift) |
| `/image2map create none <URL>` | ทุกคน | สร้างแผนที่รูปภาพขนาด 1x1 จากลิงก์รูปภาพอินเทอร์เน็ต |
| `/image2map create <กว้าง> <สูง> none <URL>` | ทุกคน | สร้างแผนที่โปสเตอร์ขนาดใหญ่หลายแผ่น เช่น `/image2map create 2 2 none <URL>` |
| `/tabtps` | ทุกคน | แสดงค่า TPS, MSPT, CPU และ Memory ปัจจุบันของเซิร์ฟเวอร์ |
| `/tabtps toggle actionbar` | ทุกคน | เปิด/ปิดการแสดงผล TPS บน Action Bar |
| `/tabtps toggle bossbar` | ทุกคน | เปิด/ปิดการแสดงผล TPS บน Boss Bar |

### 2. SkinsRestorer Commands (คำสั่งจัดการสกิน - คูลดาวน์ 0 วินาที)
| คำสั่ง | สิทธิ์ | คำอธิบาย |
|---|---|---|
| `/skin <ชื่อผู้เล่น>` | ทุกคน | เปลี่ยนสกินตามชื่อผู้เล่นคนนั้น (ดึงสกินจาก Mojang อัตโนมัติ) |
| `/skin url <URL.png> [classic/slim]` | ทุกคน | เปลี่ยนสกินจากลิงก์รูปภาพสกิน (.png) โดยตรง |
| `/skin clear` | ทุกคน | รีเซ็ตสกินกลับเป็นสกินดั้งเดิมของตนเอง |
| `/skin update` | ทุกคน | อัปเดตสกินปัจจุบันให้เป็นข้อมูลล่าสุด |
| `/sr reload` | OP | รีโหลดการตั้งค่าของ SkinsRestorer |

### 3. Fabric Carpet Commands (คำสั่งจำลองผู้เล่น & เฝ้าฟาร์ม)
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

### 4. Horror Pack Commands (คำสั่งม็อดผีจิตวิทยาสำหรับ OP)
| คำสั่ง | สิทธิ์ | คำอธิบาย |
|---|---|---|
| `/scoreboard players set #global horror_enabled 1` | OP | เปิดระบบสุ่มหลอนอัตโนมัติ (ใส่ `0` เพื่อปิด) |
| `/scoreboard players set #global horror_interval 6000` | OP | ปรับรอบเวลาการหลอน (หน่วยเป็น Ticks: 6000 = ทุก 5 นาที, 360 = ทุก 18 วิ) |
| `/function horror:auto_trigger` | OP | บังคับสุ่มเหตุการณ์หลอนใส่ผู้เล่น 1 คนทันที |
| `/execute as <ชื่อเพื่อน> at @s run function horror:watcher` | OP | เสกเงา Watcher ไปยืนจ้องเพื่อนคนนั้นทันที |
| `/execute as <ชื่อเพื่อน> at @s run function horror:whisper` | OP | แอบยัดเสียงกระซิบเข้าหูเพื่อนคนนั้นคนเดียว |
| `/execute as <ชื่อเพื่อน> at @s run function horror:flicker` | OP | สั่งให้หน้าจอเพื่อนคนนั้นมืดวูบชั่วขณะ |
| `/execute as <ชื่อเพื่อน> at @s run function horror:trigger_random` | OP | บังคับสุ่ม 1 ใน 6 เหตุการณ์หลอนใส่เพื่อนคนนั้นทันที |

### 5. Having a Blast Commands (คำสั่งควบคุมการซ่อมหลุมระเบิด - ทุกคนใช้ได้)
| คำสั่ง | สิทธิ์ | คำอธิบาย |
|---|---|---|
| `/havingablast status` | ทุกคน | ดูสถานะระบบซ่อมหลุมระเบิดและจำนวนบล็อกที่กำลังรอซ่อม |
| `/havingablast now` | ทุกคน | บังคับให้เริ่มซ่อมแซมบล็อกที่ค้างอยู่ทั้งหมดทันที |
| `/havingablast delay <วินาที>` | ทุกคน | ปรับเวลาหน่วงก่อนเริ่มซ่อมหลุมระเบิด (เช่น `/havingablast delay 3`) |
| `/havingablast speed <เปอร์เซ็นต์>` | ทุกคน | ปรับความเร็วในการวางบล็อกซ่อมแซม 25-400% (เช่น `/havingablast speed 100`) |
| `/havingablast repair <ชนิด>` | ทุกคน | สลับเปิด/ปิดการซ่อมของระเบิดแต่ละชนิด (`creeper`, `tnt`, `bed`, `anchor`, `crystal`, `fireball`, `wither`) |
| `/hab <...>` | ทุกคน | ทางลัดคำสั่งย่อ ใช้แทน `/havingablast` ได้ทุกฟังก์ชัน |

### 5. Server Administration Commands (คำสั่งดูแลเซิร์ฟเวอร์)
| คำสั่ง | สิทธิ์ | คำอธิบาย |
|---|---|---|
| `/save-all flush` | OP | บังคับบันทึกข้อมูลโลกและผู้เล่นทั้งหมดลงดิสก์ทันที |
| `/stop` | OP | เซฟโลกและปิดเซิร์ฟเวอร์อย่างปลอดภัย |
| `/reload` | OP | รีโหลด Datapack และไฟล์คอนฟิกทั้งหมดในเกม |
| `/gamerule playersSleepingPercentage 1` | OP | ตั้งค่าให้นอนคนเดียวข้ามคืนได้ |
| `/chunky start` | OP | เริ่มต้นการ Pre-generate Chunks ในแมพ |
| `/servercore reload` | OP | รีโหลดการตั้งค่าของ ServerCore |

### 6. Special Name Tag Features (ฟังก์ชันป้ายชื่อพิเศษ)
ตั้งชื่อบน Name Tag ผ่านทั่ง (Anvil) แล้วนำไปแปะใส่ม็อบ:
- `_show` : แสดงป้ายชื่อม็อบตลอดเวลา (CustomNameVisible: true)
- `_clear` : ซ่อนป้ายชื่อม็อบออก
- `_baby` : เปลี่ยนสัตว์ให้เป็นตัวเล็ก/เบบี้ถาวร
- `_silent` : ปิดเสียงม็อบให้เงียบสนิท (Silent: true)

---

## Backup

Previous PaperMC server files are archived in [Minecraft-see-backups-](https://github.com/Pannawath/Minecraft-see-backups-) under `minecarft-paper-backup-20261007/`.

---

## Credits

- Server design inspired by [SteveKunG's iSMP](https://gist.github.com/SteveKunG/52087253c8411b621fcb8724cf00b0b6)
- [Fabric](https://fabricmc.net/) | [Modrinth](https://modrinth.com/)
