# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="It is a fork of django-redis-cache. And the reasons are: The author seems to have abandoned the project and has significant bugs that have not been fixed."
HOMEPAGE="https://github.com/niwibe/django-redis"

EGIT_REPO_URI="https://github.com/niwibe/django-redis.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE="test"

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
	>=dev-python/redis-py-2.10.0[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
