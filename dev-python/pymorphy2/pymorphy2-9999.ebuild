# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{4,5,6} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="POS tagger / inflection engine for Russian language."
HOMEPAGE="http://pymorphy2.readthedocs.org/ https://github.com/kmike/pymorphy2"

EGIT_REPO_URI="git://github.com/kmike/pymorphy2.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
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
