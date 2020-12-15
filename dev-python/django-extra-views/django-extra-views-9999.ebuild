# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8,9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Django's class-based generic views are awesome, let's have more of them."
HOMEPAGE="https://github.com/AndrewIngram/django-extra-views"

EGIT_REPO_URI="git://github.com/AndrewIngram/django-extra-views.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-2.1[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
