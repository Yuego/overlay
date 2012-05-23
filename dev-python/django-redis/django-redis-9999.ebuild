# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils git-2

DESCRIPTION="It is a fork of django-redis-cache. And the reasons are: The author seems to have abandoned the project and has significant bugs that have not been fixed."
HOMEPAGE="https://github.com/niwibe/django-redis"

EGIT_REPO_URI="https://github.com/niwibe/django-redis.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3
	dev-db/redis
	dev-python/redis-py"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="django_geoip"

src_test() {
	python setup.py test || die "tests failed"
}

