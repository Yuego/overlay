# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Generic drag-and-drop ordering for objects and tabular inlines in Django Admin"
HOMEPAGE="https://github.com/iambrandontaylor/django-admin-sortable"

EGIT_REPO_URI="https://github.com/iambrandontaylor/django-admin-sortable"

LICENSE="APSL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-python/django-1.5
"
DEPEND="dev-python/setuptools"

src_test() {
	python setup.py test || die "tests failed"
}

