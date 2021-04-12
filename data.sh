#!/bin/bash
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d "$POSTGRES_DB"  <<-EOSQL
    COPY $SCHEMA.my_table FROM '/data/SuperstoreSalesData.csv' DELIMITER ',' CSV HEADER;
EOSQL
