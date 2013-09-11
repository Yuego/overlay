# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_7,3_3} pypy{1_9,2_0} )

inherit distutils-r1

DESCRIPTION="Django FIAS"
HOMEPAGE="https://github.com/Yuego/django-fias"

SRC_URI="https://github.com/Yuego/django-fias/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND=">=dev-python/django-1.4
	dev-python/django-select2
	>=dev-python/suds-0.4
	dev-python/rarfile
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="fias"

src_test() {
	python setup.py test || die "tests failed"
}

