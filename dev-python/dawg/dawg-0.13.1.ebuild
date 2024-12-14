# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{8..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools
DISTUTILS_EXT=1

inherit distutils-r1 git-r3

DESCRIPTION="DAWG-based dictionary-like read-only objects for Python."
HOMEPAGE="https://github.com/kmike/DAWG"

EGIT_REPO_URI="https://github.com/pymorphy2-fork/DAWG.git"
EGIT_COMMIT="f58c2aa64c5d2d0c902134fe8e426c958653c155"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~x86"
IUSE="test"
RESTRICT="test"

RDEPEND=""
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"
BDEPEND="
	dev-python/cython[${PYTHON_USEDEP}]
"
