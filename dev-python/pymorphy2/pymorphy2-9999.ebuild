# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="POS tagger / inflection engine for Russian language."
HOMEPAGE="http://pymorphy2.readthedocs.org/ https://github.com/kmike/pymorphy2"

EGIT_REPO_URI="git://github.com/kmike/pymorphy2.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="django test"

RDEPEND="
	dev-python/dawg
	django? ( >=dev-python/django-1.7 )
	test? ( dev-python/tox )
"
DEPEND="dev-python/setuptools"

