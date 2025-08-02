# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 git-r3

DESCRIPTION="Lock context manager implemented via redis SETNX/BLPOP"
HOMEPAGE="https://github.com/ionelmc/python-redis-lock"

EGIT_REPO_URI="https://github.com/ionelmc/python-redis-lock.git"
EGIT_COMMIT="e5f596f8b5b3197d57eb997ea8f42847add0a8b1"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/redis-2.10.0[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
