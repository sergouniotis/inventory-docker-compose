#!/bin/bash
set -e

sleep 3

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER inventory PASSWORD 'password';
    CREATE DATABASE inventory;
    GRANT ALL PRIVILEGES ON DATABASE inventory TO inventory;
EOSQL