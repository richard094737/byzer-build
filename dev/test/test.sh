docker run -d \
-p 3306:3306 \
-e MYSQL_ROOT_PASSWORD=root \
--name mysql-python \
mysql-python:8.0-3.6

docker run -d \
-p 3306:3306 \
-p 9002:9002 \
-p 9003:9003 \
-e MYSQL_ROOT_HOST=% \
-e MYSQL_ROOT_PASSWORD="${MYSQL_PASSWORD}" \
-v ~/tmp/logs/byzer-notebook:/home/deploy/byzer-notebook/logs \
-v ~/tmp/logs/byzer-lang:/work/logs \
--name byzer-sandbox-${SPARK_VERSION}-${BYZER_LANG_VERSION} \
byzer/byzer-sandbox:${SPARK_VERSION}-${BYZER_LANG_VERSION}