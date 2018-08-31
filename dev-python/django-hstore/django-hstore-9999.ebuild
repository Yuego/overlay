# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="PostgreSQL HStore module integration for django orm."
HOMEPAGE="https://github.com/djangonauts/django-hstore"

EGIT_REPO_URI="git://github.com/djangonauts/${PN}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.4[${PYTHON_USEDEP}]
	>=dev-python/psycopg-2.5.2[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
