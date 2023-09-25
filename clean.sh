#!/bin/bash
#Script to make distclean from the buildroot directory
#Author: Tim Bailey, tiba6275@colorado.edu

if [ -d "buildroot" ]
then
	cd buildroot
	make distclean
else
    echo "buildroot directory does not exist."
	exit 1
fi
