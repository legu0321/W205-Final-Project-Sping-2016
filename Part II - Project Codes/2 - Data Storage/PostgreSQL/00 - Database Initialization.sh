mount -t ext4 /dev/xvdf /data

/root/start-hadoop.sh

mkdir /data/pgsql_project2
mkdir /data/pgsql_project2/data
mkdir /data/pgsql_project2/logs

chown -R postgres /data/pgsql_project2
su postgres
initdb -D /data/pgsql_project2/data
exit

sudo -u postgres pg_ctl -D /data/pgsql_project2/data -l /data/pgsql_project2/logs/pgsql.log start