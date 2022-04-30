# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{6..9} pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="sorl-watermark adds support for adding watermarks to sorl-thumbnail."
HOMEPAGE="https://github.com/originell/sorl-watermark"

EGIT_REPO_URI="https://github.com/originell/sorl-watermark.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-python/sorl-thumbnail[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare() {
	rm -rf ./tests
	distutils-r1_src_prepare
}
