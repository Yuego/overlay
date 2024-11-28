# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..13} pypy3 )
# DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 git-r3

DESCRIPTION=""
HOMEPAGE=""

EGIT_REPO_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""
RESTRICT="test"

RDEPEND="
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
