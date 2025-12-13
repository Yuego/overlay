# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..14} pypy3 )
DISTUTILS_USE_PEP517=poetry

inherit distutils-r1

DESCRIPTION="Fetch location and size of physical screens"
HOMEPAGE="https://github.com/rr-/screeninfo"

SRC_URI="https://github.com/rr-/screeninfo/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND=""

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/poetry-core[${PYTHON_USEDEP}]
"
