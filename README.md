# DevOps Task Report: Monitoring, User Management, and Backup

## Task 1: System Monitoring
- Tools: htop, nmon
- Script logs system metrics to `logs/sys_metrics.log`.
- Cron job can automate daily logs.

## Task 2: User Management
- Users `sarah` and `mike` created.
- Workspace with `chmod 700` permissions.
- Passwords expire every 30 days.

## Task 3: Web Server Backup
- Apache and Nginx backup scripts.
- Compressed backups in `/backups/` directory.
- Cron jobs run every Tuesday at 12:00 AM.
- Verification logs created post-backup.

## Challenges
- Required `sudo` for some directory access.
- Cron job needed full paths.

## Logs & Screenshots
- `logs/` and `screenshots/` folders under each task.
