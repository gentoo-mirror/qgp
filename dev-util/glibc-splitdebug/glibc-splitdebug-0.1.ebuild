# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="splitdebug settings for glibc"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_unpack() {
  mkdir ${P}
}

src_install() {
  einfo "Installing splitdebug.conf"
  insinto /etc/portage/env
  doins ${FILESDIR}/splitdebug.conf

  einfo "Installing glibc.conf"
  insinto /etc/portage/package.env
  doins ${FILESDIR}/glibc.conf
}
