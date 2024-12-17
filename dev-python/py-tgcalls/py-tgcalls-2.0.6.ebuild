# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{11..13} pypy3 )
DISTUTILS_USE_PEP517=setuptools

PYPI_PN=${PN/-/_}

inherit distutils-r1 git-r3

DESCRIPTION="A simple and elegant client that"
HOMEPAGE="https://github.com/pytgcalls/pytgcalls"

EGIT_REPO_URI="https://github.com/pytgcalls/pytgcalls.git"
EGIT_COMMIT="71027a9ec72b526b102fd75e9e90ded37dff9150"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	!dev-python/pytgcalls[${PYTHON_USEDEP}]

	>=dev-python/aiohttp-3.9.3[${PYTHON_USEDEP}]
	>=dev-python/ntgcalls-1.2.0[${PYTHON_USEDEP}]

	dev-python/psutil[${PYTHON_USEDEP}]
	dev-python/screeninfo[${PYTHON_USEDEP}]
	dev-python/deprecation[${PYTHON_USEDEP}]

	net-libs/nodejs
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

