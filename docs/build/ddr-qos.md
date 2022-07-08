### ddr-qos

#### Download

```console
shell$ git clone --branch xilinx_v2022.1_update2 https://github.com/Xilinx/ddr-qos
```

#### Patch for Build

```console
shell$ cd ddr-qos
shell$ patch -p1 < ../files/ddr-qos.diff
shell$ git add --all
shell$ git commit -m "[add] cmake/toolchain.cmake"
```

#### Build

```console
shell$ mkdir build
shell$ cd build
shell$ cmake -DCMAKE_TOOLCHAIN_FILE="../cmake/toolchain.cmake" ..
shell$ cpack -G DEB -C CPackConfig.cmake
shell$ cp ddr-qos*.deb ../..
```
