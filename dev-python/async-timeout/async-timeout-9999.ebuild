# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="asyncio-compatible timeout class"
HOMEPAGE="https://github.com/aio-libs/async-timeout"

EGIT_REPO_URI="https://github.com/aio-libs/async-timeout.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
