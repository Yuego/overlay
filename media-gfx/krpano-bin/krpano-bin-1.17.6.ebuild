# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

inherit eutils

DESCRIPTION="Krpano Tools"
HOMEPAGE="http://krpano.com"
SRC_URI="
	http://krpano.com/download/download.php?file=krpano${PV//./}linux32 -> krpano-bin32-${PV}.tar.gz
	http://krpano.com/download/download.php?file=krpano${PV//./}linux64 -> krpano-bin64-${PV}.tar.gz
"

LICENSE="krpano"
SLOT="0"
KEYWORDS=""
IUSE="+license +viewer"

RESTRICT="strip"

DEPEND=""
RDEPEND="${DEPEND}
	license? ( =media-gfx/krpano-license-2 )
	viewer? ( =media-gfx/krpano-viewer-${PV} )
"

S="${WORKDIR}/krpano-${PV}"
B_DIR="${S}/bin"

src_unpack() {
	ARCH=$(usex amd64 "64" "32")
	unpack "krpano-bin${ARCH}-${PV}.tar.gz"
}

# TODO: сделать иконку для GUI
src_install() {
	#BIN
	into "/opt/krpano/bin/"

	insopts -m0655
	dobin krpano*
	ln -sf /usr/lib64/libudev.so libudev.so.0
	dolib lib*
	doins .nwpak 

	#Viewer
	insinto "/opt/krpano/viewer/"
	doins viewer/*.js
	doins viewer/*.swf
	
	#Plugins
	insinto "/opt/krpano/viewer/plugins"
    doins viewer/plugins/*.js
    doins viewer/plugins/*.swf

	#Docs
	dodoc license.txt
	dodoc releasenotes.txt
}
