# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7} pypy )

inherit distutils-r1 git-r3

DESCRIPTION="Web Scraping Framework"
HOMEPAGE="https://github.com/lorien/grab"

EGIT_REPO_URI="https://github.com/lorien/grab.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	>=dev-python/weblib-0.1.28[${PYTHON_USEDEP}]
	
	<dev-python/pycurl-7.43.0.2[${PYTHON_USEDEP}]

	dev-python/lxml[${PYTHON_USEDEP}]
	dev-python/defusedxml[${PYTHON_USEDEP}]
	dev-python/selection[${PYTHON_USEDEP}]
	dev-python/user_agent[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

