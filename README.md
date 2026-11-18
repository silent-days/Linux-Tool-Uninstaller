 <div align="center">

<img src="LinuxToolUninstaller/assets/logo.png" alt="Linux Tool Uninstaller Logo" width="200">

# Linux Tool Uninstaller

### Advanced Linux Application & Tool Removal Manager

**Detect • Analyze • Uninstall • Clean • Protect**

[![Version](https://img.shields.io/badge/Version-5.0-blue?style=for-the-badge)](https://github.com/silent-days/Linux-Tool-Uninstaller)
[![Platform](https://img.shields.io/badge/Platform-Kali%20%7C%20Debian-orange?style=for-the-badge)](https://www.kali.org/)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)
[![Python](https://img.shields.io/badge/Python-3-blue?style=for-the-badge&logo=python&logoColor=white)](https://www.python.org/)

**A powerful GUI-based Linux uninstaller designed to detect user-installed applications, remove unwanted tools, clean leftover files, and protect essential system packages.**

</div>

---

## Overview

**Linux Tool Uninstaller** is an advanced desktop utility built for Linux users who want better control over installed applications and tools.

Featuring a modern Ivory Edition interface, it scans multiple installation sources, identifies custom-installed tools, removes unwanted applications, and detects leftover files after uninstallation.

Its built-in protection system helps prevent the removal of Kali Linux and Debian distribution packages.

## Key Features

- **Deep Detection:** Detect applications and tools installed through APT, Flatpak, Snap, PIP, PIPX, NPM, GEM, Cargo, Go, AppImage, and GitHub repositories.
- **Smart Uninstaller:** Identify and remove user-installed applications and third-party tools.
- **Protected System Packages:** Protect Kali Linux and Debian repository packages from accidental removal.
- **Deep Scan Engine:** Find leftover configurations, caches, launchers, and related files.
- **Full Remove:** Automatically scan and clean eligible leftovers after uninstallation.
- **Real Application Icons:** Display application icons for easier identification.
- **Modern GUI:** Clean, lightweight Ivory Edition interface.
- **Advanced Filtering:** Quickly filter applications by installation source and protection status.
- **Package Safety:** Simulate APT removal operations before executing them.
- **Diagnostics:** Built-in system and dependency checking.

## Installation

### 1. Clone Repository

```bash
git clone https://github.com/silent-days/Linux-Tool-Uninstaller.git
```

### 2. Enter Project Directory

```bash
cd Linux-Tool-Uninstaller/LinuxToolUninstaller
```

### 3. Install Dependencies

```bash
sudo apt update
sudo apt install -y python3 python3-tk
```

### 4. Install Linux Tool Uninstaller

```bash
sudo sh install.sh
```

### 5. Launch Application

```bash
linux-tool-uninstaller
```

---

## Run Without Installation

You can also launch the application directly without installing it system-wide.

```bash
cd LinuxToolUninstaller
chmod +x run.sh
./run.sh
```

**Note:** Root permissions may be required for package management and removal operations.

## Usage

1. Launch Linux Tool Uninstaller.
2. Allow the application to scan installed applications and tools.
3. Browse detected applications in the main interface.
4. Use filters to find specific tools.
5. Select the application you want to remove.
6. Review the removal confirmation.
7. Enable **FULL REMOVE** to clean eligible leftovers automatically.
8. Confirm the operation.

You can also use **DEEP SCAN** to search for leftover files separately.

## Available Filters

| Filter | Description |
|---|---|
| APPS | Desktop applications |
| ALL | All detected entries |
| APT PKGS | APT packages |
| GITHUB-CUSTOM | Custom GitHub tools |
| PIP-NPM-GEM | Python, Node.js and Ruby tools |
| PROTECTED | Protected system packages |
| > 100 MB | Large applications and packages |

## Keyboard Shortcuts

| Shortcut | Action |
|---|---|
| `Ctrl + F` | Search applications |
| `Ctrl + A` | Select all |
| `F5` | Refresh application list |
| `Right Click` | Open context menu |

## System Protection

Linux Tool Uninstaller includes multiple safety mechanisms to help protect your operating system.

- Protects Kali Linux and Debian repository packages.
- Uses package repository origin detection.
- Applies fail-safe protection when package origin cannot be verified.
- Blocks critical system packages and protected package patterns.
- Simulates APT removal before executing operations.
- Aborts removal if essential packages are detected in the removal plan.
- Avoids global `apt autoremove`.
- Excludes dpkg-owned files from deep-scan deletion candidates.

**Important:** Always review the selected applications and removal confirmation before proceeding. No automated uninstaller can guarantee protection against every possible system configuration.

## Diagnostics

Run the built-in diagnostic command to check application dependencies and system readiness.

```bash
linux-tool-uninstaller --doctor
```

## Uninstall Linux Tool Uninstaller

To remove Linux Tool Uninstaller from your system:

```bash
sudo sh /opt/linux-tool-uninstaller/uninstall_me.sh
```

This removes the installed application, launcher, and desktop entry.

## Project Structure

```text
Linux-Tool-Uninstaller/
│
├── logo.png
├── LICENSE
├── README.md
│
└── LinuxToolUninstaller/
    │
    ├── README.md
    ├── linux_tool_uninstaller.py
    ├── install.sh
    ├── run.sh
    ├── uninstall_me.sh
    │
    └── assets/
        ├── logo.png
        ├── logo_small.png
        └── splash.png
```

## Technology Stack

- **Python 3** – Core application logic
- **Tkinter** – Graphical user interface
- **APT / DPKG** – Debian package management
- **Shell Script** – Installation and removal automation
- **Linux System Utilities** – Application and package detection

## Compatibility

Designed primarily for:

- Kali Linux
- Debian-based Linux distributions

Some detection and removal features depend on the relevant package managers and utilities being installed.

## License

This project is licensed under the **MIT License**.

See the [LICENSE](LICENSE) file for details.

---

<div align="center">

### Linux Tool Uninstaller

**Take Control of Your Linux System.**

Built with ❤️ by **Silent Days**

[GitHub Repository](https://github.com/silent-days/Linux-Tool-Uninstaller)

</div>
