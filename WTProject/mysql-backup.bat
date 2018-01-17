@ECHO OFF
set TIMESTAMP=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%
REM Export all databases into file C:\path\backup\databases.[year][month][day].sql
"C:\Program Files\MySQL\MySQL Server 5.7\bin\mysqldump.exe" --databases wtprojectdb --result-file="V:\backup\databases.%TIMESTAMP%.sql" --user=root --password=Vinayak
REM Change working directory to the location of the DB dump file.
C:
CD \V:\backup
REM Compress DB dump file into CAB file (use "EXPAND file.cab" to decompress).
MAKECAB "databases.%TIMESTAMP%.sql" "databases.%TIMESTAMP%.sql.cab"
REM Delete uncompressed DB dump file.
DEL /q /f "databases.%TIMESTAMP%.sql"