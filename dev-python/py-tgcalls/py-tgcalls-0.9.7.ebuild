# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_11 pypy3 )

inherit distutils-r1

DESCRIPTION="A simple and elegant client that"
HOMEPAGE="https://github.com/pytgcalls/pytgcalls"

SRC_URI="https://files.pythonhosted.org/packages/13/2d/b6c556e815f185075eeb747b1f89e8c6198b442010eeecc7e99ccc9d17d3/py_tgcalls-0.9.7-cp311-cp311-manylinux2014_x86_64.whl"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	!dev-python/pytgcalls[${PYTHON_USEDEP}]

	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/psutil[${PYTHON_USEDEP}]
	dev-python/screeninfo[${PYTHON_USEDEP}]

	net-libs/nodejs
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/../distdir"

src_unpack(){
	#pwd
	#echo ../distdir/${A}
	echo 'UNPACK'

	#wheel unpack ../distdir/${A}
}

src_prepare(){
	echo 'PREP'
	default
}

src_compile(){
	echo 'COMP'
}

src_install(){
	python_foreach_impl distutils_wheel_install "$D" ../distdir/${A}
}
