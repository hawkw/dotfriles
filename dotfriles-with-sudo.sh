#!/bin/bash
echo "Installing packages using APT."
echo "---------- -------- ----- ---"
echo "Updating APT indexes..."
apt-get update 1>&2
echo "Running apt-get upgrade (to bring you up to date)..."
echo "(THIS COULD TAKE A LONG TIME, PLEASE BE PATIENT)"
apt-get -y upgrade 1>&2
if [ -z $1 ] then;
	echo "Now installing git, zsh, and vim..."
	apt-get -y install git zsh vim 1>&2
	echo "Done!"
else
	echo "Now installing $1..."
	apt-get -y install $1 1>&2
	echo "Done!" 


