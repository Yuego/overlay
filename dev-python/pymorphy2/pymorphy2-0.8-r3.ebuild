# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="POS tagger / inflection engine for Russian language."
HOMEPAGE="http://pymorphy2.readthedocs.org/ https://github.com/kmike/pymorphy2"

EGIT_REPO_URI="https://github.com/kmike/pymorphy2.git"
EGIT_COMMIT="ca1c13f6998ae2d835bdd5033c17197dcba84cf4"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="django test"

RDEPEND="
	>=dev-python/dawg-0.7.7[${PYTHON_USEDEP}]
	django? (
		>=dev-python/django-1.9[${PYTHON_USEDEP}]
		dev-python/django-pymorphy2[${PYTHON_USEDEP}]
	)
	>=dev-python/nltk-3[${PYTHON_USEDEP}]
	>=dev-python/opencorpora-0.4.4[${PYTHON_USEDEP}]
	>=dev-python/docopt-0.6[${PYTHON_USEDEP}]
	test? ( dev-python/tox[${PYTHON_USEDEP}] )
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
