# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8,9} pypy3 )

inherit distutils-r1

DESCRIPTION="A format-agnostic tabular dataset library written in Python"
HOMEPAGE="http://python-tablib.org/ https://github.com/jazzband/tablib"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="MIT"
KEYWORDS="amd64 ~x86"
IUSE="test"

RDEPEND="
	dev-python/odfpy[${PYTHON_USEDEP}]
	>=dev-python/openpyxl-2.6.0[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/ujson[${PYTHON_USEDEP}]
	dev-python/xlrd[${PYTHON_USEDEP}]
	dev-python/xlwt[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	test? ( dev-python/pytest[${PYTHON_USEDEP}] )
"

python_test() {
	py.test -v -v  || die
}
