# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=no

inherit distutils-r1

LICENSE=""

SRC_URI=""
DESCRIPTION="Registrator Meta"
HOMEPAGE=""
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

RDEPEND="
	=dev-python/registrator_dev-${PV}[${PYTHON_USEDEP}]
"

DEPEND=""

S="${WORKDIR}"

src_prepare(){
	eapply_user
}

src_compile(){
	echo ''
}

src_install(){
	echo ''
}
