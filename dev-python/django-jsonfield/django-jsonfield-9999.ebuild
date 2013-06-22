# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_1,3_2,3_3} pypy{1_9,2_0} )

inherit distutils-r1 git-2

DESCRIPTION="Reusable JSONField() for Django"
HOMEPAGE="https://github.com/bradjasper/django-jsonfield"

EGIT_REPO_URI="git://github.com/bradjasper/django-jsonfield.git"


LICENSE="as-is"
SLOT="0"
KEYWORDS="~amd64 ~ia64 ~ppc ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-python/django-1.4"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="jsonfield"

src_test() {
	python setup.py test || die "tests failed"
}

