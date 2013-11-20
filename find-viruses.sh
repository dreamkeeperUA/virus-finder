#!/bin/bash
if [ -z $1 ]; then
  echo "usage: $0 directory"
  exit 1
fi

echo "Searching in php files [001]..."
find $1 -type f -name *.php | xargs -d "\n" -n1 -P8 grep -liFf "./db/001.txt"

echo "Searching possibilities in php files [900]..."
find $1 -type f -name *.php | xargs -d "\n" -n1 -P8 grep -liFf "./db/101.txt"

echo "Searching in js files [201]..."
find $1 -type f -name *.js | xargs -d "\n" -n1 -P8 grep -liFf "./db/201.txt"

echo "Searching in htaccess..."
find $1 -type f -name .htaccess | xargs -d "\n" -n1 -P8 grep -li "RewriteCond %{HTTP_USER_AGENT} !"

echo "Finished!"