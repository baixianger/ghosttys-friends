<div align="center">

# Ghostty's Friends

**One-click Finder toolbar apps for [Ghostty](https://ghostty.org)**

[![Release](https://img.shields.io/github/v/release/baixianger/ghosttys-friends?style=flat-square&color=6B5CE7)](../../releases/latest)
[![License](https://img.shields.io/badge/license-MIT-blue?style=flat-square)](LICENSE)
[![macOS](https://img.shields.io/badge/macOS-only-black?style=flat-square&logo=apple&logoColor=white)](../../releases/latest)

<br>

<table>
<tr>
<td align="center" width="200">
<img src="assets/cd2-ghostty-icon.png" width="128"><br>
<b>cd2-ghostty</b><br>
<sub>Open Ghostty here</sub>
</td>
<td align="center" width="200">
<img src="assets/ccOpener-ghostty-icon.png" width="128"><br>
<b>ccOpener-ghostty</b><br>
<sub>Open Ghostty + <a href="https://docs.anthropic.com/en/docs/claude-code">Claude Code</a></sub>
</td>
</tr>
</table>

<br>

[**Download DMG**](../../releases/latest)

</div>

---

## Install

1. Download **ghosttys-friends.dmg** from [Releases](../../releases/latest)
2. Open the DMG and drag both apps to a **permanent location** (e.g. `~/Documents/` or `/Applications/`) — the toolbar shortcut breaks if the app moves
3. Hold **⌘ Cmd** and drag each app into the Finder toolbar

> On first launch, macOS may block the app. Right-click → **Open** to bypass Gatekeeper.

## Usage

Click the icon in any Finder window:

- **cd2-ghostty** — Opens a new Ghostty terminal in that folder
- **ccOpener-ghostty** — Opens Ghostty and runs `claude --dangerously-skip-permissions` in that folder

## Build Your Own

The source AppleScripts are in [`src/`](src/). Compile to `.app` with:

```bash
osacompile -o cd2-ghostty.app src/cd2-ghostty.applescript
```

Edit the scripts to customize — e.g. change the command, use a different terminal, etc.

## License

[MIT](LICENSE)
