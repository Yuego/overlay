# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy pypy3 )

inherit distutils-r1

MY_PV="${PV/_beta/.}b"
SRC_URI="https://github.com/sorl/sorl-thumbnail/archive/v${MY_PV}.tar.gz -> ${P}.tar.gz"
DESCRIPTION=""
HOMEPAGE="http://thumbnail.sorl.net/index.html"
LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ia64 ppc ppc64 x86"
IUSE="-memcached +redis +imagemagick"

RDEPEND=">=dev-python/django-1.0"
DEPEND="dev-python/setuptools
	memcached? ( dev-python/python-memcached )
	redis? ( dev-python/redis-py
			 dev-db/redis )
	imagemagick? ( media-gfx/imagemagick )"

S=$WORKDIR/$PN-$PV

src_install () {
	distutils-r1_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/tests
	dodoc LICENSE README.rst
}
