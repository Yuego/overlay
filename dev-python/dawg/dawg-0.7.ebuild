# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy2_0 )

inherit distutils-r1

DESCRIPTION="DAWG-based dictionary-like read-only objects for Python. Based on 'dawgdic' C++ library."
HOMEPAGE="https://github.com/kmike/DAWG"

SRC_URI="https://github.com/kmike/DAWG/archive/${PV}.tar.gz -> dawg-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="test"

RDEPEND=""
DEPEND="dev-python/setuptools"

S="${WORKDIR}/DAWG-${PV}"

PYTHON_MODNAME="dawg_python"

src_test() {
	python setup.py test || die "tests failed"
}

