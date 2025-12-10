# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{8..14} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 git-r3

DESCRIPTION="library for Anti-Captcha service"
HOMEPAGE="https://github.com/Yuego/anticaptcha"

EGIT_REPO_URI="https://github.com/Yuego/anticaptcha.git"
EGIT_COMMIT="934920775a2049be5fde1fa18b8781e259c49c72"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
	>=dev-python/requests-2.21.0[${PYTHON_USEDEP}]

	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4[${PYTHON_USEDEP}]

	>=dev-python/pika-1[${PYTHON_USEDEP}]
	<dev-python/pika-2[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
