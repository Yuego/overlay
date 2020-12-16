# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1

LICENSE=""

SRC_URI=""
DESCRIPTION="TG WebClient Meta"
HOMEPAGE=""
SLOT="0"
KEYWORDS="amd64"
IUSE="telegram"

RDEPEND="
	>=dev-python/fake-useragent-0.1.11[${PYTHON_USEDEP}]
	dev-python/redis-py[${PYTHON_USEDEP}]
	dev-python/selenium[${PYTHON_USEDEP}]

	telegram? (
		>=dev-python/telethon-1.11.3[${PYTHON_USEDEP}]
		dev-python/py-leveldb[${PYTHON_USEDEP}]
	)
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
