#!/bin/sh
# Linux Tool Uninstaller ko system se hatane ke liye:  sudo ./uninstall_me.sh
set -e
if [ "$(id -u)" -ne 0 ]; then
    exec sudo -E sh "$0" "$@"
fi
rm -rf /opt/linux-tool-uninstaller
rm -f  /usr/bin/linux-tool-uninstaller
rm -f  /usr/share/applications/linux-tool-uninstaller.desktop
# legacy (purana naam) — agar pehle ki version installed ho
rm -rf /opt/kali-uninstaller 2>/dev/null || true
rm -f  /usr/bin/kali-uninstaller 2>/dev/null || true
rm -f  /usr/share/applications/kali-uninstaller.desktop 2>/dev/null || true
echo "Linux Tool Uninstaller system se remove ho gaya."
