# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_11 )

inherit distutils-r1

DESCRIPTION="NativeTgCalls represents the next evolution in Telegram calling"
HOMEPAGE="https://github.com/pytgcalls/ntgcalls"

SRC_URI="
	https://files.pythonhosted.org/packages/d3/bf/8c0c9b878faeceb46d980638fec85d703fedb77f89f545fb7311c27a77f3/ntgcalls-1.2.3-cp311-cp311-manylinux_2_17_x86_64.manylinux2014_x86_64.whl
"

LICENSE="MIT"
SLOT="3.11"
KEYWORDS="amd64"
IUSE=""
DISTUTILS_EXT=1

RDEPEND="

"

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"

S="${WORKDIR}/../distdir"

src_unpack(){
	echo
	# wheel unpack ../distdir/${A}
}

src_prepare(){
	default

	#wheel pack "$S"
}

src_configure(){
	echo
}

src_compile(){
	echo
}

distutils-r1_python_install(){
	distutils_wheel_install "$D" "${S}/${A}"
}

