# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_3} pypy{1_9,2_0} )

inherit distutils-r1

DESCRIPTION="Django Smart Selects"
HOMEPAGE="https://github.com/digi604/django-smart-selects"
SRC_URI="https://github.com/digi604/django-smart-selects/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.3"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="smart_selects"

src_test() {
	python setup.py test || die "tests failed"
}

src_install () {
	distutils_src_install
	dodoc AUTHORS LICENSE README.md
}
