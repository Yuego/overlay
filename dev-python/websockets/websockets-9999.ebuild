# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7,8} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Library for building WebSocket servers and clients in Python"
HOMEPAGE="https://github.com/aaugustin/websockets"

EGIT_REPO_URI="https://github.com/aaugustin/websockets.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
