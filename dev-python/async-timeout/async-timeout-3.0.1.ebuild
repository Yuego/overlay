# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8} pypy3 )

inherit distutils-r1

DESCRIPTION="asyncio-compatible timeout class"
HOMEPAGE="https://github.com/aio-libs/async-timeout"

SRC_URI="https://github.com/aio-libs/async-timeout/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
