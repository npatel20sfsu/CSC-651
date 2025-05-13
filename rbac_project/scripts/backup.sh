#!/bin/bash

# Backup /dept to /backup/dept with timestamps
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backup_target="/backup/dept_backup_$timestamp"

mkdir -p "$backup_target"
rsync -a /dept/ "$backup_target"

echo "Backup completed at $timestamp" >> /home/student/rbac_project/logs/backup.log

