### fru-print

#### Download

```console
shell$ git clone --branch=v1.0.0 --depth=1 https://github.com/ikwzm/fru-print
Cloning into 'fru-print'...
remote: Enumerating objects: 20, done.        
remote: Counting objects: 100% (20/20), done.        
remote: Compressing objects: 100% (17/17), done.        
remote: Total 20 (delta 3), reused 17 (delta 0), pack-reused 0        
Unpacking objects: 100% (20/20), done.
```

#### Build Debian Package

```console
shell$ cd fru-print
shell$ sudo debian/rules binary
rm -rf debian/tmp
touch build
install -d debian/tmp/DEBIAN debian/tmp/usr/share/doc/fru-print debian/tmp/usr/bin
cp -a fru-print.py           debian/tmp/usr/bin
ln -s ./fru-print.py         debian/tmp/usr/bin/fru-print
cp -a debian/copyright       debian/tmp/usr/share/doc/fru-print/
cp -a debian/changelog       debian/tmp/usr/share/doc/fru-print/changelog.Debian
cp -a ChangeLog              debian/tmp/usr/share/doc/fru-print/changelog
dpkg-gencontrol
dpkg-gencontrol: warning: Depends field of package fru-print: unknown substitution variable ${misc:Depends}
dpkg-gencontrol: warning: Depends field of package fru-print: unknown substitution variable ${python3:Depends}
chown -R root:root debian/tmp
chmod -u+w,go=rX debian/tmp
dpkg-deb --build debian/tmp ..
dpkg-deb: building package 'fru-print' in '../fru-print_1.0.0_all.deb'.
```