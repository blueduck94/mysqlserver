## Prerequisite:
- Install Docker Desktop [here](https://docs.docker.com/desktop/windows/install/)
- Install docker-compose [here](https://docs.docker.com/compose/install/)
- Install Azure Data Studio [here](https://docs.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15)
- download [AdventureWorksDW2017](https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2017.bak) and [AdventureWorks2017](https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2017.bak)
## Setup ENV
- create folder 'datastore' in the same location with docker-compose.yml file 
- copy 2 files bak AdventureWorks into dir /datastore/
- run this command in the folder which include docker-compose.yml to setup sql server 2017
```
docker-compose up -d
```
- run this command to exec bash in container then run cmd in the next step
```
docker exec -it mssqlserver bash
```
- run this command to restore AdventureWorksDW2017
```
/opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P 'Password123' \
   -Q 'RESTORE DATABASE AdventureWorksDW2017 FROM DISK = "/var/opt/mssql/backup/AdventureWorksDW2017.bak" WITH MOVE "AdventureWorksDW2017" TO "/var/opt/mssql/data/AdventureWorksDW2017.mdf", MOVE "AdventureWorksDW2017_log" TO "/var/opt/mssql/data/AdventureWorksDW2017_log.ldf"'
```
- run this command to restore AdventureWorksDW2017
```
/opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P 'Password123' \
   -Q 'RESTORE DATABASE AdventureWorks2017 FROM DISK = "/var/opt/mssql/backup/AdventureWorks2017.bak" WITH MOVE "AdventureWorks2017" TO "/var/opt/mssql/data/AdventureWorks2017.mdf", MOVE "AdventureWorks2017_log" TO "/var/opt/mssql/data/AdventureWorks2017_log.ldf"'
```
- connect to sql server following this docs [here](https://docs.microsoft.com/en-us/sql/azure-data-studio/quickstart-sql-server?view=sql-server-ver15). 

    - Server: localhost
    - username: sa
    - password: Password123

