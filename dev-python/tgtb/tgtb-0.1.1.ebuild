# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7,8} pypy )

inherit distutils-r1

LICENSE=""

SRC_URI=""
DESCRIPTION="TGTB Meta"
HOMEPAGE=""
SLOT="0"
KEYWORDS="amd64"
IUSE="+windscribe nordvpn"

RDEPEND="
	>=dev-python/pillow-3.4.2[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.8.1[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	>=dev-python/requests-2.22[${PYTHON_USEDEP}]
	dev-python/selenium[${PYTHON_USEDEP}]
	>=dev-python/telethon-1.11.3[${PYTHON_USEDEP}]
	>=dev-python/transitions-0.8.1[${PYTHON_USEDEP}]
	>=dev-python/websockets-8.1[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/peewee[${PYTHON_USEDEP}]

	windscribe? ( net-vpn/windscribe-cli ) 
	nordvpn? ( net-vpn/nordvpn )
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
	doinitd "${FILESDIR}/${PN}-reposter"
	doconfd "${FILESDIR}/${PN}-reposter.example"
}
