# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit versionator autotools-utils
MY_P="${PN}-$(replace_version_separator "3" ".")"
DESCRIPTION="a simple video player that is synchronized to jack transport."
HOMEPAGE="http://${PN}.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="alsa imlib midi osc osd qt4 portmidi sdl tiff tools xv"
REQUIRED_USE="alsa? ( midi )
	portmidi? ( midi )"

RDEPEND=">=media-sound/jack-audio-connection-kit-0.100
	>=media-video/ffmpeg-0.4.9
	midi? (
		alsa? ( >=media-libs/alsa-lib-1.0.10 )
		portmidi? ( media-libs/portmidi )
	)
	imlib? ( >=media-libs/imlib2-1.3.0 )
	osc? ( media-libs/liblo )
	sdl? ( >=media-libs/libsdl-1.2.8 )"

DEPEND="${RDPEND}
	>=sys-libs/zlib-1.2.2
	qt4? ( dev-qt/qt3support
		>=dev-qt/qttest-4:4
	)
	virtual/pkgconfig"

#PATCHES=( "${FILESDIR}/${P}-no-libporttime.patch" )

AUTOTOOLS_AUTORECONF="1"
AUTOTOOLS_IN_SOURCE_BUILD="1"

DOCS=( AUTHORS ChangeLog README NEWS )

S="${WORKDIR}/${MY_P}"

src_configure() {
	local myeconfargs=(
		$(use_enable imlib imlib2)
#		$(use_enable lash)
		$(use_enable midi)
		$(use_enable osc)
		$(use_enable osd ft)
		$(use_enable qt4 qtgui)
		$(use_enable sdl)
#		$(use_enable tiff)
		$(use_enable tools contrib)
		$(use_enable xv)
	)

	use alsa || export ALSAMIDI="no"
	use portmidi || export PORTMIDI="no"

	autotools-utils_src_configure
}

src_install() {
	autotools-utils_src_install
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
}
