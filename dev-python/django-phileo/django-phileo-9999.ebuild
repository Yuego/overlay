# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="a liking app for Django"
HOMEPAGE="https://github.com/eldarion/phileo"

EGIT_REPO_URI="git://github.com/eldarion/phileo.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-python/django
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="phileo"

src_test() {
	python setup.py test || die "tests failed"
}

