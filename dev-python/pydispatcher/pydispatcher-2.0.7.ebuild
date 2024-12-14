# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=8
PYTHON_COMPAT=( python3_{8..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

MY_PN="PyDispatcher"

DESCRIPTION="Multi-producer-multi-consumer signal dispatching mechanism"
HOMEPAGE="http://pydispatcher.sourceforge.net/ https://pypi.python.org/pypi/PyDispatcher"

SRC_URI="https://github.com/mcfletch/pydispatcher/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="doc examples"
RESTRICT="test"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND=""

python_compile_all() {
	if use doc; then
		pushd docs/pydoc/ > /dev/null
		"${PYTHON}" builddocs.py || die "Generation of documentation failed"
		popd > /dev/null
	fi
}

python_test() {
	"${PYTHON}" -m unittest discover
}

python_install_all() {
	use doc && local HTML_DOCS=( docs/pydoc/. )
	use examples && local EXAMPLES=( examples/. )
	distutils-r1_python_install_all
}
