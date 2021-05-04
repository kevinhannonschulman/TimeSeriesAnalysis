#!/bin/bash
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" -d "$POSTGRES_DB"  <<-EOSQL
    create schema if not exists $SCHEMA;
    create table $SCHEMA.my_table (
        date text,
        total text,
        anc text,
        atl text,
        den text,
        dfw text,
        fll text,
        las text,
        lax text,
        mia text,
        mco text,
        pdx text,
        phx text,
        sea text,
        sfo text,
        tpa text);
EOSQL
