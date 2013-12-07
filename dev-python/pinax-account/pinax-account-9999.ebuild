# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="User accounts for Django"
HOMEPAGE="https://github.com/pinax/django-user-accounts"

EGIT_REPO_URI="git://github.com/pinax/django-user-accounts.git"

LICENSE="as-is"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="
	=dev-python/pytz-2013b
	=dev-python/django-appconf-0.6
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="account"

src_test() {
	python setup.py test || die "tests failed"
}

