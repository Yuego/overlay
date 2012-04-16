# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils 

DESCRIPTION="Yandex.Maps API python wrapper with optional django integration."
HOMEPAGE="http://pypi.python.org/pypi/yandex-maps"
SRC_URI="http://pypi.python.org/packages/source/y/yandex-maps/yandex-maps-0.5.1.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="yandex_maps"

src_test() {
	python setup.py test || die "tests failed"
}

src_install () {
	distutils_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/yandex_maps_tests
	dodoc README.rst
}
