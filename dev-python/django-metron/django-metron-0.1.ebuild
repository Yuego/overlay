# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy{1_9,2_0} )

inherit distutils-r1

DESCRIPTION="analytics and metrics integration for Django"
HOMEPAGE="https://github.com/eldarion/metron"

SRC_URI="https://github.com/eldarion/metron/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	dev-python/django
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="metron"
S="$WORKDIR/metron-$PV"

src_test() {
	python setup.py test || die "tests failed"
}

