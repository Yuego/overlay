# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1

DESCRIPTION="PostgreSQL HStore module integration for django orm."
HOMEPAGE="https://github.com/djangonauts/django-hstore"

SRC_URI="https://github.com/djangonauts/django-hstore/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="test"

RDEPEND="
	>=dev-python/django-1.7
	>=dev-python/psycopg-2.5.2
	test? ( =dev-python/django-discover-runner-1.0 )
"
DEPEND="dev-python/setuptools"


