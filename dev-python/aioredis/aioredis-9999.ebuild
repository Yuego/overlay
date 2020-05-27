# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="asyncio (PEP 3156) Redis support"
HOMEPAGE="https://github.com/aio-libs/aioredis"

EGIT_REPO_URI="https://github.com/aio-libs/aioredis.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/async-timeout-3.0.1[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
