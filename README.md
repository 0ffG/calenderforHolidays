# calenderforHolidays

This project is a simple Spring Boot API for querying holidays. It uses Oracle as the database.

## Database utilities

A helper script `database.sh` is provided to manage the local Oracle schema and demo data. It expects an Oracle server accessible using the credentials in `application.properties` or via the environment variables `DB_HOST`, `DB_PORT`, `DB_SERVICE`, `DB_USER`, and `DB_PASS`. The script uses the Maven wrapper (`./mvnw`) so Maven does not need to be installed separately.

```
./database.sh create-schema   # Creates tables based on JPA entities
./database.sh load-data       # Loads sample data from data-insert.sql
./database.sh delete-data     # Truncates all tables
./database.sh drop-tables     # Drops all tables
```

The `data-insert.sql` file contains example inserts for the tables defined by the entities.
