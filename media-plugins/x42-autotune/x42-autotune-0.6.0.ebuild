# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="an auto-tuner based on Fons Adriaensen's zita-at1"
HOMEPAGE="https://x42-plugins.com/x42/x42-autotune"
ROBTK_PV="0.6.4"

SRC_URI="https://github.com/x42/fat1.lv2/archive/v${PV}.tar.gz -> ${P}.tar.gz https://github.com/x42/robtk/archive/v${ROBTK_PV}.tar.gz -> x42-robtk-${ROBTK_PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

IUSE="opengl jack"

DEPEND="sci-libs/fftw
	>=media-libs/lv2-1.6.0
	jack? ( virtual/jack )
	opengl? (
		x11-libs/pango
		x11-libs/cairo )"

# the name fat1.lv2 is not compatible with portage rules
S="${WORKDIR}/fat1.lv2-${PV}"


 



src_compile() {
	#robtk toolkit is required for build	
	emake RW="${WORKDIR}/robtk-${ROBTK_PV}/" BUILDOPENGL=$(usex opengl) BUILDJACKAPP=$(usex jack) PREFIX=${EPREFIX}/usr LV2DIR=${EPREFIX}/usr/lib64/lv2 submodules
	emake RW="${WORKDIR}/robtk-${ROBTK_PV}/" BUILDOPENGL=$(usex opengl) BUILDJACKAPP=$(usex jack) PREFIX=${EPREFIX}/usr LV2DIR=${EPREFIX}/usr/lib64/lv2
}

src_install() {
	if [[ -f Makefile ]] || [[ -f GNUmakefile ]] || [[ -f makefile ]] ; then
		emake DESTDIR=${D} RW="${WORKDIR}/robtk-${ROBTK_PV}/" BUILDOPENGL=$(usex opengl) BUILDJACKAPP=$(usex jack) PREFIX=${EPREFIX}/usr LV2DIR=${EPREFIX}/usr/lib64/lv2 install
	fi
	einstalldocs
}


