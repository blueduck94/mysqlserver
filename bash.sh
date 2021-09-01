/opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P 'Password123' \
   -Q "RESTORE FILELISTONLY FROM DISK = '/var/opt/mssql/backup/AdventureWorks2017.bak'"

/opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P 'Password123' \
   -Q "RESTORE FILELISTONLY FROM DISK = '/var/opt/mssql/backup/AdventureWorksDW2017.bak'"

/opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P 'Password123' \
   -Q 'RESTORE DATABASE AdventureWorksDW2017 FROM DISK = "/var/opt/mssql/backup/AdventureWorksDW2017.bak" WITH MOVE "AdventureWorksDW2017" TO "/var/opt/mssql/data/AdventureWorksDW2017.mdf", MOVE "AdventureWorksDW2017_log" TO "/var/opt/mssql/data/AdventureWorksDW2017_log.ldf"'

/opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P 'Password123' \
   -Q 'RESTORE DATABASE AdventureWorks2017 FROM DISK = "/var/opt/mssql/backup/AdventureWorks2017.bak" WITH MOVE "AdventureWorks2017" TO "/var/opt/mssql/data/AdventureWorks2017.mdf", MOVE "AdventureWorks2017_log" TO "/var/opt/mssql/data/AdventureWorks2017_log.ldf"'

