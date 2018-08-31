# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python3_{4,5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="A generic system for filtering Django QuerySets based on user selections"
HOMEPAGE="https://github.com/alex/django-filter"

EGIT_REPO_URI="git://github.com/alex/django-filter.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
