# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="DB-API2 connection pool for Django (for postgresql, mysql and sqlite)"
HOMEPAGE="https://github.com/niwibe/djorm-ext-pool"

EGIT_REPO_URI="git://github.com/niwibe/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="mysql +postgres sqlite"

RDEPEND="
	>=dev-python/django-1.3
	>=dev-python/sqlalchemy-0.7.5
	mysql? ( dev-python/mysql-python )
	postgres? ( dev-python/psycopg:2 )
	sqlite? ( dev-db/sqlite )
"

DEPEND="dev-python/setuptools"
