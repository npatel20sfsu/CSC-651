CSC651 SYSTEM ADMINISTRATION – SPRING 2025

PROJECT NAME: Role-Based Access Management on Ubuntu Server for a Medium-Sized Company

GROUP MEMBERS' NAMES AND RESPONSIBILITIES:

• Nidhey Patel – Server Setup & Configuration

• Pritham Sandhu – User Account Management & Permissions/ Documentation &
Reporting

• Manjot Singh– Network Security & Firewall Rules

PROJECT DESCRIPTION:
This project focuses on setting up an Ubuntu Server environment with role-based access
control (RBAC) to simulate user access and file sharing in a medium-sized company. The goal
is to assign appropriate permission levels to different departments (e.g., HR, IT, Finance),
ensuring data isolation, integrity, and secure access using native Linux tools and services.

TECHNICAL SPECIFICATIONS:

• Operating System:
  Ubuntu Server 22.04 LTS
  
• User & Group Management:
  adduser, groupadd, usermod, gpasswd
  Department-based user groups (e.g., hr_group, it_group, finance_group)

• Access Control:
  Directory-based permissions using chmod, chown, and ACLs (setfacl, getfacl)
  Home directory isolation and shared departmental folders

• File Server Setup:
  Samba configuration for cross-platform file sharing
  Folder-level access control via Samba share definitions

• Security Configuration:
  UFW (Uncomplicated Firewall) for port control
  fail2ban for intrusion detection and brute-force protection
  SSH access restrictions (e.g., AllowUsers in sshd_config)

• Monitoring & Logging:
  System and auth logs (/var/log/syslog, /var/log/auth.log)
  Resource usage monitoring via htop and df

• Backup Solution:
  Scheduled backups with rsync to a secure backup directory

• Testing & Validation:
  Test access control with different users
  Ensure isolated access and data protection
  Verify logs and fail2ban functionality
