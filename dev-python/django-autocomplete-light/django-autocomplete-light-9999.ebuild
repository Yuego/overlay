# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="A fresh approach to autocomplete implementations, specially for Django."
HOMEPAGE="https://github.com/yourlabs/django-autocomplete-light"

EGIT_REPO_URI="git://github.com/yourlabs/django-autocomplete-light.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.7
	>=dev-python/six-1.4
"
DEPEND="dev-python/setuptools"

