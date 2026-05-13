# Elite Dangerous PIP Management — Linux/Wayland

Keyboard macros for quick power distribution (PIP) presets in Elite Dangerous, with audio feedback. Linux/Wayland port of my own AutoHotkey script for Windows. PIP preset combinations and audio files originally by [CMDR Bracus Loremane](https://steamcommunity.com/app/359320/discussions/0/1652171126116562855/).

## Requirements

- NixOS (uses `nix-shell` to pull dependencies)
- KDE Plasma on Wayland
- Elite Dangerous running via Steam/Proton (XWayland)
- User must be in the **`input`** group (for sxhkd to capture hotkeys via XWayland)

## Usage

```bash
./ed-pip-manager
```

Press **Ctrl+C** to stop. On first run, `nix-shell` will download `sxhkd`, `xdotool`, and `kdotool`.

## Hotkeys

| Key        | Mode     | PIPs (SYS/ENG/WEP)  |
|------------|----------|---------------------|
| F1         | Dodge    | 0.5 / 4 / 1.5       |
| Ctrl+F1    | Flee     | 2 / 4 / 0           |
| F2         | Combat   | 0.5 / 1.5 / 4       |
| Ctrl+F2    | Combat 2 | — / 2 / 4           |
| F3         | Pursuit  | 2 / 1 / 3           |
| Ctrl+F3    | Offense  | 3 / — / 3           |
| F4         | Shields  | 4 / 2 / —           |
| Ctrl+F4    | Defense  | 4 / — / 2           |

## Tools used

- [sxhkd](https://github.com/baskerville/sxhkd) — hotkey daemon (via XWayland)
- [xdotool](https://github.com/jordansissel/xdotool) — key injection into the XWayland window
- [kdotool](https://github.com/jinliu/kdotool) — detect active window on KDE Wayland
