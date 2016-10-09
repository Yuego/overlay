# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="App for queryset caching and automatic granular event-driven invalidation."
HOMEPAGE="https://github.com/Suor/django-cacheops"

EGIT_REPO_URI="git://github.com/Suor/django-cacheops.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.7[${PYTHON_USEDEP}]
	dev-db/redis
	>=dev-python/redis-py-2.9.1[${PYTHON_USEDEP}]
	>=dev-python/funcy-1.2[${PYTHON_USEDEP}]
	<dev-python/funcy-2.0
	>=dev-python/six-1.4.0[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
