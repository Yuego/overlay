# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="4"

inherit distutils git-2

DESCRIPTION="A slick app that supports automatic or manual queryset caching and automatic granular event-driven invalidation."
HOMEPAGE="https://github.com/Suor/django-cacheops"

EGIT_REPO_URI="https://github.com/Yuego/django-cacheops.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.4
	>=dev-db/redis-2.4
	>=dev-python/simplejson-2.1.5
	>=dev-python/redis-py-2.4.12"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="cacheops"

src_test() {
	python setup.py test || die "tests failed"
}

