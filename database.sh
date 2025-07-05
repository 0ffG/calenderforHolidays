#!/bin/bash

set -e

DB_HOST=${DB_HOST:-localhost}
DB_PORT=${DB_PORT:-1521}
DB_SERVICE=${DB_SERVICE:-XEPDB1}
DB_USER=${DB_USER:-SYSTEM}
DB_PASS=${DB_PASS:-oracle}

SQLPLUS_CMD="sqlplus -s ${DB_USER}/${DB_PASS}@${DB_HOST}:${DB_PORT}/${DB_SERVICE}"

usage() {
    echo "Usage: $0 {create-schema|load-data|drop-tables|delete-data}" >&2
    exit 1
}

case "$1" in
    create-schema)
        mvn \
            -Dspring-boot.run.arguments="--spring.jpa.hibernate.ddl-auto=create --spring.main.web-application-type=none" \
            spring-boot:run
        ;;
    load-data)
        if [ ! -f data-insert.sql ]; then
            echo "data-insert.sql not found" >&2
            exit 1
        fi
        echo "Loading data from data-insert.sql..."
        echo "WHENEVER SQLERROR EXIT SQL.SQLCODE" > /tmp/load.sql
        cat data-insert.sql >> /tmp/load.sql
        echo "exit" >> /tmp/load.sql
        $SQLPLUS_CMD @/tmp/load.sql
        rm /tmp/load.sql
        ;;
    drop-tables)
        $SQLPLUS_CMD <<'EOSQL'
BEGIN
    FOR c IN (SELECT table_name FROM user_tables) LOOP
        EXECUTE IMMEDIATE 'DROP TABLE ' || c.table_name || ' CASCADE CONSTRAINTS';
    END LOOP;
END;
/
exit
EOSQL
        ;;
    delete-data)
        $SQLPLUS_CMD <<'EOSQL'
BEGIN
    FOR c IN (SELECT table_name FROM user_tables) LOOP
        EXECUTE IMMEDIATE 'TRUNCATE TABLE ' || c.table_name || ' CASCADE';
    END LOOP;
END;
/
exit
EOSQL
        ;;
    *)
        usage
        ;;
esac
