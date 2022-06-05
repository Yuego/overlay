# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1

DESCRIPTION="library for Anti-Captcha service"
HOMEPAGE="https://github.com/AndreiDrang/python3-anticaptcha"

SRC_URI="https://github.com/AndreiDrang/python3-anticaptcha/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/requests-2.21.0[${PYTHON_USEDEP}]

	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
	<dev-python/aiohttp-4[${PYTHON_USEDEP}]

	>=dev-python/pika-1[${PYTHON_USEDEP}]
	<dev-python/pika-2[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/python3-${P}"
