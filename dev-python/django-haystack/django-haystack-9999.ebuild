# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_6,2_7,3_3} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Modular search for Django."
HOMEPAGE="http://haystacksearch.org/"

EGIT_REPO_URI="https://github.com/toastdriven/django-haystack.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.5
"
DEPEND="dev-python/setuptools"


