#!/bin/bash
DATE=$(date +%F)
DEST="/backups/nginx_backup_$DATE.tar.gz"
tar -czf $DEST /etc/nginx/ /usr/share/nginx/html/
echo "Nginx backup created: $DEST"
tar -tzf $DEST > "../Task3_BackupConfig/verification_logs/nginx_verify_$DATE.txt"
