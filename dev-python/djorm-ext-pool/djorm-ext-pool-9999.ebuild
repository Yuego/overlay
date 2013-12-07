# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="DB-API2 connection pool for Django (for postgresql, mysql and sqlite)"
HOMEPAGE="https://github.com/niwibe/djorm-ext-pool"

EGIT_REPO_URI="git://github.com/niwibe/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="mysql +postgres sqlite"

RDEPEND="
	>=dev-python/django-1.3
	mysql? ( >=dev-python/sqlalchemy-0.7.5[mysql] )
	postgres? ( >=dev-python/sqlalchemy-0.7.5[postgres] )
	sqlite? ( >=dev-python/sqlalchemy-0.7.5[sqlite] )
"
DEPEND="dev-python/setuptools"


