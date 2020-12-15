# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8,9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Class based template tags for django"
HOMEPAGE="https://github.com/ojii/django-classy-tags"

EGIT_REPO_URI="https://github.com/ojii/django-classy-tags.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
