# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1

DESCRIPTION="Library for accessing a PostgreSQL database from the asyncio framework"
HOMEPAGE="https://github.com/aio-libs/aiopg"

MY_PV="${PV//_beta/b}"
SRC_URI="https://github.com/aio-libs/aiopg/archive/v${MY_PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="+sa"

RDEPEND="
	sa? (
		>=dev-python/sqlalchemy-1.3[${PYTHON_USEDEP}]
		<dev-python/sqlalchemy-1.5
	)

	>=dev-python/psycopg-2.8.4[${PYTHON_USEDEP}]
	>=dev-python/async_timeout-3.0[${PYTHON_USEDEP}]
	<dev-python/async_timeout-4.0
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/${PN}-${MY_PV}"
