# Linux Tool Uninstaller v5.0 — IVORY EDITION

**"LIGHT • SMOOTH • SHARP"** — Linux ke liye poora user-installed tool remover.
Light white smooth theme, naya boot splash + logo, real tool icons, deep scan.

## Ye kya karta hai

- **DETECT (deep):** apt packages, .desktop apps, Flatpak, Snap, pip/pipx,
  npm, gem, cargo/go, AppImages, `/opt` programs aur **GitHub se git-clone
  kiye gaye tools** — sab ek hi list me, har row ke saath us tool ka asli
  icon.
- **REMOVE (sirf user-installed):** jo tools **aap ne khud** download/install
  kiye hain (GitHub, online platforms, third-party repos, local `.deb`,
  pip/npm/gem installs) — wo hi remove hote hain. Uninstall ke baad
  **DEEP SCAN** leftover configs/caches/launchers bhi saaf karta hai
  (Revo-style), dpkg-owned files safe rehte hain.
- **PROTECT (shield):** Kali/Debian ke **apne repo** wale packages — default
  tools, core utilities aur advanced/security tools — **KABHI delete nahi
  hote**. Ye rows list me `PROTECTED` chip ke saath dim dikhti hain aur
  uninstall par skip ho jati hain. Detection engine: `apt-cache policy`
  repo-origin + fail-safe (origin confirm na ho to protected).

## Install

```sh
cd LinuxToolUninstaller
sudo sh install.sh        # /opt/linux-tool-uninstaller me install hota hai
```

## Bina install chalao

```sh
cd LinuxToolUninstaller
./run.sh
```

(root ke liye pkexec/sudo password prompt aa sakta hai — GUI root me khulta
hai, warna apt operations kaam nahi karte)

## Commands

| Command | Kaam |
| --- | --- |
| `linux-tool-uninstaller` | GUI launch |
| `linux-tool-uninstaller --doctor` | Diagnostics (dependencies check) |
| `sudo sh /opt/linux-tool-uninstaller/uninstall_me.sh` | Tool ko system se hatao |

## GUI shortcuts

- `Ctrl+F` search • `Ctrl+A` select all • `F5` refresh • right-click menu
- Filters: APPS / ALL / APT PKGS / GITHUB-CUSTOM / PIP-NPM-GEM / PROTECTED / > 100 MB
- **DEEP SCAN** button: selected tools ke leftovers scan + delete
- **FULL REMOVE** checkbox: uninstall ke baad leftovers automatic saaf

## Safety

- `linux-image`, `grub`, `kali-*`, `xserver-xorg`, coreutils jaise critical
  packages hard-blocked hain (CRITICAL_EXACT + CRITICAL_PREFIX).
- APT removal se pehle **simulation** (`apt-get -s`) chalti hai — agar
  essential packages remove hone wale hon to operation abort.
- Global autoremove KABHI nahi chalta — sirf is removal ke orphan dependencies
  (cap 200) utaari jati hain.
- dpkg-owned files deep scan me kabhi delete-candidate nahi bante.

## License

Original LICENSE file dekhein.
