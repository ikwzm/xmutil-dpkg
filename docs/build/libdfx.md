### libdfx

#### Required Packages

 * linux-libc-dev

##### Install

```
shell$ sudo apt install linux-libc-dev-arm64-cross
```

#### Download

```console
shell$ git clone --branch xilinx_v2022.1_update2 https://github.com/Xilinx/libdfx
```

#### Patch for build Debian Package

```console
shell$ cd libdfx
shell$ patch -p1 < ../files/libdfx.diff
shell$ git add --all
shell$ git commit -m "[add] script files for build debian package"
```

#### Build

```console
shell$ mkdir build
shell$ cd build
shell$ cmake -DCMAKE_TOOLCHAIN_FILE="../cmake/toolchain.cmake" ..
shell$ cpack -G DEB -C CPackConfig.cmake
shell$ cp libdfx*.deb ../..
```

