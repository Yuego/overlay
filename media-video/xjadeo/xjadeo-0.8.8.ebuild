# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="6"

inherit versionator
MY_P="${PN}-$(replace_version_separator "3" ".")"
DESCRIPTION="a simple video player that is synchronized to jack transport."
HOMEPAGE="http://${PN}.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="alsa imlib osc osd ltc qt4 sdl tools xv opengl"
REQUIRED_USE="alsa"

RDEPEND="virtual/jack
	virtual/ffmpeg
	alsa? ( >=media-libs/alsa-lib-1.0.10 )
	imlib? ( >=media-libs/imlib2-1.3.0 )
	osc? ( media-libs/liblo )
	sdl? ( >=media-libs/libsdl-1.2.8 )"

DEPEND="${RDEPEND}
	>=sys-libs/zlib-1.2.2
	qt4? ( dev-qt/qt3support
		>=dev-qt/qttest-4:4
	)
	virtual/pkgconfig"

#PATCHES=( "${FILESDIR}/${P}-no-libporttime.patch" )

#einfo "DEPEND=${DEPEND}"

AUTOTOOLS_AUTORECONF="1"
AUTOTOOLS_IN_SOURCE_BUILD="1"

DOCS=( AUTHORS ChangeLog README NEWS )

# S="${WORKDIR}/${MY_P}"

src_configure() {
	local myconf
	myconf+="
		--disable-portmidi \
		$(use_enable imlib imlib2) \
		$(use_enable osc) \
		$(use_enable ltc) \
		$(use_enable osd ft) \
		$(use_enable qt4 qtgui) \
		$(use_enable sdl) \
		$(use_enable tools contrib) \
		$(use_enable opengl) \
		$(use_enable xv)"
	einfo "USE: ${USE}"
	einfo "configure with ${myconf}"

	use alsa || export ALSAMIDI="no"
	export PORTMIDI="no"
	econf ${myconf} || die "econf failed"
}

src_install() {
	if use tools; then
		newdoc contrib/README README.tools
		dobin contrib/encode.sh
		newdoc contrib/cli-remote/README README.cli-remote
		dobin contrib/cli-remote/jadeo-rcli
		newdoc contrib/tsmm/README README.tsmm
		dobin contrib/tsmm/xjtsmm
		dobin contrib/tsmm/tsmm.pl
		insinto "/usr/share/${PN}"
		doins "contrib/${PN}-example.avi"
	fi
	default
}
