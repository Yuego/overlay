# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Web Scraping Framework"
HOMEPAGE="http://grablib.org https://github.com/lorien/grab"

EGIT_REPO_URI="git://github.com/lorien/grab.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/lxml
	dev-python/pycurl
	>=dev-python/selection-0.0.11
	>=dev-python/weblib-0.1.20
	dev-python/six
	>=dev-python/user_agent-0.1.3
"
DEPEND="dev-python/setuptools"
