CREATE USER 'vr'@'%' IDENTIFIED BY '8262';

-- configure minimum requored permissions for performing a db backup using mysqldump: 
GRANT SELECT, LOCK TABLES, SHOW VIEW, PROCESS ON *.* TO 'vr'@'%';

-- configure required permissions to restore a database 
GRANT ALL ON ShopDBReserve.* TO 'vr'@'%';

-- configure required permissions to restore only data
GRANT INSERT, LOCK TABLES, ALTER ON ShopDBDevelopment.* TO 'vr'@'%';
