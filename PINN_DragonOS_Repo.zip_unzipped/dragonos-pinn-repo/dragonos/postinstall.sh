 #!/bin/bash

echo "📦 Post-Install-Skript läuft ..."

# Zeitzone setzen
timedatectl set-timezone Europe/Berlin

# Hostname setzen
echo "dragonpin" > /etc/hostname
sed -i 's/127.0.1.1.*/127.0.1.1\tdragonpin/' /etc/hosts

# Optional: SSH Banner setzen
echo "Welcome to DragonOS via PINN – unleashed by Löbi 🐉" > /etc/issue.net
echo "Banner /etc/issue.net" >> /etc/ssh/sshd_config

# Autoupdate (optional deaktivierbar!)
apt update && apt -y upgrade

# Flag setzen zur Bestätigung
touch /etc/dragonos_pinn_installed

echo "✅ DragonOS-Postinstall abgeschlossen!"