#!/usr/bin/env bash

DIR="$(pwd)/build"

rm -rf $DIR/index.html
touch $DIR/index.html

echo "<!doctype html><html><head><title>MJML list</title></head><body>" >> $DIR/index.html

for entry in $DIR/*
do
  echo "<a href='$entry'>${entry#*$DIR*}</a><br /><br />" >> $DIR/index.html
done

echo "</body></html>" >> $DIR/index.html
