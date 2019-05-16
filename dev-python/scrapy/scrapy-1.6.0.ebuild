# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{5,6,7} pypy pypy3 )

inherit distutils-r1

DESCRIPTION="Scrapy, a fast high-level web crawling & scraping framework for Python."
HOMEPAGE="http://scrapy.org https://github.com/scrapy/scrapy"

SRC_URI="https://github.com/scrapy/scrapy/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="boto ibl +ssl"

RDEPEND="
	>=dev-python/twisted-17.9.0[${PYTHON_USEDEP}]
	>=dev-python/w3lib-1.17.0[${PYTHON_USEDEP}]
	>=dev-python/queuelib-1.1.1[${PYTHON_USEDEP}]
	>=dev-python/lxml-3.2.4[${PYTHON_USEDEP}]
	ibl? ( dev-python/numpy[${PYTHON_USEDEP}] )
	ssl? ( >=dev-python/pyopenssl-0.13.1[${PYTHON_USEDEP}] )
	boto? ( dev-python/boto[${PYTHON_USEDEP}] )
	>=dev-python/cssselect-0.9[${PYTHON_USEDEP}]
	>=dev-python/six-1.5.2[${PYTHON_USEDEP}]
	>=dev-python/parsel-1.5[${PYTHON_USEDEP}]
	>=dev-python/pydispatcher-2.0.5[${PYTHON_USEDEP}]
	dev-python/service_identity[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
