# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1,3_2,3_3} pypy{1_9,2_0} )

inherit distutils-r1

DESCRIPTION="POS tagger / inflection engine for Russian language."
HOMEPAGE="http://pymorphy2.readthedocs.org/"

SRC_URI="https://github.com/kmike/pymorphy2/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="django test"

RDEPEND="
	dev-python/dawg
	django? (
		>=dev-python/django-1.3
		dev-python/django-pymorphy2
	)
	test? ( dev-python/tox )
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="pymorphy2"

src_test() {
	python setup.py test || die "tests failed"
}

