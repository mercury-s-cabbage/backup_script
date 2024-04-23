#! /bin/bash
file_to_backup=$1
name=$2
backup_file="backup_$(date +'%Y%m%d%H%M%S').txt"
if [ $name ]
then
    backup_file="$name"_"$(date +'%Y%m%d%H%M%S').txt"
fi

mkdir -p  "${name}_backup"

cp "$file_to_backup" "${name}_backup/$backup_file"
echo "Backup created at $(date +'%Y-%m-%d %H:%M:%S'): $backup_file" >>"${name}_backup/backup.log"