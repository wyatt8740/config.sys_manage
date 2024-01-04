# MS-DOS `CONFIG.SYS` Manager

This is a script to support quick switching between predefined pairings of
`CONFIG.SYS` and `AUTOEXEC.BAT` for use in DOS.

I wrote it for my NEC PC-9801 clone (Epson PC-486GR), since NEC DOS 6.2 appears
not to support a boot menu in `CONFIG.SYS` like western PC-DOS/MS-DOS version 6
does... Which is pretty annoying.

When using this script to manage your `CONFIG.SYS` and `AUTOEXEC.BAT` files, it
is important to remember that any changes made to the top-level `CONFIG.SYS`
and `AUTOEXEC.BAT` files will not be saved once the script is run again! You
should get in the habit of either editing the file both in the root and in
`\DOSCONFS`, or of just editing it in `\DOSCONFS` and re-running the script to
make the system's 'real' `CONFIG.SYS`/`AUTOEXEC.BAT` files pick up the changes.

### Setup

This script depends on some manual editing if you wish to change where you
store your `CONFIG.SYS` and `AUTOEXEC.BAT` files.

As configured on my system, `\UTILS` is part of my PATH variable (so i can
just type `config` from anywhere and get to my selection menu).

My script currently assumes that you are currently on the drive letter you wish
to write a CONFIG.SYS and AUTOEXEC.BAT file to. This is mainly because PC-9801
DOS does not always reserve drive letters `A:` and `B:` for floppy disk drives.
Instead, whatever the boot medium was will be drive `A:`. On my system, when
booted from a hard disk, the DOS partition on the HDD is drive `A:`, other
partitions on the HDD are `B:` and `C:`, and the floppy disk drives are letters
`D:` and `E:`.

So if you are using this on a western DOS system, or else always just know what
the drive letter you want to write to is, you may have to edit the .BAT file to
account for that. But if you're in the `C:` drive in western DOS and you run
my script, it should still work fine to write new `CONFIG.SYS` and
`AUTOEXEC.BAT` files to the `C:` drive. The same for any other drive letter
your DOS installation might be on.

You will definitely have to change my CONFIG.SYS and AUTOEXEC.BAT files if not
running on a PC-98. They may have drive letter A hardcoded in places.

### Dependencies

The only potentially non-trivial dependency (depending on DOS version) is
`CHOICE.EXE`. A version of this program is included in MS-DOS version 6
(including NEC's PC-9801 version of 6.2), but not necessarily in older
releases (like 3.3).

The `UTILS\CHOICE.EXE` program contained in this repository is a free software
(GPL2) implementation of DOS version 6's `CHOICE` command; I suggest you just
use the version that came with your DOS, if it exists, but otherwise I think
this one will work. I am providing this version as an optional alternative
version just in case your system is running an older version of DOS that does
not contain it.

Note that I have not tested CHOICE.EXE on anything other than PC-9801 DOS 6.2
on a 486 class CPU yet, so I'm sorry if there are issues on your machine. I
don't often build anything for DOS. I compiled it with te Open Watcom V2 C
compiler under DOSBox and then copied it to my Epson PC for testing; it appears
to function normally under PC-98 DOS, and I see no reason why it would not work
equally well in western (DOS/V) DOS or FreeDOS.

In accordance with GPL2, you may find the source code for this version of
`CHOICE.EXE` at
[http://www.ibiblio.org/pub/micro/pc-stuff/freedos/files/distributions/1.2/repos/pkg-html/choice.html](http://www.ibiblio.org/pub/micro/pc-stuff/freedos/files/distributions/1.2/repos/pkg-html/choice.html).

I have made zero changes to the sources in my build of it.

