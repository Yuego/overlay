# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Aims to keep track of currently active users on Django-powered Web sites"
HOMEPAGE="https://github.com/arteria/django-activeusers"

EGIT_REPO_URI="https://github.com/arteria/django-activeusers.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
