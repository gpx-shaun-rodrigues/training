#!/bin/sh
echo "*******************************"
echo "*     Linux Backup Script      *"
echo "*******************************"
echo "Script for Backing up"
SOURCE="$1"
BACKUP_DIR="$2"
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz"

mkdir -p "$BACKUP_DIR"
if [ -d "$SOURCE" ]; then
    echo "Backing up directory: $SOURCE"
    tar -czf "$BACKUP_FILE" -C "$SOURCE" .
else
    echo "Source is not a valid directory: $SOURCE"
    exit 1
fi