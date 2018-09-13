qgp overlay
=======

Gentoo overlay containing ebuilds for different kinds of software,
including ALICE and ALICE TRD software.

The overlay can be added using:
```
layman -o https://raw.github.com/qgp/gentoo-qgp/master/repositories.xml -a qgp
```

Alternatively, put a file ```qgp.conf``` into ```/etc/portage/repos.conf/``` which contains:
```
[qgp]
location = /usr/local/overlay/qgp
sync-type = git
sync-uri = git://github.com/qgp/gentoo-qgp
auto-sync = yes
```
e.g. with
```
curl https://raw.github.com/qgp/gentoo-qgp/master/qgp.conf -o /etc/portage/repos.conf/qgp.conf
```
