# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Yandex.Maps API python wrapper with optional django integration."
HOMEPAGE="http://pypi.python.org/pypi/yandex-maps"
SRC_URI="http://pypi.python.org/packages/source/y/yandex-maps/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools"

src_install () {
	distutils_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/yandex_maps_tests
	dodoc README.rst
}
