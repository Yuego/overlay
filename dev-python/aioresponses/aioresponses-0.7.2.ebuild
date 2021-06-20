# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1

DESCRIPTION="Aioresponses is a helper for mock/fake web requests in python aiohttp package."
HOMEPAGE="https://github.com/pnuckowski/aioresponses"

SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/aiohttp-2.0[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
