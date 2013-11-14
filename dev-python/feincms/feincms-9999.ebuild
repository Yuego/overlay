# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7,3_3} pypy2_0 )

inherit distutils-r1 git-2

EGIT_REPO_URI="https://github.com/matthiask/feincms.git"
DESCRIPTION="UNOFFICIAL and often experimental version of FeinCMS."
HOMEPAGE="https://github.com/matthiask/feincms"
LICENSE="as-is"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.3
	dev-python/django-mptt"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="feincms"

src_test() {
	python setup.py test || die "tests failed"
}

