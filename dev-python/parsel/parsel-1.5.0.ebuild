# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Parsel lets you extract data from XML/HTML documents using XPath or CSS selectors"
HOMEPAGE="https://github.com/scrapy/parsel"

SRC_URI="https://github.com/scrapy/parsel/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/w3lib-1.11.0[${PYTHON_USEDEP}]
	>=dev-python/lxml-2.3[${PYTHON_USEDEP}]
	>=dev-python/six-1.9.0[${PYTHON_USEDEP}]
	>=dev-python/cssselect-0.9.1[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare(){
	distutils-r1_src_prepare

	sed -i 's/setup_requires/#setup_requires/g' setup.py
	sed -i 's/test_suite/#test_suite/g' setup.py
}
