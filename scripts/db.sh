#!/bin/bash

# Script working dir
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

DB_HOST=$(grep -Po "(?<=^DB_HOST=).*" $DIR/../.env)
DB_DATABASE=$(grep -Po "(?<=^DB_DATABASE=).*" $DIR/../.env)
DB_USERNAME=$(grep -Po "(?<=^DB_USERNAME=).*" $DIR/../.env)
DB_PASS=$(grep -Po "(?<=^DB_PASSWORD=).*" $DIR/../.env | sed "s/\"//g")

mysql -u $DB_USERNAME -p"$DB_PASS" -h $DB_HOST $DB_DATABASE
