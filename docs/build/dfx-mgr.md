### dfx-mgr

#### Required Packages

 * libdfx
 * libwebsockets-dev
 * libssl-dev

#### Download

```console
shell$ git clone --branch xilinx_v2022.1_update2 https://github.com/Xilinx/dfx-mgr
```

#### Patch for build Debian Package

```console
shell$ cd dfx-mgr
shell$ git checkout -b xilinx_v2022.1_update2-builddeb
shell$ patch -p1 < ../files/dfx-mgr-builddeb.patch
shell$ git add --all
shell$ git commit -m "[add] script files for build debian package"
shell$ git tag -a xilinx_v2022.1_update2-dpkg -m "Release xilinx_v2022.1_update2-dpkg"
```

#### Build

```console
shell$ mkdir build
shell$ cd build
shell$ ../build.sh
shell$ cpack -G DEB -C CPackConfig.cmake
shell$ cp dfx-mgr*.deb ../..
```

