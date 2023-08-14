# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8
PYTHON_COMPAT=( python3_11 pypy3 )

inherit distutils-r1 git-r3

DESCRIPTION="Telegram WebRTC (VoIP)"
HOMEPAGE="https://github.com/MarshalX/tgcalls"

EGIT_REPO_URI="https://github.com/Yuego/tgcalls.git"
EGIT_COMMIT="0ce560d21a6e8e0b27cc814f6820c62aca06bae6"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	=dev-python/tgcalls-${PV}-r6[${PYTHON_USEDEP}]
	dev-python/pyav[${PYTHON_USEDEP}]
	media-libs/opencv[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/${P}/pytgcalls"
