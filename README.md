# Elite Dangerous PIP Management — Linux (Wayland & Xorg)

Keyboard macros for quick power distribution (PIP) presets in Elite Dangerous, with audio feedback. Linux port of my own AutoHotkey script for Windows. PIP preset combinations and audio files originally by [CMDR Bracus Loremane](https://steamcommunity.com/app/359320/discussions/0/1652171126116562855/).

## Requirements

- [`nix`](https://nixos.org/download/) package manager (uses `nix-shell` to pull dependencies; [NixOS](https://nixos.org/) recommended)
- Wayland (tested on KDE Plasma) or Xorg (untested, but should work)
- Elite Dangerous running via Steam/Proton

## Usage

```bash
./ed-pip-manager
```

Press **Ctrl+C** to stop. On first run, `nix-shell` will download `sxhkd` and `xdotool`.

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

## Notes

**KDE Wayland — "Remote control requested" dialog** — on first use, KDE Plasma will show a security prompt asking to approve input capture. This is the XDG Desktop Portal protecting against apps silently intercepting keystrokes. Click "Share" to allow it — it won't ask again for the rest of the session. This prompt does not appear on Xorg.

## Tools used

- [sxhkd](https://github.com/baskerville/sxhkd) — hotkey daemon
- [xdotool](https://github.com/jordansissel/xdotool) — key injection and active window detection

## License

[MIT](LICENSE)
