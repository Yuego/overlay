# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{3,4,5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Scrapy spider middleware to ignore requests to pages containing items seen in previous crawls"
HOMEPAGE="https://github.com/scrapy-plugins/scrapy-deltafetch"

EGIT_REPO_URI="git://github.com/scrapy-plugins/scrapy-deltafetch.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/scrapy-1.1.0[${PYTHON_USEDEP}]
	dev-python/bsddb3[${PYTHON_USEDEP}]
"
DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
