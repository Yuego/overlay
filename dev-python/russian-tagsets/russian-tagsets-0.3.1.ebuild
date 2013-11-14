# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Russian morphological tagset converters library."
HOMEPAGE="https://pypi.python.org/pypi/russian-tagsets/"

SRC_URI="https://github.com/kmike/russian-tagsets/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="test"

RDEPEND="
	test? ( dev-python/tox )
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="russian_tagsets"

src_test() {
	python setup.py test || die "tests failed"
}

