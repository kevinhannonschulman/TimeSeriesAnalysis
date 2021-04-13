#!/bin/bash
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d "$POSTGRES_DB"  <<-EOSQL
    create schema if not exists $SCHEMA;
    create table $SCHEMA.my_table (
        row_id int,
        order_id varchar,
        order_date date
        ship_date date,
        ship_mode varchar,
        customer_id varchar,
        customer_name varchar,
        segment varchar,
        country varchar,
        city varchar,
        state varchar,
        postal_code int,
        region varchar,
        product_id varchar,
        category varchar,
        subcategory varchar,
        product_name varchar,
        sales numeric	
        );
EOSQL
