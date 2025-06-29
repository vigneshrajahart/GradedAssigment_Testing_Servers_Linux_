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

cd Task1_SystemMonitoring
chmod +x monitor.sh
./monitor.sh
cat logs/sys_metrics.log

# Task 1: System Monitoring Setup

## Objective
Monitor system performance to ensure health, capacity planning, and provide visibility to developers.

## Tools Used
- `htop`, `nmon`: Live system monitoring
- `df`, `du`: Disk usage
- `top`, `ps`: Process monitoring

##  Components

| Script | Description |
|--------|-------------|
| `cpu_mem_process_monitor.sh` | Captures CPU and memory usage snapshot |
| `disk_monitor.sh` | Logs disk usage and size breakdown |
| `top_process_monitor.sh` | Logs top memory/CPU consuming processes |

## Automation
Daily cron jobs run at 12:00 AM to log all key metrics.

## Output
Logs are saved daily in `logs/`:
- `cpu_mem_YYYY-MM-DD.log`
- `disk_usage_YYYY-MM-DD.log`
- `top_processes_YYYY-MM-DD.log`

## Usage
To manually test a script:
./monitoring_scripts/cpu_mem_process_monitor.sh
___# Task 2: User Management and Access Control

## 🎯 Objective
Create isolated user accounts for developers with secure access and enforce password security policies.

## 🧍‍♂️ Users Created
- Sarah
- Mike

## 🗂️ Workspace Structure
- Sarah: `/home/Sarah/workspace`
- Mike: `/home/mike/workspace`
- Permissions: `chmod 700`, owner-only access

## 🔒 Security Policies
- Default password: `user@Dev123` (to be changed on first login)
- Password expiry: 30 days
- Password warning: 7 days before expiry
- Password complexity: min 8 chars, includes upper/lowercase, digit, and special char

## 📜 Scripts
- `user_setup.sh`: Creates users, sets password, assigns permissions
- `password_policy.sh`: Enforces password aging policy

## 📂 Logs
- `logs/user_creation_YYYY-MM-DD.log`
- `logs/permission_check_YYYY-MM-DD.log`

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










