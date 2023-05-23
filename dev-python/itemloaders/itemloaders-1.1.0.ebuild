# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{8..11} pypy3 )

inherit distutils-r1

DESCRIPTION="Library to populate items using XPath and CSS with a convenient API"
HOMEPAGE="https://github.com/scrapy/itemloaders"

SRC_URI="https://github.com/scrapy/itemloaders/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/w3lib-1.17.0[${PYTHON_USEDEP}]
	>=dev-python/parsel-1.8.1[${PYTHON_USEDEP}]
	>=dev-python/jmespath-0.9.5[${PYTHON_USEDEP}]
	>=dev-python/itemadapter-0.1.0[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
