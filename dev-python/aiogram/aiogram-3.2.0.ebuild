# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..12} pypy3 )
DISTUTILS_USE_PEP517=hatchling

inherit distutils-r1

DESCRIPTION="Asynchronous framework for Telegram Bot API" 
HOMEPAGE="https://github.com/aiogram/aiogram"

SRC_URI="https://github.com/aiogram/aiogram/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="+fast i18n +proxy redis"

RDEPEND="
	>=dev-python/magic-filter-1.0.12[${PYTHON_USEDEP}]
	<dev-python/magic-filter-1.1[${PYTHON_USEDEP}]

	>=dev-python/aiohttp-3.9.0[${PYTHON_USEDEP}]

	>=dev-python/pydantic-2.4.1[${PYTHON_USEDEP}]
	<dev-python/pydantic-2.6[${PYTHON_USEDEP}]

	>=dev-python/aiofiles-23.2.1[${PYTHON_USEDEP}]
	>=dev-python/certifi-2023.7.22[${PYTHON_USEDEP}]

	>=dev-python/typing-extensions-4.7.0[${PYTHON_USEDEP}]
	<dev-python/typing-extensions-5.0[${PYTHON_USEDEP}]

	fast? (
		>=dev-python/uvloop-0.17.0[${PYTHON_USEDEP}]
		>=dev-python/aiodns-3.0.0[${PYTHON_USEDEP}]
	)

	redis? (
		>=dev-python/redis-5.0.1[${PYTHON_USEDEP}]
		>=dev-python/hiredis-2.0.0[${PYTHON_USEDEP}]
	)

	proxy? (
		>=dev-python/aiohttp-socks-0.8.3[${PYTHON_USEDEP}]
	)

	i18n? (
		>=dev-python/Babel-2.13.0[${PYTHON_USEDEP}]
	)
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
