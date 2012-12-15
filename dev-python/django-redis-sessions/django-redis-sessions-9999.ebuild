# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit eutils distutils git-2

DESCRIPTION="Session backend for Django that stores sessions in a Redis database"
HOMEPAGE="https://github.com/martinrusev/django-redis-sessions"

EGIT_REPO_URI="https://github.com/martinrusev/django-redis-sessions.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.4
	dev-db/redis
	dev-python/redis-py"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="redis_sessions"

src_test() {
	python setup.py test || die "tests failed"
}

