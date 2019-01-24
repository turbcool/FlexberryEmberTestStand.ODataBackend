FROM microsoft/mssql-server-linux

COPY . /docker/

ARG TAG=1.0.0-beta01-mssql

RUN apt-get update ; apt-get -y  install mc htop wget ; \
	export ACCEPT_EULA=Y ; \
	export SA_PASSWORD=demoFD123 ; \
	wget https://raw.githubusercontent.com/Flexberry/FlexberryEmberTestStand.ODataBackend/$TAG/SQL/MSSql.create.sql ; \
	/opt/mssql-tools/bin/sqlcmd -l 600 -t 600 -S localhost -U SA -P 'demoFD123' -i /docker/host/create.sql ; \
	/opt/mssql-tools/bin/sqlcmd -l 600 -t 600 -S localhost -U SA -P 'demoFD123' -Q "SHUTDOWN" ;

