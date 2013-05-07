# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy{1_9,2_0} )

inherit distutils-r1

DESCRIPTION="Django and PyMorphy2 integration"
HOMEPAGE="https://github.com/Yuego/django-pymorphy2"

SRC_URI="https://github.com/Yuego/django-pymorphy2/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	dev-python/pymorphy2
	dev-python/pymorphy2-dicts
	>=dev-python/django-1.3
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="django_pymorphy2"

src_test() {
	python setup.py test || die "tests failed"
}

