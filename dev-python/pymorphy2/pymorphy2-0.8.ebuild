# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="POS tagger / inflection engine for Russian language."
HOMEPAGE="http://pymorphy2.readthedocs.org/ https://github.com/kmike/pymorphy2"

SRC_URI="https://github.com/kmike/pymorphy2/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="django test"

RDEPEND="
	>=dev-python/dawg-0.7.7
	django? (
		>=dev-python/django-1.7
		dev-python/django-pymorphy2
	)
	>=dev-python/nltk-3
	>=dev-python/opencorpora-0.4.4
	>=dev-python/docopt-0.6
	test? ( dev-python/tox )
"
DEPEND="dev-python/setuptools"
