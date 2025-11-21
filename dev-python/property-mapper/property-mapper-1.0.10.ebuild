# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..14} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Python dict to object property mapper module"
HOMEPAGE="https://github.com/Yuego/python-property-mapper"

SRC_URI="https://github.com/Yuego/property-mapper/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
