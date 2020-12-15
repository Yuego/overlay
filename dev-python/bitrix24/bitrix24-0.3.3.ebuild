# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7
PYTHON_COMPAT=( python3_{5,6,7,8,9} pypy3 )

inherit distutils-r1

DESCRIPTION="A tiny Python3 client to make requests of Bitrix24 API."
HOMEPAGE="https://github.com/awesomebitrix/bitrix24-python3-client"

SRC_URI="https://github.com/awesomebitrix/bitrix24-python3-client/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="
	>=dev-python/requests-2.18.0[${PYTHON_USEDEP}]
"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"

S="${WORKDIR}/bitrix24-python3-client-${PV}"

src_prepare() {
	eapply_user

	rm ./tests -rf
}
