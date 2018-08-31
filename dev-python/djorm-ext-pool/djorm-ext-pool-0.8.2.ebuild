# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="DB-API2 connection pool for Django (for postgresql, mysql and sqlite)"
HOMEPAGE="https://github.com/niwibe/djorm-ext-pool"

SRC_URI="https://github.com/niwibe/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="mysql +postgres sqlite"

RDEPEND="
	>=dev-python/django-1.3[${PYTHON_USEDEP}]
	>=dev-python/sqlalchemy-0.7.5[${PYTHON_USEDEP}]
	mysql? ( dev-python/mysql-python[${PYTHON_USEDEP}] )
	postgres? ( dev-python/psycopg:2[${PYTHON_USEDEP}] )
	sqlite? ( dev-db/sqlite[${PYTHON_USEDEP}] )
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
