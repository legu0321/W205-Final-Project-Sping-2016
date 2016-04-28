--sudo -u postgres psql

create user w205 WITH  PASSWORD 'postgres';
Create DATABASE ontime;
alter database ontime OWNER TO w205;
grant all on database ontime to w205;
