# Test Plan for Role-Based Access Management

This test plan outlines the validation of each feature implemented in the Ubuntu Server RBAC project.

## Users and Groups

| Test Case                        | Command                        | Expected Output                      |
| -------------------------------- | ------------------------------ | ------------------------------------ |
| HR user access to HR folder      | `sudo -u alice ls /dept/hr`    | ✅ List of files or empty (access OK) |
| HR user access to IT folder      | `sudo -u alice ls /dept/it`    | ❌ Permission denied                  |
| IT user access to Finance folder | `sudo -u bob ls /dept/finance` | ❌ Permission denied                  |

## Samba Shares

| Test Case                        | Tool/Command                          | Expected Result          |
| -------------------------------- | ------------------------------------- | ------------------------ |
| Finance user accesses share      | `smbclient //server/Finance -U carol` | ✅ Folder contents listed |
| Unauthorized user accesses share | `smbclient //server/Finance -U alice` | ❌ Access denied          |

## SSH Access Control

| Test Case                  | Command                   | Expected Output |
| -------------------------- | ------------------------- | --------------- |
| Allowed user login via SSH | `ssh alice@<server-ip>`   | ✅ Login success |
| Blocked user login via SSH | `ssh student@<server-ip>` | ❌ Access denied |

## Fail2Ban

| Test Case                   | Command/Action                     | Expected Result                  |
| --------------------------- | ---------------------------------- | -------------------------------- |
| Simulated brute-force login | 5+ failed SSH attempts from one IP | ✅ IP banned by Fail2Ban          |
| Check Fail2Ban status       | `sudo fail2ban-client status sshd` | ✅ Shows banned IP (if triggered) |

## Backups

| Test Case         | Command                    | Expected Result                   |
| ----------------- | -------------------------- | --------------------------------- |
| Manual backup run | `sudo ./scripts/backup.sh` | ✅ New folder created in `/backup` |
| Backup log entry  | `cat logs/backup.log`      | ✅ Timestamped log line present    |

## System Monitoring

| Test Case                | Command                       | Expected Result             |
| ------------------------ | ----------------------------- | --------------------------- |
| Monitor resource usage   | `htop`, `df -h`               | ✅ CPU, RAM, disk shown      |
| View authentication logs | `sudo tail /var/log/auth.log` | ✅ Shows login entries       |
| View firewall activity   | `sudo tail /var/log/syslog`   | ✅ `[UFW BLOCK]` lines shown |
