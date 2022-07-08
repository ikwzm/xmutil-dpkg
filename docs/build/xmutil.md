### xmutil

#### Download

```console
shell$ git clone --branch xilinx_v2022.1_update2 https://github.com/Xilinx/xmutil
```

#### Patch for build Debian Package

```console
shell$ cd xmutil
shell$ patch -p1 < ../files/xmutil.diff
shell$ git add --all
shell$ git commit -m "[add] script files for build debian package"
```

#### Build Debian Package

```console
shell$ sudo debian/rules binary
rm -rf debian/tmp
touch build
install -d debian/tmp/DEBIAN debian/tmp/usr/share/doc/xmutil debian/tmp/usr/bin
cp -a xmutil                 debian/tmp/usr/bin
cp -a som-pwrctl             debian/tmp/usr/bin
cp -a debian/copyright       debian/tmp/usr/share/doc/xmutil/
cp -a debian/changelog       debian/tmp/usr/share/doc/xmutil/changelog.Debian
cp -a ChangeLog              debian/tmp/usr/share/doc/xmutil/changelog
dpkg-gencontrol
chown -R root:root debian/tmp
chmod -u+w,go=rX debian/tmp
dpkg-deb --build debian/tmp ..
dpkg-deb: building package 'xmutil' in '../xmutil_2022.1.2_all.deb'.
```
