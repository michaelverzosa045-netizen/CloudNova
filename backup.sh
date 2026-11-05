#!/bin/bash
# CloudNova Automated Database Backup Script

set -e

BACKUP_DIR="/home/vboxuser/wordpress-cloud/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
CONTAINER_NAME="wordpress-cloud-db-1"
BACKUP_FILE="$BACKUP_DIR/wordpress_backup_$TIMESTAMP.sql"

mkdir -p "$BACKUP_DIR"

echo "Starting database backup..."

if docker exec -i "$CONTAINER_NAME" sh -c 'set -e; trap "rm -f /tmp/mysql-client.cnf" EXIT; cat > /tmp/mysql-client.cnf; chmod 600 /tmp/mysql-client.cnf; mysqldump --defaults-extra-file=/tmp/mysql-client.cnf --no-tablespaces wordpress' < mysql-client.cnf > "$BACKUP_FILE"; then

    if [ -s "$BACKUP_FILE" ]; then
        echo "Backup completed successfully: $BACKUP_FILE"
    else
        echo "ERROR: Backup file is empty."
        rm -f "$BACKUP_FILE"
        exit 1
    fi
else
    echo "ERROR: Database backup failed."
    rm -f "$BACKUP_FILE"
    exit 1
fi
