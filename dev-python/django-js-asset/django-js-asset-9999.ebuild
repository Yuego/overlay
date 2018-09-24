# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

EGIT_REPO_URI="https://github.com/matthiask/django-js-asset.git"
DESCRIPTION="script tag with additional attributes for django.forms.Media"
HOMEPAGE="https://github.com/matthiask/django-js-asset"
LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.8[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
