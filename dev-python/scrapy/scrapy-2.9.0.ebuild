# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..11} )

inherit distutils-r1

DESCRIPTION="Scrapy, a fast high-level web crawling & scraping framework for Python."
HOMEPAGE="http://scrapy.org https://github.com/scrapy/scrapy"

SRC_URI="https://github.com/scrapy/scrapy/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"
IUSE="boto ibl +ssl"

RDEPEND="
	>=dev-python/twisted-18.9.0[${PYTHON_USEDEP}]
	<dev-python/twisted-23.8.0[${PYTHON_USEDEP}]
	>=dev-python/cryptography-3.4.6[${PYTHON_USEDEP}]
	>=dev-python/cssselect-0.9.1[${PYTHON_USEDEP}]
	>=dev-python/itemloaders-1.0.1[${PYTHON_USEDEP}]
	>=dev-python/parsel-1.5[${PYTHON_USEDEP}]

	ssl? ( >=dev-python/pyopenssl-21.0.0[${PYTHON_USEDEP}] )
	>=dev-python/queuelib-1.4.2[${PYTHON_USEDEP}]
	>=dev-python/service-identity-18.1.0[${PYTHON_USEDEP}]

	>=dev-python/w3lib-1.17.0[${PYTHON_USEDEP}]
	>=dev-python/zope-interface-5.1.0[${PYTHON_USEDEP}]
	>=dev-python/protego-0.1.15[${PYTHON_USEDEP}]
	>=dev-python/itemadapter-0.1.0[${PYTHON_USEDEP}]

	dev-python/tldextract[${PYTHON_USEDEP}]

	>=dev-python/lxml-4.3.0[${PYTHON_USEDEP}]

	>=dev-python/pydispatcher-2.0.5[${PYTHON_USEDEP}]
	<dev-python/pydispatcher-2.1[${PYTHON_USEDEP}]

"
DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
"
