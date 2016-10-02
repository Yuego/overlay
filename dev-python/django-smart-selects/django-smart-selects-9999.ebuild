# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

EGIT_REPO_URI="https://github.com/digi604/django-smart-selects.git"
DESCRIPTION="Django Smart Selects"
HOMEPAGE="https://github.com/digi604/django-smart-selects"
LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.7"
DEPEND="dev-python/setuptools"

DOCS="AUTHORS LICENSE README.md"

src_test() {
	python setup.py test || die "tests failed"
}

