# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Django model fields for PostgreSQL"
HOMEPAGE="https://github.com/jpwatts/django-pgfields"

EGIT_REPO_URI="git://github.com/jpwatts/django-pgfields.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="
	dev-python/django
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="pgfields"

src_test() {
	python setup.py test || die "tests failed"
}

