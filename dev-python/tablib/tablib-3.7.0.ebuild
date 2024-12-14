# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 git-r3

DESCRIPTION="A format-agnostic tabular dataset library written in Python"
HOMEPAGE="http://python-tablib.org/ https://github.com/jazzband/tablib"

# SRC_URI="https://github.com/jazzband/tablib/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
EGIT_REPO_URI="https://github.com/jazzband/tablib.git"
EGIT_COMMIT="eeb8461e06d8e1d84a3b8ec7181d071591c65da5"

SLOT="0"
LICENSE="MIT"
KEYWORDS="amd64 ~x86"
IUSE="test"
RESTRICT="test"

RDEPEND="
	dev-python/odfpy[${PYTHON_USEDEP}]
	>=dev-python/openpyxl-2.6.0[${PYTHON_USEDEP}]
	dev-python/pandas[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/tabulate[${PYTHON_USEDEP}]
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
