# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Library for accessing a PostgreSQL database from the asyncio framework"
HOMEPAGE="https://github.com/aio-libs/aiopg"

EGIT_REPO_URI="https://github.com/aio-libs/aiopg.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="+sa"

RDEPEND="
	sa? (
		>=dev-python/sqlalchemy-1.1[${PYTHON_USEDEP}]
	)

	>=dev-python/psycopg-2.7.0[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
