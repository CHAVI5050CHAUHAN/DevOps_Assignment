#!/bin/bash

DATE=$(date +%F_%H-%M-%S)

BACKUP_DIR=/backup

mkdir -p $BACKUP_DIR

BACKUP_FILE=$BACKUP_DIR/assignmentdb_$DATE.sql

mysqldump \
-h 127.0.0.1 \
-u root \
-proot123 \
assignmentdb > $BACKUP_FILE

gzip $BACKUP_FILE

aws s3 cp \
$BACKUP_FILE.gz \
s3://YOUR_BUCKET_NAME/

find $BACKUP_DIR -type f -mtime +7 -delete

echo "Backup Completed"
