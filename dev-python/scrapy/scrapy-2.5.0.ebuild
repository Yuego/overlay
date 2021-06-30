# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1

DESCRIPTION="Scrapy, a fast high-level web crawling & scraping framework for Python."
HOMEPAGE="http://scrapy.org https://github.com/scrapy/scrapy"

SRC_URI="https://github.com/scrapy/scrapy/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"
IUSE="boto ibl +ssl"

RDEPEND="
	>=dev-python/twisted-17.9.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-2.0[${PYTHON_USEDEP}]
	>=dev-python/cssselect-0.9.1[${PYTHON_USEDEP}]
	>=dev-python/itemloaders-1.0.1[${PYTHON_USEDEP}]
	>=dev-python/parsel-1.5[${PYTHON_USEDEP}]

	ssl? ( >=dev-python/pyopenssl-16.2.0[${PYTHON_USEDEP}] )
	>=dev-python/queuelib-1.4.2[${PYTHON_USEDEP}]
	>=dev-python/service_identity-16.0.0[${PYTHON_USEDEP}]

	>=dev-python/w3lib-1.17.0[${PYTHON_USEDEP}]
	>=dev-python/zope-interface-4.1.3[${PYTHON_USEDEP}]
	>=dev-python/protego-0.1.15[${PYTHON_USEDEP}]
	>=dev-python/itemadapter-0.1.0[${PYTHON_USEDEP}]

	>=dev-python/lxml-4.0.0[${PYTHON_USEDEP}]
	>=dev-python/pydispatcher-2.0.5-r3[${PYTHON_USEDEP}]
	>=dev-python/hyper-h2-3.0[${PYTHON_USEDEP}]
	<dev-python/hyper-h2-4.0
	>=dev-python/priority-1.1.0[${PYTHON_USEDEP}]
	<dev-python/priority-2.0
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
