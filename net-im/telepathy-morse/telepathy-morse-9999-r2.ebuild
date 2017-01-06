# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="Telegram connection manager for Telepathy."
HOMEPAGE="https://github.com/TelepathyQt/telepathy-morse"
EGIT_REPO_URI=( "https://github.com/TelepathyQt/telepathy-morse" )

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="
	net-libs/telegram-qt
	>=net-libs/telepathy-qt-0.9.6.0
"
DEPEND="${RDEPEND}
	>=dev-util/cmake-2.8.12
"

DOCS=( README.md )

src_configure() {
	local mycmakeargs=(
		-DUSE_QT4=no
	)
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	cmake-utils_src_install
}
