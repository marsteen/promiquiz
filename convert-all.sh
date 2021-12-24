#!/bin/sh
find ./TEIL2 -name "*.jpg" -exec ./make-small.sh {} \;
