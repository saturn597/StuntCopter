# StuntCopter
This is my fork of [StuntCopter](https://en.wikipedia.org/wiki/Stunt_Copter).


## About
StuntCopter is a classic game for very early (68k) Macs. It was created by Duane Blehm and was originally released in 1986.

In recent years, the source code for StuntCopter and a number of other of Blehm's games has been made public. The original source is shared in [this repository](https://github.com/gamache/blehm) (not mine!)

This offered me the opportunity to explore the internals of classic Mac systems by inspecting and tweaking a memorable piece of software from the era. This repository is the result.

Thank you Duane Blehm!


## Using these files
Accessing and using these files may be somewhat tricky. Some of the software needed is decades old.

Classic Macs used the HFS file system. In HFS, each file could have two "forks", a data fork and a resource fork. Applications from the period made especially heavy use of the resource fork, which contained executable code and other critical information. This translates poorly to non-Mac systems, which usually just ignore the resource fork.

To avoid this problem, this repository includes an HFS-formatted disk image containing the relevant files.

You can mount the disk image using something like this in Linux:

`sudo mount -t hfs stuntcopter.dsk mnt`

The Pascal source code is where most of the "action" happens. So my modified copy of that file is included outside of the disk image.

To make full use of the files, you can use [Mini vMac](https://www.gryphel.com/c/minivmac/). Mini vMac is a great emulator for early 68k Macs. Once you have an emulated Mac booted and running, simply drag the disk image to Mini vMac's window to mount it.

I'm using Turbo Pascal as a compiler and ResEdit to tweak resource forks. You can find them on the [Macintosh Repository](https://www.macintoshrepository.org/).
