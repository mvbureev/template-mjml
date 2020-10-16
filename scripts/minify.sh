#!/usr/bin/env bash

./node_modules/.bin/mjml ./src/* -o ./build/ --config.beautify false --config.minify true
