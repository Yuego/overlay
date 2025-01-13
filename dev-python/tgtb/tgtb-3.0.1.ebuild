# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: Exp $

EAPI=8
PYTHON_COMPAT=( python3_{10..13} )

inherit distutils-r1 git-r3

LICENSE="MIT"

EGIT_REPO_URI="git@github.com-tgtb:Yuego/tgtb.git"

DESCRIPTION="TGTB Meta"
HOMEPAGE=""
SLOT="0"
KEYWORDS="amd64"
IUSE="windscribe nordvpn"

RDEPEND="

	dev-python/django[${PYTHON_USEDEP}]
	dev-python/django-rest-framework[${PYTHON_USEDEP}]

	dev-python/python-daemon[${PYTHON_USEDEP}]
	>=dev-python/plyvel-1.3.0[${PYTHON_USEDEP}]
	dev-python/python-socks[${PYTHON_USEDEP}]
	dev-python/pyzbar[${PYTHON_USEDEP}]
	dev-python/aiohttp[${PYTHON_USEDEP}]
	>=dev-python/asyncpg-0.28[${PYTHON_USEDEP}]
	dev-python/apscheduler[${PYTHON_USEDEP}]
	<dev-python/apscheduler-3.11.0[${PYTHON_USEDEP}]

	dev-python/greenlet[${PYTHON_USEDEP}]
	>=dev-python/sqlalchemy-2.0[${PYTHON_USEDEP}]

	>=dev-python/pillow-3.4.2[${PYTHON_USEDEP}]
	>=dev-python/python-dateutil-2.8.1[${PYTHON_USEDEP}]
	dev-python/pytz[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]

	dev-db/redis
	>=dev-python/redis-4.2.1[${PYTHON_USEDEP}]
	dev-python/hiredis[${PYTHON_USEDEP}]

	>=dev-python/requests-2.22[${PYTHON_USEDEP}]

	dev-python/selenium[${PYTHON_USEDEP}]
	dev-python/fake-useragent[${PYTHON_USEDEP}]

	>=dev-python/telethon-1.21[${PYTHON_USEDEP}]
	>=dev-python/py-tgcalls-2.0.1[${PYTHON_USEDEP}]
	>=dev-python/websockets-8.1[${PYTHON_USEDEP}]

	>=dev-python/transitions-0.8.4[${PYTHON_USEDEP}]
	dev-python/mimesis[${PYTHON_USEDEP}]

	windscribe? ( net-vpn/windscribe-cli ) 
	nordvpn? ( net-vpn/nordvpn )

	>=dev-python/property-mapper-0.4[${PYTHON_USEDEP}]
"

DEPEND="${RDEPEND}"

src_install(){
	distutils-r1_src_install

	doinitd "${FILESDIR}/telegrom"
	doinitd "${FILESDIR}/${PN}-reposter"
	doconfd "${FILESDIR}/${PN}-reposter.example"

	insinto "/etc/telegrom/"
	doins "${FILESDIR}/telegrom.yaml"
}
