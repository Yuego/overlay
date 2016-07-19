# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit git-r3 eutils flag-o-matic qmake-utils toolchain-funcs

DESCRIPTION="A better i7 (and now i3, i5) reporting tool for Linux"
HOMEPAGE="https://github.com/ajaiantilal/i7z"
EGIT_REPO_URI="https://github.com/ajaiantilal/i7z.git"

SLOT="0"
LICENSE="GPL-2"
KEYWORDS=""
IUSE="X"

RDEPEND="
	sys-libs/ncurses:0=
	X? ( dev-qt/qtgui:4= )"
DEPEND="${RDEPEND}"

src_prepare() {
#	epatch "${FILESDIR}"/${P}-ncurses.patch
	tc-export CC
}

src_compile() {
	default
	if use X; then
		cd GUI
		eqmake4 ${PN}_GUI.pro && emake clean && emake
	fi
}

src_install() {
	emake DESTDIR="${ED}" docdir=/usr/share/doc/${PF} install
	use X && dosbin GUI/i7z_GUI
}
