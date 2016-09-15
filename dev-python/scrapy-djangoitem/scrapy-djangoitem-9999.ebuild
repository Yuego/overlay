# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy2_0 )

inherit distutils-r1 git-r3

DESCRIPTION="Scrapy extension to write scraped items using Django models"
HOMEPAGE="https://github.com/scrapy-plugins/scrapy-djangoitem"

EGIT_REPO_URI="git://github.com/scrapy-plugins/scrapy-djangoitem.git"

LICENSE="BSD"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/scrapy-1.1.0[${PYTHON_USEDEP}]
	dev-python/django[${PYTHON_USEDEP}]
	dev-python/six
"
DEPEND="dev-python/setuptools"

