#!/bin/bash
LOG_FILE="../Task1_SystemMonitoring/logs/sys_metrics.log"
echo "System Monitoring Report - $(date)" >> $LOG_FILE
echo "==== CPU and Memory Usage (top) ====" >> $LOG_FILE
top -b -n1 | head -20 >> $LOG_FILE
echo "==== Disk Usage ====" >> $LOG_FILE
df -h >> $LOG_FILE
echo "==== Detailed Directory Sizes (/home) ====" >> $LOG_FILE
du -sh /home/* >> $LOG_FILE
echo "==== Top Processes ====" >> $LOG_FILE
ps aux --sort=-%mem | head -10 >> $LOG_FILE
echo "-------------------------------------------" >> $LOG_FILE
