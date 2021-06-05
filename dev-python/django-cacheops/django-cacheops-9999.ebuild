# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3)

inherit distutils-r1 git-r3

DESCRIPTION="App for queryset caching and automatic granular event-driven invalidation."
HOMEPAGE="https://github.com/Suor/django-cacheops"

EGIT_REPO_URI="git://github.com/Suor/django-cacheops.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-2.1[${PYTHON_USEDEP}]
	>=dev-python/redis-py-3.0.0[${PYTHON_USEDEP}]
	>=dev-python/funcy-1.8[${PYTHON_USEDEP}]
	<dev-python/funcy-2.0

"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
