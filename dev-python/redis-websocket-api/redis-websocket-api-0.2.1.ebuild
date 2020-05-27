# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="Provides an extensible Redis-over-WebSocket API on top of websocket and aioredis"
HOMEPAGE="https://github.com/geops/redis-websocket-api"

SRC_URI="https://github.com/geops/redis-websocket-api/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/websockets-6.0[${PYTHON_USEDEP}]
	>=dev-python/aioredis-1.3.1[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
