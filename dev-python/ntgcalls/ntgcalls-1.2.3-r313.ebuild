# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_13 )

inherit distutils-r1

DESCRIPTION="NativeTgCalls represents the next evolution in Telegram calling"
HOMEPAGE="https://github.com/pytgcalls/ntgcalls"

SRC_URI="
	https://files.pythonhosted.org/packages/47/ce/30a19517f297bb11b5107bdbfd9fdc4fa5054ea317700d293d3cb7a692e5/ntgcalls-1.2.3-cp313-cp313-manylinux_2_17_x86_64.manylinux2014_x86_64.whl
"

LICENSE="MIT"
SLOT="3.13"
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

