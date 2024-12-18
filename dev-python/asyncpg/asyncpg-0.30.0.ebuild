# Copyright 1999-2020 Gentoo Authors

# Distributed under the terms of the GNU General Public License v2

EAPI=8
DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1 git-r3

DESCRIPTION="A fast PostgreSQL Database Client Library for Python/asyncio."
HOMEPAGE="https://github.com/MagicStack/asyncpg"

EGIT_REPO_URI="https://github.com/MagicStack/asyncpg.git"
EGIT_COMMIT="bae282ec79157ca1e0018ea0753edefe14c9d50c"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="amd64 x86"

BDEPEND="dev-python/cython[${PYTHON_USEDEP}]"

DEPEND="test? (
	dev-python/pycodestyle[${PYTHON_USEDEP}]
	dev-python/flake8[${PYTHON_USEDEP}]
	dev-python/uvloop[${PYTHON_USEDEP}]
)"

distutils_enable_tests unittest
distutils_enable_sphinx docs dev-python/sphinxcontrib-asyncio dev-python/sphinx_rtd_theme


python_test() {
	cd "${T}" || die
	for opt in "" "1"; do
		einfo "  testing with USE_UVLOOP='${opt}'"
		USE_UVLOOP="${opt}" eunittest "${S}"/tests
	done
}
