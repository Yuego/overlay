# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1

DESCRIPTION="Pure-Python Rijndael and PBKDF2 package."
HOMEPAGE="https://github.com/dsoprea/RijndaelPbkdf"

SRC_URI="https://github.com/dsoprea/RijndaelPbkdf/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/RijndaelPbkdf-${PV}"

src_prepare () {
	distutils-r1_src_prepare
	rm -r tests
}
