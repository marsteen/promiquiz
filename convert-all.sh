#!/bin/sh
find ./TEST2 -name "*.jpg" -exec ./make-small.sh {} \;
