# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_11 )

inherit distutils-r1

DESCRIPTION="NativeTgCalls represents the next evolution in Telegram calling"
HOMEPAGE="https://github.com/pytgcalls/ntgcalls"

SRC_URI="
	https://files.pythonhosted.org/packages/41/6e/8bc235d2aa134bdb706222304d05d0a227229eb8a75e77c999d13ac6d07e/ntgcalls-1.2.1-cp311-cp311-manylinux_2_17_x86_64.manylinux2014_x86_64.whl
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

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

src_install(){
	python_foreach_impl distutils_wheel_install "$D" "${S}/${A}"
}

