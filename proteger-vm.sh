#!/bin/bash
apt update && apt upgrade -y
apt install ufw fail2ban -y
ufw allow OpenSSH && ufw enable
systemctl enable fail2ban && systemctl restart fail2ban
echo '[sshd]
enabled = true
port = ssh
logpath = %(sshd_log)s
backend = %(sshd_backend)s
bantime = 1h
findtime = 10m
maxretry = 5' >> /etc/fail2ban/jail.local
systemctl restart fail2ban
