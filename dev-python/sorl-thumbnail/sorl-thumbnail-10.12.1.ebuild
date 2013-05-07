# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils

SRC_URI="https://github.com/sorl/sorl-thumbnail/archive/v${PV}.tar.gz -> ${P}.tar.gz"
DESCRIPTION=""
HOMEPAGE="http://thumbnail.sorl.net/index.html"
LICENSE="as-is"
SLOT="0"
KEYWORDS="amd64 ia64 ppc ppc64 x86"
IUSE="-memcached +redis +imagemagick"

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools
	memcached? ( dev-python/python-memcached )
	redis? ( dev-python/redis-py
			 dev-db/redis )
	imagemagick? ( media-gfx/imagemagick )"

PYTHON_MODNAME="sorl"

src_test() {
	python setup.py test || die "tests failed"
}

src_install () {
	distutils_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/tests
	dodoc LICENSE README.rst
}
