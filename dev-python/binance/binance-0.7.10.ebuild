# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1

DESCRIPTION="Unofficial Python wrapper for the Binance exchange REST API v3"
HOMEPAGE="https://github.com/sammchardy/python-binance"

SRC_URI="https://github.com/sammchardy/python-binance/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	dev-python/aiohttp[${PYTHON_USEDEP}]
	dev-python/dateparser[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/ujson[${PYTHON_USEDEP}]
	=dev-python/websockets-9.1[${PYTHON_USEDEP}]

	dev-python/twisted[${PYTHON_USEDEP}]
	dev-python/autobahn[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/python-${P}"
