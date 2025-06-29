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

_____________________________________________________________________________________________________________________


---

## Task 1: System Monitoring Setup

### Objective
Track server performance metrics such as CPU, memory, disk usage, and top processes to assist with diagnostics and capacity planning.

### Tools Used
- `top` / `htop` – CPU & process monitoring
- `df` – Disk space usage
- `du` – Directory size analysis
- `ps` – Running process details

### How to Run

```bash
cd Task1_SystemMonitoring
chmod +x monitor.sh
./monitor.sh
cat logs/sys_metrics.log
------------------------------------------------------------------------------------------------------------------------------------

# Web Server Backup Automation - Task 3

This project contains automated backup scripts for Apache and Nginx web servers.

## Components

- `apache_backup.sh`: Backs up Apache config and document root.
- `nginx_backup.sh`: Backs up Nginx config and document root.
- Cron jobs: Scheduled every Tuesday at 12:00 AM.
- Verification logs: Saved under `/backups/` with timestamp.

## Backup Paths

| Server  | Configuration         | Document Root               |
|---------|-----------------------|-----------------------------|
| Apache  | /etc/httpd            | /var/www/html               |
| Nginx   | /etc/nginx            | /usr/share/nginx/html       |

## 🧪 Verification

After each backup, contents are verified and stored in:
- `apache_verification_YYYY-MM-DD.log`
- `nginx_verification_YYYY-MM-DD.log`

## 🗓️ Cron Setup

bash
0 0 * * 2 /path/to/apache_backup.sh
0 0 * * 2 /path/to/nginx_backup.sh
Ensure scripts are executable and paths are correct.










