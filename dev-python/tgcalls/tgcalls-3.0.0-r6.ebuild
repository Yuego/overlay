# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_11 pypy3 )

inherit distutils-r1

DESCRIPTION="Telegram WebRTC (VoIP)"
HOMEPAGE="https://github.com/MarshalX/tgcalls"

SRC_URI="https://files.pythonhosted.org/packages/6e/11/687ef9110129ab3230ef03137a21d59b52463a29006e01eab3ed1ac62554/tgcalls-3.0.0.dev6-cp311-cp311-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND=""

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
