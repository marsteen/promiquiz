#!/bin/sh
find ./TEIL3 -name "*.webp" -exec convert {} {}.jpg \;
