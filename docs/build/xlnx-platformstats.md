### xlnx-platformstats

#### Download

```console
shell$ git clone --branch xilinx_v2022.1_update2 https://github.com/Xilinx/platformstats xlnx-platformstats
```

#### Patch for build Debian Package

```console
shell$ cd xlnx-platformstats
shell$ git checkout -b xilinx_v2022.1_update2-buildeb
shell$ patch -p1 < ../files/xlnx-platformstats-builddeb.patch
shell$ git add --all
shell$ git commit -m "[add] script files for build debian package"
shell$ git tag -a xilinx_v2022.1_update2-dpkg -m "xilinx_v2022.1_update2-dpkg"
```

#### Build

##### Self Compile

```console
shell$ sudo debian/rules binary
```

##### Cross Compile

```console
shell$ sudo debian/rules arch=arm64 deb_arch=arm64 binary
```
