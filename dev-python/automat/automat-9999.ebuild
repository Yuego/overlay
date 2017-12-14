# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Self-service finite-state machines for the programmer on the go"
HOMEPAGE="https://github.com/glyph/automat"

EGIT_REPO_URI="git://github.com/glyph/automat.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/attrs[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
	dev-python/m2r[${PYTHON_USEDEP}]
"
