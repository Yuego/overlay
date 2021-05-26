# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1

DESCRIPTION="Plyvel is a fast and feature-rich Python interface to LevelDB."
HOMEPAGE="https://github.com/wbolster/plyvel"

SRC_URI="https://github.com/wbolster/plyvel/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	dev-libs/leveldb
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
