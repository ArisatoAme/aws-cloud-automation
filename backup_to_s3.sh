#!/bin/bash

# Configuration
SOURCE_DIR="/home/ame/important_data"  # <--- Change this to the folder you want to back up
BUCKET_NAME="project1-costcalc"
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_NAME="backup_$TIMESTAMP.tar.gz"

# 1. Create a compressed archive
tar -czf "/tmp/$BACKUP_NAME" "$SOURCE_DIR"

# 2. Upload to S3 using High-Level command
aws s3 cp "/tmp/$BACKUP_NAME" "s3://$BUCKET_NAME/"

# 3. Cleanup the local temp file
rm "/tmp/$BACKUP_NAME"

echo "Backup of $SOURCE_DIR completed and uploaded to $BUCKET_NAME at $TIMESTAMP"
