# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8} pypy )

inherit distutils-r1

DESCRIPTION="Library for accessing a PostgreSQL database from the asyncio framework"
HOMEPAGE="https://github.com/aio-libs/aiopg"

SRC_URI="https://github.com/aio-libs/aiopg/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="+sa"

RDEPEND="
	sa? (
		dev-python/sqlalchemy[${PYTHON_USEDEP}]
	)
	dev-python/psycopg[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
