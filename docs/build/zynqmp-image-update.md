### zynqmp-image-update

#### Download

```console
shell$ git clone --branch xilinx_v2022.1_update2 https://github.com/Xilinx/linux-image_update zynqmp-image-update
```

#### Patch for build Debian Package

```console
shell$ cd zynqmp-image-update
shell$ git checkout -b xilinx_v2022.1_update2_builddeb
shell$ patch -p1 < ../files/zynqmp-image-update-builddeb.patch
shell$ git add --all
shell$ git commit -m "[add] script files for build debian package"
shell$ git tag -a xilinx_v2022.1_update2_dpkg -m "xilinx_v2022.1_update2_dpkg"
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