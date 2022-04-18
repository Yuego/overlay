# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit unpacker

DESCRIPTION="Rutoken rtPKCS11ecp library"
HOMEPAGE="https://rutoken.ru"

B="https://download.rutoken.ru/Rutoken_Plugin/${PV}.0/Linux/libnpRutokenPlugin_${PV}-1_amd64.deb"

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
	mv usr/lib usr/lib64
	default
}

src_install() {
	insinto /
	doins -r etc
	doins -r opt
	doins -r usr
}

