# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools


inherit distutils-r1 flag-o-matic

DESCRIPTION="Python multiprocessing fork"
HOMEPAGE="https://pypi.org/project/billiard/ https://github.com/celery/billiard"
SRC_URI="https://github.com/celery/billiard/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="doc test"
RESTRICT="!test? ( test )"

RDEPEND=""
DEPEND="
	>=dev-python/setuptools-20.6.7[${PYTHON_USEDEP}]
	test? (
		!!<dev-python/celery-4.3.0
		>=dev-python/case-1.3.1[${PYTHON_USEDEP}]
		>=dev-python/pytest-3.0[${PYTHON_USEDEP}]
		dev-python/psutil[${PYTHON_USEDEP}]
	)"
# The usual req'd for tests
DISTUTILS_IN_SOURCE_BUILD=1

python_compile_all() {
	use doc && esetup.py build_sphinx --builder="html" --source-dir=Doc/
}

python_test() {
	esetup.py test
}

python_install_all() {
	use doc && local HTML_DOCS=( build/sphinx/html/. )
	distutils-r1_python_install_all
}
