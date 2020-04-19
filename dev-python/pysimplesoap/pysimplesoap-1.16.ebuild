# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="Python Simple SOAP Library"
HOMEPAGE="https://github.com/pysimplesoap/pysimplesoap"

SRC_URI="https://github.com/pysimplesoap/pysimplesoap/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_test() {
	python setup.py test || die "tests failed"
}
