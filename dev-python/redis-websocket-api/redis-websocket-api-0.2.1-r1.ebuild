# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Provides an extensible Redis-over-WebSocket API on top of websocket and aioredis"
HOMEPAGE="https://github.com/geops/redis-websocket-api"

EGIT_REPO_URI="https://github.com/geops/redis-websocket-api.git"
EGIT_COMMIT="94d265cb9020767527cfe364355602c93a9e066d"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/websockets-6.0[${PYTHON_USEDEP}]
	>=dev-python/aioredis-1.3.1[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
