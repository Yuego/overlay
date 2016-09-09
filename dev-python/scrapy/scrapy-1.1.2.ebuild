# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Scrapy, a fast high-level web crawling & scraping framework for Python."
HOMEPAGE="http://scrapy.org https://github.com/scrapy/scrapy"

SRC_URI="https://github.com/scrapy/scrapy/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/twisted-core-10.0.0
	>=dev-python/w3lib-1.15.0
	dev-python/queuelib
	dev-python/lxml
	dev-python/pyopenssl
	>=dev-python/cssselect-0.9
	>=dev-python/six-1.5.2
	>=dev-python/parsel-0.9.3
	>=dev-python/pydispatcher-2.0.5
	dev-python/service_identity
"
DEPEND="dev-python/setuptools"

