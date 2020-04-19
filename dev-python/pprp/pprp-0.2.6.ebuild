# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{5,6,7} pypy )

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
