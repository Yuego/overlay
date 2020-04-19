# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="PostgreSQL HStore module integration for django orm."
HOMEPAGE="https://github.com/djangonauts/django-hstore"

SRC_URI="https://github.com/djangonauts/django-hstore/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="test"

RDEPEND="
	>=dev-python/django-1.7[${PYTHON_USEDEP}]
	>=dev-python/psycopg-2.5.2[${PYTHON_USEDEP}]
	test? ( =dev-python/django-discover-runner-1.0[${PYTHON_USEDEP}] )
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
