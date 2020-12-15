# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8,9} pypy3 )

inherit distutils-r1

DESCRIPTION="It is a fork of django-redis-cache.
And the reasons are: The author seems to have abandoned
the project and has significant bugs that have not been fixed."

HOMEPAGE="https://github.com/niwibe/django-redis"

SRC_URI="https://github.com/niwibe/django-redis/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="test"

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
	>=dev-python/redis-py-2.10.0[${PYTHON_USEDEP}]
	>=dev-python/msgpack-0.6.0[${PYTHON_USEDEP}]
	>=dev-python/lz4-0.15[${PYTHON_USEDEP}]
	dev-python/isort[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
