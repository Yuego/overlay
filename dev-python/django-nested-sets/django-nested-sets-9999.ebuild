# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy{1_9,2_0} )


inherit distutils git-2

EGIT_REPO_URI="https://github.com/django-mptt/django-mptt.git"
DESCRIPTION="Utilities for implementing a modified pre-order traversal tree in django."
HOMEPAGE="https://github.com/django-mptt/django-mptt"
LICENSE="as-is"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.4.2"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="mptt"

src_test() {
	python setup.py test || die "tests failed"
}

