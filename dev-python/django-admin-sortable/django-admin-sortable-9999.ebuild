# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="Generic drag-and-drop ordering for objects and tabular inlines in Django Admin"
HOMEPAGE="https://github.com/iambrandontaylor/django-admin-sortable"

EGIT_REPO_URI="https://github.com/iambrandontaylor/django-admin-sortable"

LICENSE="APSL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="adminsortable"

src_test() {
	python setup.py test || die "tests failed"
}

