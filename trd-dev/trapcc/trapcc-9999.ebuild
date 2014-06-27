# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit eutils

HOMEPAGE="http://alice.physi.uni-heidelberg.de/"

if [[ ${PV} == "9999" ]] ; then
	inherit subversion
	ESVN_REPO_URI="http://alice.physi.uni-heidelberg.de/svn/trd/TRAP_compilers/trapcc/trunk"
	ESVN_PROJECT="trapcc"
	ESVN_BOOTSTRAP="./bootstrap"
else
	SRC_URI="http://TRD:1000e@alice.physi.uni-heidelberg.de/software/yum/RPMS/i386/${P}-1.i386.rpm"
fi;

DESCRIPTION="TRD TRAP configuration compiler"

LICENSE=""

SLOT="0"

MAKEOPTS="-j1"

KEYWORDS="~x86 ~amd64"

IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_unpack() {
	if [[ ${PV} == "9999" ]] ; then
	subversion_src_unpack
	else
	unpack ${A}
	fi;
}

pkg_setup () {
	einfo "setup"
}

pkg_configure() {
	econf
}

pkg_compile() {
	emake
}

pkg_postinst() {
	einfo "postinst"
}

src_install() {
	einfo "install"
	emake DESTDIR="${D}" install || die
}
