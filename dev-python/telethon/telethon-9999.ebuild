# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7} pypy pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Pure Python 3 MTProto API Telegram client library, for bots too!"
HOMEPAGE="https://github.com/LonamiWebs/Telethon https://docs.telethon.dev"

EGIT_REPO_URI="https://github.com/LonamiWebs/Telethon.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE="cryptg"

RDEPEND="
	dev-python/pyaes[${PYTHON_USEDEP}]
	dev-python/rsa[${PYTHON_USEDEP}]
	cryptg? (
		dev-python/cryptg[${PYTHON_USEDEP}]
	)
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

src_prepare(){
	rm -r tests

	distutils-r1_src_prepare
}
