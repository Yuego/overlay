# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6,2_7} pypy2_0 )

inherit distutils-r1 git-2

DESCRIPTION="analytics and metrics integration for Django"
HOMEPAGE="https://github.com/eldarion/metron"

EGIT_REPO_URI="git://github.com/eldarion/metron.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-python/django
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="metron"

src_test() {
	python setup.py test || die "tests failed"
}

