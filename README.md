AVR-Stuffs
==========

The make file I use and some other scripts

Makefile
---------
I modified this makefile that I got from http://electrons.psychogenic.com and edited in some places. 
The usage is shown in the sublime build system file like:
`make PROJECTNAME+=$project_base_name MCU+=atmega324a PROGRAMMER_MCU+=m324pa AVRDUDE_PORT+=usb AVRDUDE_PROGRAMMERID+=avrisp2 hex >> build.log`

Make sure that the make file is named `makefile` when it is copied to your project directory. I have a folder of make files on my $PATH and so I have them named different things then I rename them when I copy them.

Check.sh
---------
This is just a script that I run before the make file from my Sublime Build System to make sure that the make file is in the project directory. I have it in my $PATH and run chmod -x on it.

Sublime Build System
---------------------
This is just a build system I use for one of the micro controllers I use often.
Put in in your `~/.config/sublime-text-2/User/` folder
