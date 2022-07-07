### image_update

#### Download

```console
shell$ git clone --branch xilinx_v2022.1_update2 https://github.com/Xilinx/linux-image_update
```

#### Patch for build Debian Package

```console
shell$ cd linux-image_update
shell$ patch -p1 < ../files/zynqmp-image-update.diff
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