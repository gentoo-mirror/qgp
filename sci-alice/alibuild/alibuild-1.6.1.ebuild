# Copyright Jochen Klein

EAPI=7

PYTHON_COMPAT=( python3_{4,5,6,7,8} pypy3 )

inherit distutils-r1

DESCRIPTION="A simple build tool for the ALICE software and its externals"
HOMEPAGE="https://alisw.github.io/alibuild"
SRC_URI="mirror://pypi/${P:0:1}/${PN}/${P}.tar.gz"

RDEPEND="dev-python/requests
dev-python/pyyaml
dev-python/distro"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64"
