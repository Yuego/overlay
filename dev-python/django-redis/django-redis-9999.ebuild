# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="It is a fork of django-redis-cache. And the reasons are: The author seems to have abandoned the project and has significant bugs that have not been fixed."
HOMEPAGE="https://github.com/niwibe/django-redis"

EGIT_REPO_URI="https://github.com/niwibe/django-redis.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE="test"

RDEPEND="
	>=dev-python/django-1.7
	>=dev-python/redis-py-2.10.0
"
DEPEND="dev-python/setuptools"

