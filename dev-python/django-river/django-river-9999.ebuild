# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit eutils distutils-r1 git-r3

DESCRIPTION="Django Workflow Library"
HOMEPAGE="https://github.com/javrasya/django-river"

EGIT_REPO_URI="git://github.com/javrasya/django-river.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/django-1.11[${PYTHON_USEDEP}]
	dev-python/django-mptt[${PYTHON_USEDEP}]
	dev-python/factory-boy[${PYTHON_USEDEP}]
	dev-python/mock[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
