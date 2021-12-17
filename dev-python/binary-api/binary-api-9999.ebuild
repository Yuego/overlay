# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Binary.com API for Python"
HOMEPAGE="https://github.com/mdn522/binaryapi"

EGIT_REPO_URI="https://github.com/mdn522/binaryapi.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/websocket-client[${PYTHON_USEDEP}]
	dev-python/simplejson[${PYTHON_USEDEP}]

	dev-python/pause[${PYTHON_USEDEP}]
	dev-python/rich[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare () {
	distutils-r1_src_prepare
	rm -r ./tests
}

