# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

EGIT_REPO_URI="https://github.com/django-mptt/django-mptt.git"
DESCRIPTION="Utilities for implementing a modified pre-order traversal tree in django."
HOMEPAGE="https://github.com/django-mptt/django-mptt"
LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=">=dev-python/django-1.8[${PYTHON_USEDEP}]"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
