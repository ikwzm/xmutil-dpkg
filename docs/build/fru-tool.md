### fru-tool

#### Required Packages

 * python3-setuptools
 * python3-stdeb
 * dh-python
 * python3-all
 * fakeroot

#### Download

```console
shell$ git clone https://github.com/genotrance/fru-tool
Cloning into 'fru-tool'...
remote: Enumerating objects: 58, done.        
remote: Total 58 (delta 0), reused 0 (delta 0), pack-reused 58        
Unpacking objects: 100% (58/58), done.
```

#### Patch for xmutil

```console
shell$ cd fru-tool
shell$ patch -p1 < ../files/fru-tools.patch 
patching file fru.py
shell$ git add --update
shell$ git commit -m "patch for xmutil"
[master 3086cd8] patch for xmutil
 1 file changed, 50 insertions(+), 6 deletions(-)
```

#### Build Debian Package

```console
shell$ python3 setup.py sdist
running sdist
running check
warning: check: missing meta-data: if 'author' supplied, 'author_email' must be supplied too

warning: sdist: manifest template 'MANIFEST.in' does not exist (using default file list)

warning: sdist: standard file not found: should have one of README, README.txt

writing manifest file 'MANIFEST'
creating fru-3.0.1
making hard links in fru-3.0.1...
hard linking fru.py -> fru-3.0.1
hard linking setup.py -> fru-3.0.1
creating dist
Creating tar archive
removing 'fru-3.0.1' (and everything under it)
```

```console
shell$ py2dsc --with-python3=true dist/fru-3.0.1.tar.gz
```

