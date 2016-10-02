# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7,3_3,3_4} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Django and PyMorphy2 integration"
HOMEPAGE="https://github.com/Yuego/django-pymorphy2"

EGIT_REPO_URI="https://github.com/Yuego/django-pymorphy2.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="+compat"

RDEPEND="
	dev-python/pymorphy2
	dev-python/pymorphy2-dicts
	>=dev-python/django-1.3
	compat? ( >=dev-python/russian-tagsets-0.3.1 )
"
DEPEND="dev-python/setuptools"

