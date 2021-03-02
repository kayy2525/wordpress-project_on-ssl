docker exec -it db_for_wordpress mysqldump -p123qweASDZXC -u root wordpress_db > /mnt/storage01/backups_db/project_wordpress_mazur/wordpress_db.sql
cd /srv/projects/dockers/wordpress-project/ && docker-compose down && sudo git add . && sudo git commit -m "backup_full" -u && sudo git push -f origin master
tar -czvf backup_full.tar.gz /srv/projects/dockers/wordpress-project && cp /srv/projects/dockers/wordpress-project/backup_full.tar.gz /mnt/storage02/backups/project_wordpress_mazur/
cd /srv/projects/dockers/wordpress-project/ && docker-compose up -d
echo "FINISH BACKUP"
