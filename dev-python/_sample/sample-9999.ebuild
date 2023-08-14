# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..12} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION=""
HOMEPAGE=""

EGIT_REPO_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
