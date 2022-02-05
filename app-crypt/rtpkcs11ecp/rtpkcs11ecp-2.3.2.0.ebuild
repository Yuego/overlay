# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit unpacker

DESCRIPTION="Rutoken rtPKCS11ecp library"
HOMEPAGE="https://rutoken.ru"

B="https://download.rutoken.ru/Rutoken/PKCS11Lib/${PV}/Linux/x64/librtpkcs11ecp_${PV}-1_amd64.deb"

SRC_URI="
	amd64? ( "${B}" )
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64"

RESTRICT="mirror strip"

RDEPEND=""

S="${WORKDIR}"

src_unpack() {
	unpack_deb ${A}
}

src_prepare() {
	rm -rf usr
	default
}

src_install() {
	dolib.so opt/aktivco/rutokenecp/amd64/librtpkcs11ecp.so
}

