docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Numsey@Password!' -p 1401:1433 -d --name=mac_sql microsoft/mssql-server-linux:2017-latest
docker exec -it mac_sql /opt/mssql-tools/bin/sqlcmd -S localhost -U sa
CREATE DATABASE shop
SELECT name from sys.Databases
go