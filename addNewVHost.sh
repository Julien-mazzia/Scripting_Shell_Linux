echo "Entrez le nom du serveur : "
read ServerName
echo "$ServerName	IN	CNAME	WSSYSCP1" >> /etc/bind/db.workshop.fr

touch /etc/apache2/sites-available/WSSYSCP1.$ServerName.conf
FileConf = "/etc/apache2/sites-available/WSSYSCP1.$ServerName.conf"

cd /var/www/
mkdir $ServerName
touch  /var/www/$ServerName/index.html
echo "<h1>$ServerName</h1>" >> /var/www/$ServerName/index.html
cd

chemin="/var/www/$ServerName/"

echo "<VirtualHost $ServerName.workshop.fr:8080>" >> /etc/apache2/sites-available/WSSYSCP1.$ServerName.conf
echo "	ServerName WSSYSCP1.$ServerName.fr" >> /etc/apache2/sites-available/WSSYSCP1.$ServerName.conf
echo "	ServerAdmin webmaster@localhost" >> /etc/apache2/sites-available/WSSYSCP1.$ServerName.conf
echo "	DocumentRoot $chemin" >> /etc/apache2/sites-available/WSSYSCP1.$ServerName.conf
echo "	ServerPath $chemin" >> /etc/apache2/sites-available/WSSYSCP1.$ServerName.conf
echo "	ErrorLog ${APACHE_LOG_DIR}/error.log" >> /etc/apache2/sites-available/WSYSCP1.$ServerName.conf
echo "	CustomLog ${APACHE_LOG_DIR}/acces.log combined" >> /etc/apache2/sites-available/WSSYSCP1.$ServerName.conf
echo "</VirtualHost>" >> /etc/apache2/sites-available/WSSYSCP1.$ServerName.conf




a2ensite WSSYSCP1.$ServerName.conf
service apache2 reload

