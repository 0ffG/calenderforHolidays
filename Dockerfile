FROM gvenzl/oracle-xe:latest

# SQL dosyalarını otomatik çalıştırılacak dizine kopyala
COPY ./init/*.sql /opt/oracle/scripts/
