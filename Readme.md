xmutil-dpkg - xmutil debian packages
====================================

## Overview

This repository provides Debian packages for making xmutil available on Debian systems.

Xmutil is a wrapper script provided by Xilinx.
The copyright of xmutil is owned by Xilinx and is published under the MIT license.
See https://github.com/Xilinx/xmutil for more information.

## Install

### Install Debian Packages

```console
shell$ sudo apt install -y ./*.deb
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Note, selecting 'axi-qos' instead of './axi-qos-1.0-1.arm64.deb'
Note, selecting 'ddr-qos' instead of './ddr-qos-1.0-1.arm64.deb'
Note, selecting 'dfx-mgr' instead of './dfx-mgr-0.1.1-Linux.deb'
Note, selecting 'fru-print' instead of './fru-print_1.0.0_all.deb'
Note, selecting 'libdfx' instead of './libdfx-0.1.1-Linux.deb'
Note, selecting 'xlnx-platformstats' instead of './xlnx-platformstats_2022.1.2_arm64.deb'
Note, selecting 'xmutil' instead of './xmutil_2022.1.2_all.deb'
Note, selecting 'zynqmp-image-update' instead of './zynqmp-image-update_2022.1.2_arm64.deb'
The following NEW packages will be installed:
  axi-qos ddr-qos dfx-mgr fru-print libdfx xlnx-platformstats xmutil
  zynqmp-image-update
0 upgraded, 8 newly installed, 0 to remove and 30 not upgraded.
Need to get 0 B/1187 kB of archives.
After this operation, 4997 kB of additional disk space will be used.
Get:1 /home/fpga/work/xmutil-dpkg/axi-qos-1.0-1.arm64.deb axi-qos arm64 1.0 [5856 B]
Get:2 /home/fpga/work/xmutil-dpkg/ddr-qos-1.0-1.arm64.deb ddr-qos arm64 1.0 [5808 B]
Get:3 /home/fpga/work/xmutil-dpkg/dfx-mgr-0.1.1-Linux.deb dfx-mgr arm64 0.1.1 [1129 kB]
Get:4 /home/fpga/work/xmutil-dpkg/libdfx-0.1.1-Linux.deb libdfx arm64 0.1.1 [14.8 kB]
Get:5 /home/fpga/work/xmutil-dpkg/fru-print_1.0.0_all.deb fru-print all 1.0.0 [5304 B]
Get:6 /home/fpga/work/xmutil-dpkg/xlnx-platformstats_2022.1.2_arm64.deb xlnx-platformstats arm64 2022.1.2 [13.5 kB]
Get:7 /home/fpga/work/xmutil-dpkg/zynqmp-image-update_2022.1.2_arm64.deb zynqmp-image-update arm64 2022.1.2 [8456 B]
Get:8 /home/fpga/work/xmutil-dpkg/xmutil_2022.1.2_all.deb xmutil all 2022.1.2 [4012 B]
Selecting previously unselected package axi-qos.
(Reading database ... 125320 files and directories currently installed.)
Preparing to unpack .../0-axi-qos-1.0-1.arm64.deb ...
Unpacking axi-qos (1.0) ...
Selecting previously unselected package ddr-qos.
Preparing to unpack .../1-ddr-qos-1.0-1.arm64.deb ...
Unpacking ddr-qos (1.0) ...
Selecting previously unselected package dfx-mgr.
Preparing to unpack .../2-dfx-mgr-0.1.1-Linux.deb ...
Unpacking dfx-mgr (0.1.1) ...
Selecting previously unselected package libdfx.
Preparing to unpack .../3-libdfx-0.1.1-Linux.deb ...
Unpacking libdfx (0.1.1) ...
Selecting previously unselected package fru-print.
Preparing to unpack .../4-fru-print_1.0.0_all.deb ...
Unpacking fru-print (1.0.0) ...
Selecting previously unselected package xlnx-platformstats.
Preparing to unpack .../5-xlnx-platformstats_2022.1.2_arm64.deb ...
Unpacking xlnx-platformstats (2022.1.2) ...
Selecting previously unselected package zynqmp-image-update.
Preparing to unpack .../6-zynqmp-image-update_2022.1.2_arm64.deb ...
Unpacking zynqmp-image-update (2022.1.2) ...
Selecting previously unselected package xmutil.
Preparing to unpack .../7-xmutil_2022.1.2_all.deb ...
Unpacking xmutil (2022.1.2) ...
Setting up fru-print (1.0.0) ...
Setting up zynqmp-image-update (2022.1.2) ...
Setting up ddr-qos (1.0) ...
Setting up libdfx (0.1.1) ...
Setting up dfx-mgr (0.1.1) ...
Setting up axi-qos (1.0) ...
Setting up xlnx-platformstats (2022.1.2) ...
Setting up xmutil (2022.1.2) ...
```

### Install distro python package for xmutil

```console
sudo pip install distro
Collecting distro
  Downloading distro-1.7.0-py3-none-any.whl (20 kB)
Installing collected packages: distro
Successfully installed distro-1.7.0
```

## Build Debian Packages

* [fru-print_1.0.0_all.deb](docs/build/fru-print.md)
* [zynqmp-image-update_2022.1.2_arm64.deb](docs/build/zynqmp-image-update.md)
* [libdfx-0.1.1-Linux.deb](docs/build/libdfx.md)
* [dfx-mgr-0.1.1-Linux.deb](docs/build/dfx-mgr.md)
* [xlnx-platformstats_2022.1.2_arm64.deb](docs/build/xlnx-platformstats.md)
* [ddr-qos-1.0-1.arm64.deb](docs/build/ddr-qos.md)
* [axi-qos-1.0-1.arm64.deb](docs/build/axi-qos.md)
* [xmutil_2022.1.2_all.deb](docs/build/xmutil.md)