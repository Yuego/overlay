# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils

ARCH=$(usex amd64 "" "64")

DESCRIPTION="Krpano Tools"
HOMEPAGE="http://krpano.com"
SRC_URI="http://krpano.com/download/download.php?file=krpanotools${PV//./}linux${ARCH} -> krpanotools-binaries-${PV}.tar.gz"

LICENSE="as-is"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="+license +viewer"

RESTRICT="strip"

DEPEND=""
RDEPEND="${DEPEND}
	license? ( =media-gfx/krpano-license-1 )
	viewer? ( =media-gfx/krpanotools-viewer-${PV} )
"

S="${WORKDIR}"
B_DIR="${S}/bin/"

src_install() {
	#BIN
	insinto "/opt/krpanotools/bin/"
	mkdir "${B_DIR}"
	mv "${S}"/k* "${B_DIR}"

	insopts -m0655
	doins "${B_DIR}"/*
}
