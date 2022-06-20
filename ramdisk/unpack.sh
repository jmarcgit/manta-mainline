#!/bin/sh

mkdir $1
cd $1/
gunzip -c ../$1.img | cpio -idm
cd ..
