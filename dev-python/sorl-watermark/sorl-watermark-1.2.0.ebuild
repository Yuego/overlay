# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{7..10} pypy3 )

inherit distutils-r1

DESCRIPTION="sorl-watermark adds support for adding watermarks to sorl-thumbnail."
HOMEPAGE="https://github.com/originell/sorl-watermark"

SRC_URI="https://github.com/originell/sorl-watermark/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	dev-python/sorl-thumbnail[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare() {
	rm -rf ./tests
	distutils-r1_src_prepare
}
