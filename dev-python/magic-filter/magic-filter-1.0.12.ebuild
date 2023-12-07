# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..12} pypy3 )
DISTUTILS_USE_PEP517=hatchling

inherit distutils-r1

DESCRIPTION="Provides magic filter based on dynamic attribute getter"
HOMEPAGE="https://github.com/aiogram/magic-filter"

SRC_URI="https://github.com/aiogram/magic-filter/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
