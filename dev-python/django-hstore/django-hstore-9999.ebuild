# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7,3_3} pypy2_0 )

inherit distutils-r1 git-r3

DESCRIPTION="PostgreSQL HStore module integration for django orm."
HOMEPAGE="https://github.com/djangonauts/django-hstore"

EGIT_REPO_URI="git://github.com/djangonauts/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.4
	>=dev-python/psycopg-2.5.2
"
DEPEND="dev-python/setuptools"


