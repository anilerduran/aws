#!/bin/bash
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list)"

sudo apt-get update

sudo apt-get install -y mssql-server

sudo MSSQL_PID=Developer ACCEPT_EULA=Y MSSQL_SA_PASSWORD='P@ssword1' /opt/mssql/bin/mssql-conf -n setup
