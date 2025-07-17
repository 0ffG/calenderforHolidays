#!/bin/bash

# Değişkenler
CONTAINER_NAME=holidays-api
ORACLE_IMAGE=gvenzl/oracle-xe
ORACLE_PASSWORD=g123
APP_USER=goktug
APP_USER_PASSWORD=g123
DB_PORT=1521

# Check if the container is already running
if [ $(docker ps -q -f name=$CONTAINER_NAME) ]; then
  echo "✅ $CONTAINER_NAME zaten çalışıyor."
else
  # Check if the container exists but is not running
  if [ $(docker ps -aq -f name=$CONTAINER_NAME) ]; then
    echo "🔄 $CONTAINER_NAME mevcut ama çalışmıyor. Başlatılıyor..."
    docker start $CONTAINER_NAME
  else
    echo "🚀 Oracle container başlatılıyor..."
    docker run -d --name $CONTAINER_NAME \
      -p $DB_PORT:$DB_PORT \
      -e ORACLE_PASSWORD=$ORACLE_PASSWORD \
      -e APP_USER=$APP_USER \
      -e APP_USER_PASSWORD=$APP_USER_PASSWORD \
      $ORACLE_IMAGE
  fi

  echo "⏳ Oracle'ın hazır hale gelmesi bekleniyor (60 saniye)..."
  sleep 60
fi

echo "📂 SQL dosyaları container'a kopyalanıyor..."
docker cp ./src/main/resources/schema.sql $CONTAINER_NAME:/tmp/schema.sql
docker cp ./src/main/resources/data.sql $CONTAINER_NAME:/tmp/data.sql

echo "📥 Schema yükleniyor..."
docker exec -i $CONTAINER_NAME bash -c \
  "echo exit | sqlplus $APP_USER/$APP_USER_PASSWORD@//localhost:$DB_PORT/XEPDB1 @/tmp/schema.sql"

echo "📥 Veri yükleniyor..."
docker exec -i $CONTAINER_NAME bash -c \
  "echo exit | sqlplus $APP_USER/$APP_USER_PASSWORD@//localhost:$DB_PORT/XEPDB1 @/tmp/data.sql"

echo "✅ Tüm işlemler başarıyla tamamlandı."
