# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1

MY_PV=`echo $PV | sed -r 's/_beta([0-9]+)/.\1b/g'`
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

S=$WORKDIR/$PN-$MY_PV

src_install () {
	distutils-r1_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/tests
	dodoc LICENSE README.rst
}
