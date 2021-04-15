#!/bin/bash
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d "$POSTGRES_DB"  <<-EOSQL
    create schema if not exists $SCHEMA;
    create table $SCHEMA.my_table (
        order_id text,
        order_date text,
        ship_date text,
        ship_mode text,
        customer_id text,
        customer_name text,
        segment text,
        country text,
        city text,
        state text,
        postal_code text,
        region text,
        product_id text,
        category text,
        subcategory text,
        product_name text,
        sales text	
        );
EOSQL
