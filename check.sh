#! /bin/bash

# This script sets the working directory
# to the directory that it was called from
# or the directory that is passed to it.
# it then copies a makefile used for compiling 
# and generating hex files and invoking avrdude for 
# programming the Arduino board 

# Set Target Directory to either the directory 
# passed to it from the command line or to the 
# present working directory
if [ $# == 0 ]
then 
	echo "No Inputs: $#"
	echo "The present working directory : $PWD"
	Target="$PWD"
else
	echo "There Were $# Arguments"
	echo "And it was $1"
	Target="$1"
	echo "The target directory is $Target"
fi

# checks for the existence of a makefile in the
# defined target directory, if it is not there
# it is copied from a folder containing make files
if [ -e "$Target"/makefile ] 
then 
	echo "Makefile exits here in $Target"
else
	echo "Makefile Not Here.. But Will Be"
	echo "copy output:"
	cp -v ~/bin/Make/AVRmakefile "$Target"/makefile
	echo "Makefile Here Now... Look:"
	ls -la
fi


exit $?
