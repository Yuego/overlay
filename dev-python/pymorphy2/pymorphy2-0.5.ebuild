# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
PYTHON_COMPAT=( python{2_6,2_7,3_2,3_3} pypy2_0 )

inherit distutils-r1

DESCRIPTION="POS tagger / inflection engine for Russian language."
HOMEPAGE="http://pymorphy2.readthedocs.org/"

SRC_URI="https://github.com/kmike/pymorphy2/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="django test"

RDEPEND="
	>=dev-python/dawg-0.7
	django? (
		>=dev-python/django-1.3
		dev-python/django-pymorphy2
	)
	>=dev-python/nltk-3
	test? ( dev-python/tox )
"
DEPEND="dev-python/setuptools"


