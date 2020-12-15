# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=7
PYTHON_COMPAT=( python3_{6,7} )

inherit distutils-r1 git-r3

LICENSE="MIT"

EGIT_REPO_URI="git@github.com-tgtb:Yuego/tgtb.git"

DESCRIPTION="TGTB Meta"
HOMEPAGE=""
SLOT="0"
KEYWORDS="amd64"
IUSE="windscribe nordvpn"

RDEPEND="
	dev-python/py-leveldb[${PYTHON_USEDEP}]
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/aiopg[${PYTHON_USEDEP}]
	<dev-python/sqlalchemy-1.4[${PYTHON_USEDEP}]
	dev-python/pathlib2[${PYTHON_USEDEP}]

	dev-python/peewee[${PYTHON_USEDEP}]
	>=dev-python/pillow-3.4.2[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.8.1[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]

	dev-db/redis
	dev-python/redis-py[${PYTHON_USEDEP}]

	>=dev-python/requests-2.22[${PYTHON_USEDEP}]

	dev-python/selenium[${PYTHON_USEDEP}]

	>=dev-python/telethon-1.11.3[${PYTHON_USEDEP}]
	>=dev-python/transitions-0.8.1[${PYTHON_USEDEP}]
	>=dev-python/websockets-8.1[${PYTHON_USEDEP}]

	>=dev-python/transitions-0.8.4[${PYTHON_USEDEP}]
	dev-python/mimesis[${PYTHON_USEDEP}]

	windscribe? ( net-vpn/windscribe-cli ) 
	nordvpn? ( net-vpn/nordvpn )
"

DEPEND="${RDEPEND}"

src_install(){
	distutils-r1_src_install

	doinitd "${FILESDIR}/${PN}-reposter"
	doconfd "${FILESDIR}/${PN}-reposter.example"
}