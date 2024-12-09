# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{8..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 pypi

#MY_PV="${PV/_beta/.}b"
#SRC_URI="https://github.com/sorl/sorl-thumbnail/archive/${PV}.tar.gz -> ${P}.tar.gz"

DESCRIPTION=""
HOMEPAGE="https://github.com/jazzband/sorl-thumbnail"
LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ia64 ppc ppc64 x86"
IUSE="-memcached +redis +imagemagick"
RESTRICT="test"

RDEPEND="
	>=dev-python/django-3.2[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools-scm[${PYTHON_USEDEP}]
	memcached? ( dev-python/python-memcached[${PYTHON_USEDEP}] )
	redis? (
		dev-python/redis[${PYTHON_USEDEP}]
		dev-db/redis
	)
	imagemagick? ( media-gfx/imagemagick )"

# S=$WORKDIR/$PN-$PV

#src_prepare() {
#	sed -i "s#use_scm_version=True,##g" setup.py
#	sed -i "s#'setuptools_scm'##g" setup.py
#	distutils-r1_src_prepare
#}

#src_install () {
#	distutils-r1_src_install
#	rm -fr "${D}"usr/lib*/python*/site-packages/tests
#	dodoc README.rst
#}
