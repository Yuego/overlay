# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Parsel lets you extract data from XML/HTML documents using XPath or CSS selectors"
HOMEPAGE="https://github.com/scrapy/parsel"

EGIT_REPO_URI="git://github.com/scrapy/parsel.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/w3lib-1.8.0
	dev-python/lxml
	>=dev-python/six-1.5.2
	>=dev-python/cssselect-0.9
"
DEPEND="dev-python/setuptools"

src_prepare(){
	distutils-r1_src_prepare
	
	sed -i 's/setup_requires/#setup_requires/g' setup.py
	sed -i 's/test_suite/#test_suite/g' setup.py
	
}
