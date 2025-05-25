#!/bin/bash

#Defining where the logs are and where to save the archives

LOG_DIR="/var/logs"      #Folder where the logs are
ARCHIVE_DIR="/var/archives" #Folder where the archives would be stored

#Creating the archive folder
mkdir -p "$ARCHIVE_DIR"


#Creating Archive Name Using Current Date and Time
CURRENT_TIME=$(date +"%Y-%m-%d_%H-%M-%S")
ARCHIVE_NAME="logs_$CURRENT_TIME.tar.gz"


#Compressing logs into the archive
tar -czvf "$ARCHIVE_DIR/$ARCHIVE_NAME" "$LOG_DIR"

echo "Logs have been archived successfully into $ARCHIVE_DIR/$ARCHIVE_NAME"

