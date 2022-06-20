#!/bin/sh

cd $1/
find . | cpio --create --format='newc' | gzip > ../$1.img
cd ..
