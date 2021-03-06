# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION=""
HOMEPAGE="http://thumbnail.sorl.net/index.html"

EGIT_REPO_URI="https://github.com/sorl/sorl-thumbnail.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE="-memcached +redis +imagemagick"

RDEPEND=">=dev-python/django-1.8[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	memcached? ( dev-python/python-memcached[${PYTHON_USEDEP}] )
	redis? ( dev-python/redis-py[${PYTHON_USEDEP}]
			 dev-db/redis )
	imagemagick? ( media-gfx/imagemagick )"

S=$WORKDIR/$PN-$PV

src_install () {
	distutils-r1_src_install
	rm -fr "${D}"usr/lib*/python*/site-packages/tests
	dodoc README.rst
}
