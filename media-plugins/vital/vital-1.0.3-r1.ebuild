# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit desktop 

DESCRIPTION="powerful wavetable synthesizer with realtime modulation feedback"
HOMEPAGE="https://vital.audio"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2 -> ${P}.zip"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="fetch"
QA_PREBUILT="/usr/bin/vital 
	/usr/lib64/lv2/Vital.lv2/Vital.so"

RDEPEND=">=app-crypt/libsecret-0.7
	>=dev-libs/glib-2.12
	net-misc/curl
	>=media-libs/alsa-lib-1.0.16
	>=media-libs/freetype-2.2.1
	media-libs/libglvnd
	dev-libs/libgcrypt
	dev-libs/libpcre
	app-arch/bzip2
	media-libs/libpng
	sys-libs/zlib
	dev-libs/libgpg-error
	sys-apps/util-linux
	dev-libs/libffi
	x11-libs/libX11
	x11-libs/libxcb
	x11-libs/libXau
	x11-libs/libXdmcp
	dev-libs/libbsd"
S=${WORKDIR}/VitalBinaries

src_unpack () {
	default
	#mkdir ${S}
}

src_install() {
	dobin vital
	dolib.so Vital.so
	dosym libcurl.so.4.7.0 /usr/lib64/libcurl-gnutls.so.4 
	insinto /usr/lib64/lv2
	doins -r Vital.lv2
	insinto  /usr/lib64/vst3
	doins -r Vital.vst3
	DOCS=usr/share/doc
}
