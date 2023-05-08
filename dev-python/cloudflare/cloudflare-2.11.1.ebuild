# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{8..11} pypy3 )

inherit distutils-r1

SRC_URI="https://github.com/cloudflare/python-cloudflare/archive/refs/tags/${PV}.tar.gz"

DESCRIPTION="Python wrapper for the Cloudflare v4 API"
HOMEPAGE="https://github.com/cloudflare/python-cloudflare"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/jsonlines[${PYTHON_USEDEP}]
	dev-python/beautifulsoup4[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/python-${P}"

src_prepare(){
	distutils-r1_src_prepare

	rm -r ./tests || die
	rm -r ./examples || die

	sed -i "s#'examples'##g" setup.py

}
