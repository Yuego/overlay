# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="A ctypes wrapper for UnRAR library, plus a rarfile module on top of it."
HOMEPAGE="https://github.com/matiasb/python-unrar http://python-unrar.readthedocs.org/en/latest/"

EGIT_REPO_URI="git://github.com/matiasb/python-unrar.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
