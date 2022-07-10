### ddr-qos

#### Download

```console
shell$ git clone --branch xilinx_v2022.1_update2 https://github.com/Xilinx/ddr-qos
```

#### Patch for Build

```console
shell$ cd ddr-qos
shell$ git checkout -b xilinx_v2022.1_update2-builddeb
shell$ patch -p1 < ../files/ddr-qos-builddeb.patch
shell$ git add --all
shell$ git commit -m "[add] cmake/toolchain.cmake"
shell$ git tag -a xilinx_v2022.1_update2-dpkg -m "Release xilinx_v2022.1_update2-dpkg"
```

#### Build

```console
shell$ mkdir build
shell$ cd build
shell$ cmake -DCMAKE_TOOLCHAIN_FILE="../cmake/toolchain.cmake" ..
shell$ cpack -G DEB -C CPackConfig.cmake
shell$ cp ddr-qos*.deb ../..
```
