# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_{9..14} pypy3 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Pure Python 3 MTProto API Telegram client library, for bots too!"
HOMEPAGE="https://github.com/LonamiWebs/Telethon https://docs.telethon.dev"

SRC_URI="https://github.com/LonamiWebs/Telethon/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE="cryptg"
RESTRICT="test"

RDEPEND="
	dev-python/python-socks[${PYTHON_USEDEP}]
	dev-python/pyaes[${PYTHON_USEDEP}]
	>=dev-python/rsa-3.4.0[${PYTHON_USEDEP}]
	cryptg? (
		dev-python/cryptg[${PYTHON_USEDEP}]
	)
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/Telethon-${PV}"

src_prepare(){
	rm -r tests

	distutils-r1_src_prepare
}
