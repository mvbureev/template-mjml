#!/usr/bin/env bash

ROOT="$(pwd)"

./node_modules/.bin/mjml -w ./src/* -o ./build/ &
sleep 1; npm run gen:index > /dev/null 2>&1 &
sleep 1; node $ROOT/scripts/open-browser.js  > /dev/null 2>&1 &
while true; do
    npm run gen:index > /dev/null 2>&1
    sleep 2
done
