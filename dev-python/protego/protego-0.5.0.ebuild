# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{8..13} pypy3 )
DISTUTILS_USE_PEP517=hatchling

inherit distutils-r1

DESCRIPTION="A pure-Python robots.txt parser with support for modern conventions."
HOMEPAGE="https://github.com/scrapy/protego"

SRC_URI="https://github.com/scrapy/protego/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""
RESTRICT="test"

RDEPEND="
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
