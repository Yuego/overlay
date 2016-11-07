# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{3,4,5} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Distributed testing and loop-on-failing modes"
HOMEPAGE="https://pypi.python.org/pypi/pytest-xdist https://github.com/pytest-dev/pytest-xdist2"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.zip"

SLOT="0"
LICENSE="MIT"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/execnet-1.1[${PYTHON_USEDEP}]
	>=dev-python/pytest-2.4.2[${PYTHON_USEDEP}]
	>=dev-python/py-1.4.22[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	app-arch/unzip
"

python_test() {
	find -name __pycache__ -exec rm -r '{}' + || die
	py.test -vv -x || die
}