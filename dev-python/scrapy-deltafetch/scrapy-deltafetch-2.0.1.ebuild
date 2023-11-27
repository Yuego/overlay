# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..12} pypy3 )

inherit distutils-r1

DESCRIPTION="Scrapy spider middleware to ignore requests to pages containing items seen in previous crawls"
HOMEPAGE="https://github.com/scrapy-plugins/scrapy-deltafetch"

SRC_URI="https://github.com/scrapy-plugins/scrapy-deltafetch/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="
	>=dev-python/scrapy-1.2.0[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
