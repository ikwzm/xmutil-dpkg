### platformstats

#### Download

```console
shell$ git clone --branch xilinx_v2022.1_update2 https://github.com/Xilinx/platformstats
```

#### Patch for build Debian Package

```console
shell$ cd platformstats
shell$ patch -p1 < ../files/xlnx-platformstats.diff
shell$ git add --all
shell$ git commit -m "[add] script files for build debian package"
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
