# now-minecraft-server

**iSMP-style Minecraft survival server** running Fabric 1.21.4 (26.3)  
Inspired by [iSMP by SteveKunG](https://gist.github.com/SteveKunG/52087253c8411b621fcb8724cf00b0b6)

---

## Server Info

| Key | Value |
|-----|-------|
| Minecraft Version | 26.3 (1.21.4) |
| Server Engine | Fabric + Loader 0.19.5 |
| Host Spec | AMD FX-6350, 16 GB RAM, 440 GB SSD |
| Heap | 6 GB (-Xmx6G) |
| View Distance | 7 chunks |
| Simulation Distance | 5 chunks |

---

## Mods

| Mod | Version | Purpose |
|-----|---------|---------|
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
| Tree Vein Miner | 4.3.2 | Fell entire trees at once |
| SkinsRestorer | 15.12.6 | Offline-mode custom skins |
| Sit! | 1.2.6.4+26.3 | Right-click stairs/slabs/carpets to sit |
| OtterLib | 0.4.0.2+26.3 | Core library required for Sit! |
| No Chat Reports | 26.3-v2.21.0 | Remove chat report signatures |

---

## Datapacks

### `ismp_custom_drops`
- Ender Dragon drops Elytra + Dragon Head on death
- Shulker always drops 2 Shells + 25% chance to drop a Shulker Box
- Player drops a Player Head on death

### `ismp_qol_mechanics`
- Water mobs (fish, axolotl, etc.) breathe in rain when out of water
- Fish do not flee when player crouches
- Name Tag special commands: `_show` (show name always), `_clear` (clear name), `_baby` (make baby), `_silent` (silence)
- Right-click Farmland with Pickaxe to convert back to Dirt
- Boat climbing (Dirt Path, Soul Sand, Snow Layer)
- Cauldron Concrete conversion (drop concrete powder in cauldron)
- Trash Zombie removal at low Y (< 40) to reduce entity lag

### `vanilla_tweaks_suite`
- AFK Display — shows AFK status over player heads
- Armor Statues — interact with armor stand heads to pose them
- Cauldron Concrete — supplemental concrete conversion

---

## Carpet Rules

Configured in `world/carpet.conf`:

| Rule | Value | Effect |
|------|-------|--------|
| stackableShulkerBoxes | 64 | Stack Shulker Boxes in inventory |
| ctrlQCrafting | true | Ctrl+Q to drop full stack from crafting |
| flippinCactus | true | Flip/rotate blocks with cactus |
| renewableSponges | true | Sponges renewable via Elder Guardian |
| commandPlayer | true | `/player` command for fake players |
| commandTick | true | `/tick` command for tick control |
| commandLog | true | `/log` command for event logging |

---

## Server Properties (highlights)

```properties
sync-chunk-writes=false
enforce-secure-profile=false
log-ips=false
network-compression-threshold=512
pause-when-empty-seconds=60
view-distance=7
simulation-distance=5
```

---

## Features vs iSMP Checklist

| Feature | Status |
|---------|--------|
| AFK Display | Datapack |
| Armor Statues | Datapack |
| Cauldron Concrete | Datapack |
| C2ME multi-threaded chunks | Mod |
| Alternate Current redstone | Mod |
| Servux + Syncmatica | Mod |
| Chunky pre-generation | Mod |
| World-specific view distance | Partial (ServerCore) |
| Ender Dragon drops Elytra + Head | Datapack |
| Player head on death | Datapack |
| Shulker drops 2 shells + box | Datapack |
| Trash Zombie removal | Datapack |
| Boat block climbing | Datapack (partial) |
| Aquatic mob rain breathing | Datapack |
| Fish no-flee when crouching | Datapack |
| Farmland -> Dirt via Pickaxe | Datapack |
| Name Tag special commands | Datapack |
| Phantom 5-day threshold | Pending (gamerule) |
| Saddle-sit on stairs/slab | Mod (`Sit!`) |
| TPS in F3 (Alt+2) via TabTPS | Mod |
| No Chat Reports | Mod |
| SkinsRestorer | Mod |
| Tree Vein Miner | Mod |

---

## Backup

Previous PaperMC server files are archived in [Minecraft-see-backups-](https://github.com/Pannawath/Minecraft-see-backups-) under `minecarft-paper-backup-20261007/`.

---

## Credits

- Server design inspired by [SteveKunG's iSMP](https://gist.github.com/SteveKunG/52087253c8411b621fcb8724cf00b0b6)
- [Fabric](https://fabricmc.net/) | [Modrinth](https://modrinth.com/)
