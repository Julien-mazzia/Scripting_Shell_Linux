if [ ! -d "ServerBackUp" ]
then
	mkdir ServerBackUp
fi

tar zcvf ServerBackUp/ServerConf.tar.gz /etc/bind/named.conf.local
tar zcvf ServerBackUp/DNSConf.tar.gz /etc/bind/db.workshop.fr
