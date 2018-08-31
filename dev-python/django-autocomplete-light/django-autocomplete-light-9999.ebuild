# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="A fresh approach to autocomplete implementations, specially for Django."
HOMEPAGE="https://github.com/yourlabs/django-autocomplete-light"

EGIT_REPO_URI="git://github.com/yourlabs/django-autocomplete-light.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

S="${WORKDIR}/${PN}-${MY_PV}/"

RDEPEND="
	>=dev-python/django-1.9[${PYTHON_USEDEP}]
	>=dev-python/six-1.4[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
