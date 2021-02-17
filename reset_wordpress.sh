cd /srv/projects/dockers/wordpress-project/ && docker-compose down && docker volume prune -f
rm -rf /srv/projects/dockers/wordpress-project/wordpress/html/*
cp -rf /srv/projects/dockers/wordpress-project/wordpress_clean/html/* /srv/projects/dockers/wordpress-project/wordpress/html/ && chmod -R 777 /srv/projects/dockers/wordpress-project/wordpress/html/wp-content
cd /srv/projects/dockers/wordpress-project/ && docker-compose up -d
