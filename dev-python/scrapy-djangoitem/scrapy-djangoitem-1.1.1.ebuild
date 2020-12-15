# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8,9} pypy3 )

inherit distutils-r1

DESCRIPTION="Scrapy extension to write scraped items using Django models"
HOMEPAGE="https://github.com/scrapy-plugins/scrapy-djangoitem"

SRC_URI="https://github.com/scrapy-plugins/scrapy-djangoitem/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/scrapy-1.1.0[${PYTHON_USEDEP}]
	dev-python/django[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
