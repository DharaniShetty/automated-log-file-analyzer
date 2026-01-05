#!/bin/bash

LOG_FILE="../logs/sample.log"
OUTPUT_FILE="../output/report.txt"

echo "Log Analysis Report" > $OUTPUT_FILE
echo "===================" >> $OUTPUT_FILE

echo "Total ERROR count:" >> $OUTPUT_FILE
grep -i "error" $LOG_FILE | wc -l >> $OUTPUT_FILE

echo "" >> $OUTPUT_FILE
echo "Total WARNING count:" >> $OUTPUT_FILE
grep -i "warning" $LOG_FILE | wc -l >> $OUTPUT_FILE

echo "" >> $OUTPUT_FILE
echo "Total INFO count:" >> $OUTPUT_FILE
grep -i "info" $LOG_FILE | wc -l >> $OUTPUT_FILE

echo "Report generated successfully!"