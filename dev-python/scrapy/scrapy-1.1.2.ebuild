# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1

DESCRIPTION="Scrapy, a fast high-level web crawling & scraping framework for Python."
HOMEPAGE="http://scrapy.org https://github.com/scrapy/scrapy"

SRC_URI="https://github.com/scrapy/scrapy/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="boto ibl ssl -twisted"

RDEPEND="
	twisted? (
		>=dev-python/twisted-core-10.0.0[${PYTHON_USEDEP}]
		dev-python/twisted-conch[${PYTHON_USEDEP}]
		dev-python/twisted-mail[${PYTHON_USEDEP}]
		dev-python/twisted-web[${PYTHON_USEDEP}]
	)
	>=dev-python/twisted-16.4.1[${PYTHON_USEDEP}]
	>=dev-python/w3lib-1.15.0[${PYTHON_USEDEP}]
	dev-python/queuelib[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
	ibl? ( dev-python/numpy[${PYTHON_USEDEP}] )
	ssl? ( dev-python/pyopenssl[${PYTHON_USEDEP}] )
	boto? ( dev-python/boto[${PYTHON_USEDEP}] )
	>=dev-python/cssselect-0.9[${PYTHON_USEDEP}]
	>=dev-python/six-1.5.2[${PYTHON_USEDEP}]
	>=dev-python/parsel-0.9.3[${PYTHON_USEDEP}]
	>=dev-python/pydispatcher-2.0.5[${PYTHON_USEDEP}]
	dev-python/service_identity[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

