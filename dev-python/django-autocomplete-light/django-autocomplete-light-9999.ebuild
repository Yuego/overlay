# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_5,2_6,2_7} pypy2_0 )

inherit distutils-r1 git-r3

DESCRIPTION="A fresh approach to autocomplete implementations, specially for Django."
HOMEPAGE="https://github.com/yourlabs/django-autocomplete-light"

EGIT_REPO_URI="git://github.com/yourlabs/django-autocomplete-light.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.3
"
DEPEND="dev-python/setuptools"

PYTHON_MODNAME="autocomplete_light"