```console
shell$ cd deb_dist/fru-3.0.1
shell$ dpkg-buildpackage -rfakeroot -uc -us
dpkg-buildpackage: info: source package fru
dpkg-buildpackage: info: source version 3.0.1-1
dpkg-buildpackage: info: source distribution unstable
dpkg-buildpackage: info: source changed by unknown <unknown@unknown>
dpkg-buildpackage: info: host architecture arm64
 dpkg-source --before-build .
 fakeroot debian/rules clean
dh clean --with python3 --buildsystem=pybuild
dh: warning: Compatibility levels before 10 are deprecated (level 9 in use)
   dh_auto_clean -O--buildsystem=pybuild
dh_auto_clean: warning: Compatibility levels before 10 are deprecated (level 9 in use)
I: pybuild base:232: python3.9 setup.py clean
running clean
removing '/home/fpga/work/xmutil-dpkg/fru-tool/deb_dist/fru-3.0.1/.pybuild/cpython3_3.9_fru/build' (and everything under it)
'build/bdist.linux-arm64' does not exist -- can't clean it
'build/scripts-3.9' does not exist -- can't clean it
   dh_clean -O--buildsystem=pybuild
dh_clean: warning: Compatibility levels before 10 are deprecated (level 9 in use)
 dpkg-source -b .
dpkg-source: info: using source format '3.0 (quilt)'
dpkg-source: info: building fru using existing ./fru_3.0.1.orig.tar.gz
dpkg-source: info: building fru in fru_3.0.1-1.debian.tar.xz
dpkg-source: info: building fru in fru_3.0.1-1.dsc
 debian/rules build
dh build --with python3 --buildsystem=pybuild
dh: warning: Compatibility levels before 10 are deprecated (level 9 in use)
   dh_update_autotools_config -O--buildsystem=pybuild
   dh_auto_configure -O--buildsystem=pybuild
dh_auto_configure: warning: Compatibility levels before 10 are deprecated (level 9 in use)
I: pybuild base:232: python3.9 setup.py config
running config
   dh_auto_build -O--buildsystem=pybuild
dh_auto_build: warning: Compatibility levels before 10 are deprecated (level 9 in use)
I: pybuild base:232: /usr/bin/python3 setup.py build
running build
running build_py
copying fru.py -> /home/fpga/work/xmutil-dpkg/fru-tool/deb_dist/fru-3.0.1/.pybuild/cpython3_3.9_fru/build
   dh_auto_test -O--buildsystem=pybuild
dh_auto_test: warning: Compatibility levels before 10 are deprecated (level 9 in use)
I: pybuild base:232: cd /home/fpga/work/xmutil-dpkg/fru-tool/deb_dist/fru-3.0.1/.pybuild/cpython3_3.9_fru/build; python3.9 -m unittest discover -v

----------------------------------------------------------------------
Ran 0 tests in 0.000s

OK
 fakeroot debian/rules binary
dh binary --with python3 --buildsystem=pybuild
dh: warning: Compatibility levels before 10 are deprecated (level 9 in use)
   dh_testroot -O--buildsystem=pybuild
   dh_prep -O--buildsystem=pybuild
   dh_auto_install -O--buildsystem=pybuild
dh_auto_install: warning: Compatibility levels before 10 are deprecated (level 9 in use)
I: pybuild base:232: /usr/bin/python3 setup.py install --root /home/fpga/work/xmutil-dpkg/fru-tool/deb_dist/fru-3.0.1/debian/python3-fru
running install
running build
running build_py
running install_lib
creating /home/fpga/work/xmutil-dpkg/fru-tool/deb_dist/fru-3.0.1/debian/python3-fru/usr
creating /home/fpga/work/xmutil-dpkg/fru-tool/deb_dist/fru-3.0.1/debian/python3-fru/usr/lib
creating /home/fpga/work/xmutil-dpkg/fru-tool/deb_dist/fru-3.0.1/debian/python3-fru/usr/lib/python3.9
creating /home/fpga/work/xmutil-dpkg/fru-tool/deb_dist/fru-3.0.1/debian/python3-fru/usr/lib/python3.9/dist-packages
copying /home/fpga/work/xmutil-dpkg/fru-tool/deb_dist/fru-3.0.1/.pybuild/cpython3_3.9_fru/build/fru.py -> /home/fpga/work/xmutil-dpkg/fru-tool/deb_dist/fru-3.0.1/debian/python3-fru/usr/lib/python3.9/dist-packages
byte-compiling /home/fpga/work/xmutil-dpkg/fru-tool/deb_dist/fru-3.0.1/debian/python3-fru/usr/lib/python3.9/dist-packages/fru.py to fru.cpython-39.pyc
running install_egg_info
Writing /home/fpga/work/xmutil-dpkg/fru-tool/deb_dist/fru-3.0.1/debian/python3-fru/usr/lib/python3.9/dist-packages/fru-3.0.1.egg-info
   dh_installdocs -O--buildsystem=pybuild
dh_installdocs: warning: Compatibility levels before 10 are deprecated (level 9 in use)
   dh_installchangelogs -O--buildsystem=pybuild
dh_installchangelogs: warning: Compatibility levels before 10 are deprecated (level 9 in use)
   dh_python3 -O--buildsystem=pybuild
   dh_installinit -O--buildsystem=pybuild
dh_installinit: warning: Compatibility levels before 10 are deprecated (level 9 in use)
   dh_perl -O--buildsystem=pybuild
   dh_link -O--buildsystem=pybuild
   dh_strip_nondeterminism -O--buildsystem=pybuild
   dh_compress -O--buildsystem=pybuild
dh_compress: warning: Compatibility levels before 10 are deprecated (level 9 in use)
   dh_fixperms -O--buildsystem=pybuild
   dh_missing -O--buildsystem=pybuild
dh_missing: warning: Compatibility levels before 10 are deprecated (level 9 in use)
   dh_installdeb -O--buildsystem=pybuild
dh_installdeb: warning: Compatibility levels before 10 are deprecated (level 9 in use)
   dh_gencontrol -O--buildsystem=pybuild
   dh_md5sums -O--buildsystem=pybuild
   dh_builddeb -O--buildsystem=pybuild
dpkg-deb: building package 'python3-fru' in '../python3-fru_3.0.1-1_all.deb'.
 dpkg-genbuildinfo
 dpkg-genchanges  >../fru_3.0.1-1_arm64.changes
dpkg-genchanges: info: including full source code in upload
 dpkg-source --after-build .
dpkg-buildpackage: info: full upload (original source is included)
```

```
shell$ mv ../python3-fru_3.0.1-1_all.deb ../../..
```
