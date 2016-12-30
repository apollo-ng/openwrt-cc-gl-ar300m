This is a build-root for OpenWrt CC1505 with updated GLI patches,
including GL-AR150, GL-AR300, GL-Domino, GL-MT300N, GL-MT300A, GL-MT750,
based on https://github.com/domino-team/openwrt-cc.git

Patches already have been applied. Just use "make menuconfig" to configure your
appreciated configuration for the toolchain and firmware. Already included are
most common wifi tools like horst, aircrack-ng, kismet, babel and the python
packet forging framework to get a swiss army knife for wireless networks.

To build your own firmware you need to have access to a Linux, BSD or MacOSX system
(case-sensitive filesystem required). Cygwin will not be supported because of
the lack of case sensitiveness in the file system.


#Use in Ubuntu

```
$ sudo apt-get update
$ sudo apt-get install subversion build-essential git-core libncurses5-dev zlib1g-dev gawk flex quilt libssl-dev xsltproc libxml-parser-perl mercurial bzr ecj cvs unzip git wget
$ git clone https://github.com/apollo-ng/openwrt-cc-gl-ar300m.git
$ cd openwrt-cc-gl-ar300m
$ ./scripts/feeds update -a
$ ./scripts/feeds install -a
$ make menuconfig
  ..choose your compile target and packages
$ make -j4 V=s
```

It will download all sources, build the cross-compile toolchain,
the kernel and all chosen applications.

You need to have a fast Internet connection otherwise it will takes very long to
download the resources, at least several hundreds of MB. If you have all the
source already, just put them in your 'openwrt-cc-gl-ar300m/dl' folder (or make
it a link to a central place where all your openwrt buildroots point to)and
you save time to download resources.

It takes 30 minutes to 1 hours to compile depends on your computer.


# Flash the image

Use this file:

openwrt-cc-gl-ar300m/bin/ar71xx/openwrt-ar71xx-nand-gl-ar300m-squashfs-sysupgrade.tar

Upload like any other openwrt firmware. Done.
