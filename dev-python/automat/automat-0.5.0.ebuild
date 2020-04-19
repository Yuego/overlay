# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="Self-service finite-state machines for the programmer on the go"
HOMEPAGE="https://github.com/glyph/automat"

MY_PN="Automat"
#SRC_URI="https://github.com/glyph/automat/archive/v${PV}.tar.gz -> ${P}.tar.gz"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_PN}-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	dev-python/attrs[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	dev-python/m2r[${PYTHON_USEDEP}]
"

S="${WORKDIR}/${MY_PN}-${PV}"
