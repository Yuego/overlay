# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="A slick app that supports automatic or manual queryset caching and automatic granular event-driven invalidation."
HOMEPAGE="https://github.com/Suor/django-cacheops"

EGIT_REPO_URI="git://github.com/Suor/django-cacheops.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.4
	>=dev-db/redis-2.4.12
	>=dev-python/simplejson-2.2.0
	>=dev-python/redis-py-2.4.12
	>=dev-python/six-1.4.0
"
DEPEND="dev-python/setuptools"

