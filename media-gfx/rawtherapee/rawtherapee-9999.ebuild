# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-gfx/rawtherapee/rawtherapee-4.0.9.ebuild,v 1.1 2012/06/04 10:33:20 radhermit Exp $

EAPI="4"

inherit cmake-utils toolchain-funcs mercurial

DESCRIPTION="A powerful cross-platform raw image processing program"
HOMEPAGE="http://www.rawtherapee.com/"


EHG_REPO_URI="https://code.google.com/p/rawtherapee/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="bzip2 doc openmp"

RDEPEND="bzip2? ( app-arch/bzip2 )
	>=dev-cpp/gtkmm-2.12:2.4
	>=dev-cpp/glibmm-2.16:2
	dev-libs/expat
	dev-libs/libsigc++:2
	media-libs/tiff
	media-libs/libpng
	media-libs/libiptcdata
	media-libs/lcms:2
	sys-libs/zlib
	sci-libs/fftw
	virtual/jpeg"
DEPEND="${RDEPEND}
	app-arch/xz-utils
	virtual/pkgconfig"

#PATCHES=( "${FILESDIR}"/${P}-no-hg.patch )

pkg_setup() {
	if use openmp ; then
		tc-has-openmp || die "Please switch to an openmp compatible compiler"
	fi
}

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use openmp OPTION_OMP)
		$(cmake-utils_use_with bzip2 BZIP)
		-DDOCDIR=/usr/share/doc/${PF}
		-DCREDITSDIR=/usr/share/${PN}
		-DLICENCEDIR=/usr/share/${PN}
	)

	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install
	use doc && dodoc doc/built/pdf/en/RawTherapeeManual_${PV}.pdf
}
