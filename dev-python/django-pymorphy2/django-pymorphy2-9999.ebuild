# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Django and PyMorphy2 integration"
HOMEPAGE="https://github.com/Yuego/django-pymorphy2"

EGIT_REPO_URI="https://github.com/Yuego/django-pymorphy2.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="+compat"

RDEPEND="
	dev-python/pymorphy2[${PYTHON_USEDEP}]
	dev-python/pymorphy2-dicts[${PYTHON_USEDEP}]
	>=dev-python/django-1.9[${PYTHON_USEDEP}]
	compat? ( >=dev-python/russian-tagsets-0.3.1[${PYTHON_USEDEP}] )
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
