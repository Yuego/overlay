# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=8

# inherit eutils

DESCRIPTION="PDF Tools"
HOMEPAGE="https://github.com/Yuego/pdf-tools"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}
	app-text/poppler
	media-gfx/imagemagick
"

S="$WORKDIR"

src_install() {
	#MENU
	insopts -m0644
	# KDE 6
	insinto "/usr/share/kio/servicemenus/"
	doins "${FILESDIR}"/menu/*

}
