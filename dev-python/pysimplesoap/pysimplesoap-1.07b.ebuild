# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python2_7 pypy2_0 )

inherit distutils-r1

DESCRIPTION="Python Simple SOAP Library"
HOMEPAGE="https://github.com/pysimplesoap/pysimplesoap"

SRC_URI="https://github.com/pysimplesoap/pysimplesoap/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="compat"

RDEPEND="
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="pysimplesoap"

src_test() {
	python setup.py test || die "tests failed"
}

