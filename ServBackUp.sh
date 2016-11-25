if [ ! -d "ServerBackUp" ]
then
	mkdir ServerBackUp
fi

tar zcvf ServerBackUp/ServerConf.tar.gz /etc/apache2/sites-available/
tar zcvf ServerBackUp/DNSConf.tar.gz /etc/bind/
