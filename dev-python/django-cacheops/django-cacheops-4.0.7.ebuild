# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1

DESCRIPTION="App for queryset caching and automatic granular event-driven invalidation."
HOMEPAGE="https://github.com/Suor/django-cacheops"

SRC_URI="https://github.com/Suor/django-cacheops/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.8[${PYTHON_USEDEP}]
	dev-db/redis
	>=dev-python/redis-py-2.9.1[${PYTHON_USEDEP}]
	>=dev-python/funcy-1.8[${PYTHON_USEDEP}]
	<dev-python/funcy-2.0
	>=dev-python/six-1.4.0[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

