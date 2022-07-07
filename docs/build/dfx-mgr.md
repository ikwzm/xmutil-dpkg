### dfx-mgr

#### Required Packages

 * libdfx
 * libwebsockets-dev

#### Download

```console
shell$ git clone --branch xilinx_v2022.1_update2 https://github.com/Xilinx/dfx-mgr
```

#### Patch for build Debian Package

```console
shell$ cd dfx-mgr
shell$ patch -p1 < ../files/dfx-mgr.diff
shell$ git add --all
shell$ git commit -m "[add] script files for build debian package"
```

#### Build

```console
shell$ mkdir build
shell$ cd build
shell$ ../build.sh
shell$ cpack -G DEB -C CPackConfig.cmake
shell$ cp dfx-mgr*.deb ../..
```

