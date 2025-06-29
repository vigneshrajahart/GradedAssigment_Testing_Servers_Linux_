#!/bin/bash
DATE=$(date +%F)
DEST="/backups/apache_backup_$DATE.tar.gz"
tar -czf $DEST /etc/httpd/ /var/www/html/
echo "Apache backup created: $DEST"
tar -tzf $DEST > "../Task3_BackupConfig/verification_logs/apache_verify_$DATE.txt"
