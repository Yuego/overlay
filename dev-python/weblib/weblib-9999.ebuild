# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Tools for web-scraping"
HOMEPAGE="https://github.com/lorien/weblib"

EGIT_REPO_URI="git://github.com/lorien/weblib.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/pytils
	dev-python/six
	dev-python/lxml
	dev-python/user_agent
"
DEPEND="dev-python/setuptools"

