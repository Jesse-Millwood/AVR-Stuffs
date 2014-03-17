AVR-Stuffs
==========

The make file I use and some other scripts

Makefile
---------
I modified this makefile that I got from http://electrons.psychogenic.com.
The usage is shown in the sublime build system file like:
`make PROJECTNAME+=$project_base_name MCU+=atmega324a PROGRAMMER_MCU+=m324pa AVRDUDE_PORT+=usb AVRDUDE_PROGRAMMERID+=avrisp2 hex >> build.log`

Check.sh
---------
This is just a script that I run before the make file from my Sublime Build System to make sure that the make file is in the project directory.

Sublime Build System
---------------------
This is just a build system I use for one of the micro controllers I use often.
Put in in your ~/.config/sublime-text-2/User/ folder
