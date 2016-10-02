# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit base multilib

DESCRIPTION="${PN} package is a set of command line programs for reading,
writing and manipulating HDR images"
HOMEPAGE="http://pfstools.sourceforge.net/"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="debug gdal imagemagick netpbm octave openexr opengl static-libs tiff"

DEPEND="
	gdal? ( sci-libs/gdal )
	imagemagick? ( >=media-gfx/imagemagick-6.0 )
	netpbm? ( media-libs/netpbm )
	octave? ( sci-mathematics/octave )
	openexr? ( >=media-libs/openexr-1.0 )
	opengl? ( media-libs/freeglut )
	tiff? ( media-libs/tiff )"
RDEPEND="${DEPEND}"

PATCHES=( "${FILESDIR}"/${P}-glibc-2.10.patch )

src_configure() {
	# TODO set current octave version --with-octversion
	econf \
		--disable-jpeghdr \
		--disable-matlab \
		$(use_enable debug) \
		$(use_enable gdal) \
		$(use_enable imagemagick) \
		$(use_enable netpbm) \
		$(use_enable octave) \
		$(use_enable openexr) \
		$(use_enable opengl) \
		$(use_enable static-libs static) \
		$(use_enable tiff)
}

src_install() {
	emake DESTDIR="${D}" install || die
	dodoc AUTHORS ChangeLog README || die

	if ! use static-libs; then
		rm "${D}"/usr/$(get_libdir)/*.la || die
	fi
}
