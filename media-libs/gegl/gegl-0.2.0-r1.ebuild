# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

inherit eutils autotools git-2

DESCRIPTION="Dynamic, any to any, pixel format conversion library"
HOMEPAGE="http://www.gegl.org/babl/"
#SRC_URI="ftp://ftp.gtk.org/pub/${PN}/0.0/${P}.tar.bz2"

EGIT_REPO_URI="git://git.gnome.org/gegl"
EGIT_COMMIT="7aeda9db76708b40021d80af773a7f6d9018b665"
#ESVN_PROJECT="${PN}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"

IUSE="cairo debug exif ffmpeg graphviz jpeg jpeg2k lua mmx openexr png raw sdl sse svg umfpack v4l"

DEPEND=">=media-libs/babl-0.1.11
    dev-libs/glib:2
    x11-libs/gtk+:2
    x11-libs/gdk-pixbuf:2
    x11-libs/pango
    sys-libs/zlib
    cairo? ( x11-libs/cairo )
    exif? ( media-gfx/exiv2 )
    ffmpeg? ( virtual/ffmpeg )
    graphviz? ( media-gfx/graphviz )
    jpeg? ( virtual/jpeg )
    jpeg2k? ( media-libs/jasper )
    lua? ( dev-lang/lua )
    openexr? ( media-libs/openexr )
    png? ( media-libs/libpng )
    raw? ( media-libs/libopenraw )
    sdl? ( media-libs/libsdl )
    svg? ( gnome-base/librsvg:2 )
    umfpack? ( sci-libs/umfpack )
    v4l? ( media-libs/libv4l )

	>=sys-devel/libtool-1.4
	>=sys-devel/autoconf-2.54
	>=sys-devel/automake-1.7.9"
RDEPEND="${DEPEND}"

DOCS="AUTHORS COPYING ChangeLog.pre-0-1 HACKING MAINTAINERS NEWS"

RESTRICT="test"

src_configure() {
	# never enable altering of CFLAGS via profile option
	# libspiro: not in portage main tree
	# disable documentation as the generating is bit automagic
	#    if anyone wants to work on it just create bug with patch
	# gtk and friends: always enable
	eautoreconf
	econf \
		--disable-profile \
		--without-libspiro \
		--disable-docs --disable-workshop \
		--with-gtk --with-pango --with-gdk-pixbuf --with-gio \
		$(use_enable mmx) \
		$(use_enable sse) \
		$(use_enable debug) \
		$(use_with cairo) \
		$(use_with cairo pangocairo) \
		$(use_with exif exiv2) \
		$(use_with ffmpeg libavformat) \
		$(use_with graphviz) \
		$(use_with jpeg libjpeg) \
		$(use_with jpeg2k jasper) \
		$(use_with lua) \
		$(use_with openexr) \
		$(use_with png libpng) \
		$(use_with raw libopenraw) \
		$(use_with sdl) \
		$(use_with svg librsvg) \
		$(use_with umfpack) \
		$(use_with v4l libv4l)
}


src_test() {
	# set xdg dirs to not violate sandbox constrains
	export XDG_CONFIG_HOME="${T}"
	export XDG_CACHE_HOME="${T}"

	default
}


src_install() {
	default
	find "${ED}" -name '*.la' -delete
	#emake install DESTDIR=${D} || die "emake install failed"
	dodoc AUTHORS COPYING HACKING NEWS
}
