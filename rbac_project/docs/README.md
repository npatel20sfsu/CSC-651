Role-Based Access Management on Ubuntu Server

Overview

This project simulates role-based access control (RBAC) on Ubuntu Server 22.04 LTS for a medium-sized company with separate departments: HR, IT, and Finance. It uses native Linux tools (groups, permissions, ACLs), Samba for file sharing, UFW for firewall, Fail2Ban for brute-force protection, and rsync for automated backups.

Features

Department-based user groups and folder permissions

Shared directories: /dept/hr, /dept/it, /dept/finance

Samba configuration for cross-platform access

Firewall setup with UFW

Intrusion prevention with Fail2Ban

SSH access restricted to specific users

Automated daily backups with timestamped directories

Directory Structure

rbac_project/
├── scripts/         # Setup and backup scripts
├── configs/         # Configuration snapshots (sshd, samba, fail2ban)
├── logs/            # Backup log and test output
├── docs/            # Project report and test plan

Setup Summary

Scripts included in scripts/:

create_users.sh – Creates users and groups

setup_directories.sh – Sets folder permissions

backup.sh – Runs rsync backup with logs

Configs in configs/:

sshd_config – Secures SSH access

smb.conf – Defines department shares

jail.local – Enables Fail2Ban SSH protection

Logs in logs/:

backup.log – Backup history

test_results.log – Output of test validation

How to Run

Clone the repo and run create_users.sh and setup_directories.sh.

Copy configs/*.conf to their respective system paths (e.g., /etc/ssh/sshd_config).

Start services: SSH, Samba, UFW, Fail2Ban.

Test access control using test users.

Monitor logs and run backup.sh or verify cron backup.

Team

Nidhey Patel – Server setup

Pritham Sandhu – User & permissions, documentation

Manjot Singh – Network security & firewall

License

This project is for academic purposes under CSC651 – Spring 2025.
