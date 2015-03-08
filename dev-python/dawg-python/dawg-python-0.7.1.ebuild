# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_2,3_3,3_4} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Pure-python reader for DAWGs created by dawgdic C++ library or DAWG Python extension. "
HOMEPAGE="https://github.com/kmike/DAWG-Python"

SRC_URI="https://github.com/kmike/DAWG-Python/archive/${PV}.tar.gz -> dawg-python-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="test"

RDEPEND=""
DEPEND="dev-python/setuptools"

S="${WORKDIR}/DAWG-Python-${PV}"

PYTHON_MODNAME="dawg_python"

src_test() {
	python setup.py test || die "tests failed"
}

