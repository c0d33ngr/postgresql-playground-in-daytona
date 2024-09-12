#!/usr/bin/env bash

# Get version number
major_version_number=$(psql --version | cut -d' ' -f3 | cut -d'.' -f1)

# Path to the pg_hba.conf file
PGHBA_CONF="/etc/postgresql/${major_version_number}/main/pg_hba.conf"

# Backup the original configuration file
cp $PGHBA_CONF ${PGHBA_CONF}.bak

# Modify the pg_hba.conf file to use 'trust' authentication
cat <<EOF > $PGHBA_CONF
# Database administrative login by Unix domain socket
local   all             all                                     trust
# TYPE  DATABASE        USER            ADDRESS                 METHOD

# "local" is for Unix domain socket connections only
local   all             all                                     trust
# IPv4 local connections:
host    all             all             127.0.0.1/32            trust
# IPv6 local connections:
host    all             all             ::1/128                 trust
# Allow replication connections from localhost, by a user with the
# replication privilege.
local   replication     all                                     trust
host    replication     all             127.0.0.1/32            trust
host    replication     all             ::1/128                 trust
EOF

# Restart PostgreSQL to apply changes
sudo service postgresql restart

echo "PostgreSQL configuration updated and service restarted."
