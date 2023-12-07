# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..12} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Aiogram Dialog"
HOMEPAGE="https://github.com/Tishka17/aiogram_dialog"

SRC_URI="https://github.com/Tishka17/aiogram_dialog/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/aiogram-3.0[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]

	>=dev-python/cachetools-4.0.0[${PYTHON_USEDEP}]
	<dev-python/cachetools-6.0.0[${PYTHON_USEDEP}]

	>=dev-python/magic-filter-1.0.12[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
